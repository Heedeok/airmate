package com.github.rosjava.android_apps.map_nav;

import android.app.AlertDialog;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.github.rosjava.android_apps.map_nav.R;
import com.github.rosjava.android_remocons.common_tools.apps.RosAppActivity;
import com.google.common.collect.Lists;
import java.sql.Date;
import java.text.DateFormat;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.ros.address.InetAddressFactory;
import org.ros.android.BitmapFromCompressedImage;
import org.ros.android.MessageCallable;
import org.ros.android.view.RosImageView;
import org.ros.android.view.RosTextView;
import org.ros.android.view.VirtualJoystickView;
import org.ros.android.view.visualization.VisualizationView;
import org.ros.android.view.visualization.layer.CameraControlListener;
import org.ros.android.view.visualization.layer.LaserScanLayer;
import org.ros.android.view.visualization.layer.Layer;
import org.ros.android.view.visualization.layer.OccupancyGridLayer;
import org.ros.android.view.visualization.layer.PathLayer;
import org.ros.exception.RemoteException;
import org.ros.namespace.NameResolver;
import org.ros.node.NodeConfiguration;
import org.ros.node.NodeMainExecutor;
import org.ros.node.service.ServiceResponseListener;
import org.ros.time.NtpTimeProvider;
import org.ros.android.view.RosTextView;
import sensor_msgs.CompressedImage;
import std_msgs.Float32;
import world_canvas_msgs.ListMapsResponse;
import world_canvas_msgs.MapListEntry;
import world_canvas_msgs.PublishMapResponse;

import org.ros.rosjava_tutorial_pubsub.Talker;

import std_msgs.Float32;

public class MainActivity extends RosAppActivity {
    private static final String CHANNEL_ID = "ydmm";
    private Button backButton;
    private RosImageView<CompressedImage> cameraView;
    private Button chooseMapButton;
    /* access modifiers changed from: private */
    public AlertDialog chooseMapDialog;
    private ViewGroup mainLayout;
    private MapPosePublisherLayer mapPosePublisherLayer;
    private VisualizationView mapView;
    private NodeConfiguration nodeConfiguration;
    private NodeMainExecutor nodeMainExecutor;
    private ViewGroup sideLayout;
    private VirtualJoystickView virtualJoystickView;
    private ProgressDialog waitingDialog;

    //define DustTextView
    private RosTextView<Float32> rosTextView;
    //private Talker talker;

    public MainActivity() {
        super("Map nav", "Map nav");
    }

