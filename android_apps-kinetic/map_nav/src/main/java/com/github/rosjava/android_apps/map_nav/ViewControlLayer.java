package com.github.rosjava.android_apps.map_nav;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import com.github.rosjava.android_apps.map_nav.R;
import com.github.rosjava.android_remocons.common_tools.apps.AppParameters;
import java.util.concurrent.ExecutorService;
import org.ros.android.view.RosImageView;
import org.ros.android.view.visualization.RotateGestureDetector;
import org.ros.android.view.visualization.VisualizationView;
import org.ros.android.view.visualization.layer.CameraControlLayer;
import org.ros.android.view.visualization.layer.CameraControlListener;
import org.ros.concurrent.ListenerGroup;
import org.ros.concurrent.SignalRunnable;
import org.ros.node.ConnectedNode;
import sensor_msgs.CompressedImage;

public class ViewControlLayer extends CameraControlLayer {
    private RosImageView<CompressedImage> cameraView;
    /* access modifiers changed from: private */
    public final Context context;
    /* access modifiers changed from: private */
    public final ListenerGroup<CameraControlListener> listeners;
    private ViewGroup mainLayout;
    private VisualizationView mapView;
    /* access modifiers changed from: private */
    public boolean mapViewGestureAvailable;
    private String robotFrame;
    /* access modifiers changed from: private */
    public RotateGestureDetector rotateGestureDetector;
    private ViewGroup sideLayout;
    /* access modifiers changed from: private */
    public GestureDetector translateGestureDetector;
    private ViewMode viewMode = ViewMode.CAMERA;
    /* access modifiers changed from: private */
    public ScaleGestureDetector zoomGestureDetector;

    private enum ViewMode {
        CAMERA,
        MAP
    }

    public ViewControlLayer(Context context2, ExecutorService executorService, RosImageView<CompressedImage> cameraView2, VisualizationView mapView2, ViewGroup mainLayout2, ViewGroup sideLayout2, AppParameters params) {
        this.context = context2;
        this.listeners = new ListenerGroup<>(executorService);
        this.cameraView = cameraView2;
        this.mapView = mapView2;
        this.mainLayout = mainLayout2;
        this.sideLayout = sideLayout2;
        this.cameraView.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                ViewControlLayer.this.swapViews();
            }
        });
        this.mapView.setClickable(true);
        this.cameraView.setClickable(false);
        this.robotFrame = (String) params.get("robot_frame", context2.getString(R.string.robot_frame));
        this.mapViewGestureAvailable = false;
    }

    public boolean onTouchEvent(VisualizationView view, MotionEvent event) {
        if (event.getAction() == 1) {
            this.mapViewGestureAvailable = true;
        }
        if (this.viewMode == ViewMode.CAMERA) {
            swapViews();
            return true;
        } else if (this.translateGestureDetector == null || this.rotateGestureDetector == null || this.zoomGestureDetector == null) {
            return false;
        } else {
            if (this.translateGestureDetector.onTouchEvent(event) || this.rotateGestureDetector.onTouchEvent(event) || this.zoomGestureDetector.onTouchEvent(event)) {
                return true;
            }
            return false;
        }
    }

    /* access modifiers changed from: private */
    public void swapViews() {
        ViewGroup mapViewParent;
        ViewGroup cameraViewParent;
        boolean z;
        boolean z2 = true;
        if (this.viewMode == ViewMode.CAMERA) {
            mapViewParent = this.sideLayout;
            cameraViewParent = this.mainLayout;
        } else {
            mapViewParent = this.mainLayout;
            cameraViewParent = this.sideLayout;
        }
        int mapViewIndex = mapViewParent.indexOfChild(this.mapView);
        int cameraViewIndex = cameraViewParent.indexOfChild(this.cameraView);
        mapViewParent.removeView(this.mapView);
        cameraViewParent.removeView(this.cameraView);
        mapViewParent.addView(this.cameraView, mapViewIndex);
        cameraViewParent.addView(this.mapView, cameraViewIndex);
        if (this.viewMode == ViewMode.CAMERA) {
            this.viewMode = ViewMode.MAP;
            this.mapViewGestureAvailable = false;
        } else {
            this.viewMode = ViewMode.CAMERA;
        }
        this.mapView.getCamera().jumpToFrame(this.robotFrame);
        VisualizationView visualizationView = this.mapView;
        if (this.viewMode != ViewMode.MAP) {
            z = true;
        } else {
            z = false;
        }
        visualizationView.setClickable(z);
        RosImageView<CompressedImage> rosImageView = this.cameraView;
        if (this.viewMode == ViewMode.CAMERA) {
            z2 = false;
        }
        rosImageView.setClickable(z2);
    }

    public void onStart(final VisualizationView view, ConnectedNode connectedNode) {
        view.post(new Runnable() {
            public void run() {
                GestureDetector unused = ViewControlLayer.this.translateGestureDetector = new GestureDetector(ViewControlLayer.this.context, new GestureDetector.SimpleOnGestureListener() {
                    public boolean onScroll(MotionEvent event1, MotionEvent event2, final float distanceX, final float distanceY) {
                        if (!ViewControlLayer.this.mapViewGestureAvailable) {
                            return false;
                        }
                        view.getCamera().translate((double) (-distanceX), (double) distanceY);
                        ViewControlLayer.this.listeners.signal(new SignalRunnable<CameraControlListener>() {
                            public void run(CameraControlListener listener) {
                                listener.onTranslate(-distanceX, distanceY);
                            }
                        });
                        return true;
                    }
                });
                RotateGestureDetector unused2 = ViewControlLayer.this.rotateGestureDetector = new RotateGestureDetector(new RotateGestureDetector.OnRotateGestureListener() {
                    public boolean onRotate(MotionEvent event1, MotionEvent event2, double deltaAngle) {
                        if (!ViewControlLayer.this.mapViewGestureAvailable) {
                            return true;
                        }
                        float focusX = (event1.getX(0) + event1.getX(1)) / 2.0f;
                        float focusY = (event1.getY(1) + event1.getY(0)) / 2.0f;
                        view.getCamera().rotate((double) focusX, (double) focusY, deltaAngle);
                        final float f = focusX;
                        final float f2 = focusY;
                        final double d = deltaAngle;
                        ViewControlLayer.this.listeners.signal(new SignalRunnable<CameraControlListener>() {
                            public void run(CameraControlListener listener) {
                                listener.onRotate(f, f2, d);
                            }
                        });
                        return false;
                    }
                });
                ScaleGestureDetector unused3 = ViewControlLayer.this.zoomGestureDetector = new ScaleGestureDetector(ViewControlLayer.this.context, new ScaleGestureDetector.SimpleOnScaleGestureListener() {
                    public boolean onScale(ScaleGestureDetector detector) {
                        if (!detector.isInProgress() || !ViewControlLayer.this.mapViewGestureAvailable) {
                            return false;
                        }
                        final float focusX = detector.getFocusX();
                        final float focusY = detector.getFocusY();
                        final float factor = detector.getScaleFactor();
                        view.getCamera().zoom((double) focusX, (double) focusY, (double) factor);
                        ViewControlLayer.this.listeners.signal(new SignalRunnable<CameraControlListener>() {
                            public void run(CameraControlListener listener) {
                                listener.onZoom(focusX, focusY, factor);
                            }
                        });
                        return true;
                    }
                });
            }
        });
    }
}