    public void onCreate(Bundle savedInstanceState) {
        String defaultRobotName = getString(R.string.default_robot);
        String defaultAppName = getString(R.string.default_app);
        setDefaultMasterName(defaultRobotName);
        setDefaultAppName(defaultAppName);
        setDashboardResource(R.id.top_bar);
        setMainWindowResource(R.layout.main);
        super.onCreate(savedInstanceState);

        //******************************************************************************
        //text view 추가
        TextView textView1 = (TextView) findViewById(R.id.text1) ;
        textView1.setText("미세 먼지 농도는") ;


        //setROSTextView 설정
        setContentView(R.layout.main);

        rosTextView = (RosTextView<std_msgs.Float32>)findViewById(R.id.text2);
        rosTextView.setTopicName("dust_density");
        rosTextView.setMessageType(std_msgs.Float32._TYPE);
        rosTextView.setMessageToStringCallable(new MessageCallable<String, Float32>() {
            @Override
            public java.lang.String call(std_msgs.Float32 message) {
                return java.lang.String.valueOf(message.getData());
            }
        });
        //******************************************************************************

        this.cameraView = (RosImageView) findViewById(R.id.image);
        this.cameraView.setMessageType(CompressedImage._TYPE);
        this.cameraView.setMessageToBitmapCallable(new BitmapFromCompressedImage());
        this.virtualJoystickView = (VirtualJoystickView) findViewById(R.id.virtual_joystick);
        this.backButton = (Button) findViewById(R.id.back_button);
        this.chooseMapButton = (Button) findViewById(R.id.choose_map_button);
        this.mapView = (VisualizationView) findViewById(R.id.map_view);
        this.mapView.onCreate(Lists.<Layer>newArrayList());
        this.backButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                MainActivity.this.onBackPressed();
            }
        });
        this.chooseMapButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                MainActivity.this.onChooseMapButtonPressed();
            }
        });
        this.mapView.getCamera().jumpToFrame((String) this.params.get("map_frame", getString(R.string.map_frame)));
        this.mainLayout = (ViewGroup) findViewById(R.id.main_layout);
        this.sideLayout = (ViewGroup) findViewById(R.id.side_layout);

        // 이동정화 시작 버튼 동작 설정 -> 눌리면 토스트 메시지 출력
        //******************************************************************************
        Button moving = (Button) findViewById(R.id.moving);

        moving.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                Toast.makeText(getApplicationContext(), "이동정화를 시작합니다.", Toast.LENGTH_LONG).show();
            }
        });
        //******************************************************************************

    }

    /* access modifiers changed from: protected */
    public void init(NodeMainExecutor nodeMainExecutor2) {
        super.init(nodeMainExecutor2);

        this.nodeMainExecutor = nodeMainExecutor2;
        this.nodeConfiguration = NodeConfiguration.newPublic(InetAddressFactory.newNonLoopback().getHostAddress(), getMasterUri());
        String joyTopic = this.remaps.get(getString(R.string.joystick_topic));
        String camTopic = this.remaps.get(getString(R.string.camera_topic));
        NameResolver appNameSpace = getMasterNameSpace();
        this.cameraView.setTopicName(appNameSpace.resolve(camTopic).toString());
        this.virtualJoystickView.setTopicName(appNameSpace.resolve(joyTopic).toString());
        nodeMainExecutor2.execute(this.cameraView, this.nodeConfiguration.setNodeName("android/camera_view"));
        nodeMainExecutor2.execute(this.virtualJoystickView, this.nodeConfiguration.setNodeName("android/virtual_joystick"));
        ViewControlLayer viewControlLayer = new ViewControlLayer(this, nodeMainExecutor2.getScheduledExecutorService(), this.cameraView, this.mapView, this.mainLayout, this.sideLayout, this.params);
        String mapTopic = this.remaps.get(getString(R.string.map_topic));
        //String costmapTopic = this.remaps.get(getString(R.string.costmap_topic)); remove costmap
        String scanTopic = this.remaps.get(getString(R.string.scan_topic));
        String planTopic = this.remaps.get(getString(R.string.global_plan_topic));
        String initTopic = this.remaps.get(getString(R.string.initial_pose_topic));

        OccupancyGridLayer occupancyGridLayer = new OccupancyGridLayer(appNameSpace.resolve(mapTopic).toString());
        //OccupancyGridLayer costmapLayer = new OccupancyGridLayer(appNameSpace.resolve(costmapTopic).toString());  remove costmap layer
        LaserScanLayer laserScanLayer = new LaserScanLayer(appNameSpace.resolve(scanTopic).toString());
        PathLayer pathLayer = new PathLayer(appNameSpace.resolve(planTopic).toString());
        this.mapPosePublisherLayer = new MapPosePublisherLayer(this, appNameSpace, this.params, this.remaps);
        InitialPoseSubscriberLayer initialPoseSubscriberLayer = new InitialPoseSubscriberLayer(appNameSpace.resolve(initTopic).toString(), (String) this.params.get("robot_frame", getString(R.string.robot_frame)));
        this.mapView.addLayer(viewControlLayer);
        this.mapView.addLayer(occupancyGridLayer);
        //this.mapView.addLayer(costmapLayer);  remove costmap add func
        this.mapView.addLayer(laserScanLayer);
        this.mapView.addLayer(pathLayer);
        this.mapView.addLayer(this.mapPosePublisherLayer);
        this.mapView.addLayer(initialPoseSubscriberLayer);
        this.mapView.init(nodeMainExecutor2);
        viewControlLayer.addListener(new CameraControlListener() {
            public void onZoom(float focusX, float focusY, float factor) {
            }

            public void onDoubleTap(float x, float y) {
            }

            public void onTranslate(float distanceX, float distanceY) {
            }

            public void onRotate(float focusX, float focusY, double deltaAngle) {
            }
        });
        NtpTimeProvider ntpTimeProvider = new NtpTimeProvider(InetAddressFactory.newFromHostString("pool.ntp.org"), nodeMainExecutor2.getScheduledExecutorService());
        ntpTimeProvider.startPeriodicUpdates(1, TimeUnit.MINUTES);
        this.nodeConfiguration.setTimeProvider(ntpTimeProvider);
        nodeMainExecutor2.execute(this.mapView, this.nodeConfiguration.setNodeName("android/map_view"));

        //미세먼지 농도 출력 텍스트뷰 configuration
        //******************************************************************************

        NodeConfiguration nodeConfiguration3 = NodeConfiguration.newPublic(getRosHostname());
        nodeConfiguration3.setMasterUri(getMasterUri());
        // The RosTextView is also a NodeMain that must be executed in order to start displaying incoming messages.
        nodeMainExecutor.execute(rosTextView, nodeConfiguration3);

        //******************************************************************************
    }

    /* access modifiers changed from: private */
    public void onChooseMapButtonPressed() {
        readAvailableMapList();
    }

    public void setPoseClicked(View view) {
        setPose();
    }

    public void setGoalClicked(View view) {
        setGoal();
    }

    private void setPose() {
        this.mapPosePublisherLayer.setPoseMode();
    }

    private void setGoal() {
        this.mapPosePublisherLayer.setGoalMode();
    }

    private void readAvailableMapList() {
        safeShowWaitingDialog("Waiting...", "Waiting for map list");
        MapManager mapManager = new MapManager(this, this.remaps);
        mapManager.setNameResolver(getMasterNameSpace());
        mapManager.setFunction("list");
        safeShowWaitingDialog("Waiting...", "Waiting for map list");
        mapManager.setListService(new ServiceResponseListener<ListMapsResponse>() {
            public void onSuccess(ListMapsResponse message) {
                Log.i("MapNav", "readAvailableMapList() Success");
                MainActivity.this.safeDismissWaitingDialog();
                MainActivity.this.showMapListDialog(message.getMapList());
            }

            public void onFailure(RemoteException e) {
                Log.i("MapNav", "readAvailableMapList() Failure");
                MainActivity.this.safeDismissWaitingDialog();
            }
        });
        this.nodeMainExecutor.execute(mapManager, this.nodeConfiguration.setNodeName("android/list_maps"));
    }

    /* access modifiers changed from: private */
    public void showMapListDialog(final List<MapListEntry> list) {
        String displayString;
        final CharSequence[] availableMapNames = new CharSequence[list.size()];
        for (int i = 0; i < list.size(); i++) {
            String name = list.get(i).getName();
            String dateTime = DateFormat.getDateTimeInstance(2, 3).format(new Date(list.get(i).getDate() * 1000));
            if (name == null || name.equals("")) {
                displayString = dateTime;
            } else {
                displayString = name + " " + dateTime;
            }
            availableMapNames[i] = displayString;
        }
        runOnUiThread(new Runnable() {
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                builder.setTitle("Choose a map");
                builder.setItems(availableMapNames, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int itemIndex) {
                        MainActivity.this.loadMap((MapListEntry) list.get(itemIndex));
                    }
                });
                AlertDialog unused = MainActivity.this.chooseMapDialog = builder.create();
                MainActivity.this.chooseMapDialog.show();
            }
        });
    }

    /* access modifiers changed from: private */
    public void loadMap(MapListEntry mapListEntry) {
        MapManager mapManager = new MapManager(this, this.remaps);
        mapManager.setNameResolver(getMasterNameSpace());
        mapManager.setFunction("publish");
        mapManager.setMapId(mapListEntry.getMapId());
        safeShowWaitingDialog("Waiting...", "Loading map");
        try {
            mapManager.setPublishService(new ServiceResponseListener<PublishMapResponse>() {
                public void onSuccess(PublishMapResponse message) {
                    Log.i("MapNav", "loadMap() Success");
                    MainActivity.this.safeDismissWaitingDialog();
                }

                public void onFailure(RemoteException e) {
                    Log.i("MapNav", "loadMap() Failure");
                    MainActivity.this.safeDismissWaitingDialog();
                }
            });
        } catch (Throwable ex) {
            Log.e("MapNav", "loadMap() caught exception.", ex);
            safeDismissWaitingDialog();
        }
        this.nodeMainExecutor.execute(mapManager, this.nodeConfiguration.setNodeName("android/publish_map"));
    }

    private void safeDismissChooseMapDialog() {
        runOnUiThread(new Runnable() {
            public void run() {
                if (MainActivity.this.chooseMapDialog != null) {
                    MainActivity.this.chooseMapDialog.dismiss();
                    AlertDialog unused = MainActivity.this.chooseMapDialog = null;
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void showWaitingDialog(CharSequence title, CharSequence message) {
        dismissWaitingDialog();
        this.waitingDialog = ProgressDialog.show(this, title, message, true);
        this.waitingDialog.setProgressStyle(0);
    }

    /* access modifiers changed from: private */
    public void dismissWaitingDialog() {
        if (this.waitingDialog != null) {
            this.waitingDialog.dismiss();
            this.waitingDialog = null;
        }
    }

    private void safeShowWaitingDialog(final CharSequence title, final CharSequence message) {
        runOnUiThread(new Runnable() {
            public void run() {
                MainActivity.this.showWaitingDialog(title, message);
            }
        });
    }

    /* access modifiers changed from: private */
    public void safeDismissWaitingDialog() {
        runOnUiThread(new Runnable() {
            public void run() {
                MainActivity.this.dismissWaitingDialog();
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 0, 0, R.string.stop_app);
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        super.onOptionsItemSelected(item);
        switch (item.getItemId()) {
            case 0:
                onDestroy();
                return true;
            default:
                return true;
        }
    }

    private void createNotificationChannel() {
        // Create the NotificationChannel, but only on API 26+ because
        // the NotificationChannel class is new and not in the support library
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            CharSequence name = getString(R.string.channel_name);
            String description = getString(R.string.channel_description);
            int importance = NotificationManager.IMPORTANCE_DEFAULT;
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID, name, importance);
            channel.setDescription(description);
            // Register the channel with the system; you can't change the importance
            // or other notification behaviors after this
            NotificationManager notificationManager = getSystemService(NotificationManager.class);
            notificationManager.createNotificationChannel(channel);
        }
    }
}
