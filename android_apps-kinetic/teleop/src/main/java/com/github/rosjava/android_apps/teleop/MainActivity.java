/*
 * Copyright (C) 2013 OSRF.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.github.rosjava.android_apps.teleop;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.github.rosjava.android_remocons.common_tools.apps.RosAppActivity;

import org.ros.android.BitmapFromCompressedImage;
import org.ros.android.MessageCallable;
import org.ros.android.view.RosImageView;
import org.ros.android.view.VirtualJoystickView;
import org.ros.namespace.NameResolver;
import org.ros.node.NodeConfiguration;
import org.ros.node.NodeMainExecutor;
import org.ros.android.view.RosTextView;

import java.io.IOException;
import java.util.List;
import org.ros.rosjava_tutorial_pubsub.Talker;

import std_msgs.Float32;


/**
 * @author murase@jsk.imi.i.u-tokyo.ac.jp (Kazuto Murase)
 */
public class MainActivity extends RosAppActivity {
	private RosImageView<sensor_msgs.CompressedImage> cameraView;
	private VirtualJoystickView virtualJoystickView;
	private Button backButton;

	//define
	private RosTextView<std_msgs.Float32> rosTextView;
	private Talker talker;

	public MainActivity() {
		// The RosActivity constructor configures the notification title and ticker messages.
		super("android teleop", "android teleop");
	}



	@SuppressWarnings("unchecked")
	@Override
	public void onCreate(Bundle savedInstanceState) {

		setDashboardResource(R.id.top_bar);
		setMainWindowResource(R.layout.main);
		super.onCreate(savedInstanceState);

		// dustTopic 선언
		//String dustTopic = "12345";

		//text view
		TextView textView1 = (TextView) findViewById(R.id.text1) ;
		textView1.setText("미세 먼지 농도 : ") ;

		//TextView textView2 = (TextView) findViewById(R.id.text2) ;
		//textView2.setText(dustTopic);

		//inserted 81 - 94
		//setROSTextView
		setContentView(R.layout.main);

		rosTextView = (RosTextView<std_msgs.Float32>)findViewById(R.id.text2);
		rosTextView.setTopicName("dust_density");
		rosTextView.setMessageType(std_msgs.Float32._TYPE);
		rosTextView.setMessageToStringCallable(new MessageCallable<java.lang.String, Float32>() {
			@Override
			public java.lang.String call(std_msgs.Float32 message) {

				return java.lang.String.valueOf(message.getData());
			}
		});


        cameraView = (RosImageView<sensor_msgs.CompressedImage>) findViewById(R.id.image);
        cameraView.setMessageType(sensor_msgs.CompressedImage._TYPE);
        cameraView.setMessageToBitmapCallable(new BitmapFromCompressedImage());
        virtualJoystickView = (VirtualJoystickView) findViewById(R.id.virtual_joystick);
        backButton = (Button) findViewById(R.id.back_button);
        backButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                onBackPressed();
            }
        });
	}

	@Override
	protected void init(NodeMainExecutor nodeMainExecutor) {
		
		super.init(nodeMainExecutor);
		talker = new Talker();

        try {
            java.net.Socket socket = new java.net.Socket(getMasterUri().getHost(), getMasterUri().getPort());
            java.net.InetAddress local_network_address = socket.getLocalAddress();
            socket.close();
            NodeConfiguration nodeConfiguration =
                    NodeConfiguration.newPublic(local_network_address.getHostAddress(), getMasterUri());

        String joyTopic = remaps.get(getString(R.string.joystick_topic));
        String camTopic = remaps.get(getString(R.string.camera_topic));

        NameResolver appNameSpace = getMasterNameSpace();
        joyTopic = appNameSpace.resolve(joyTopic).toString();
        camTopic = appNameSpace.resolve(camTopic).toString();

		cameraView.setTopicName(camTopic);
        virtualJoystickView.setTopicName(joyTopic);
		
		nodeMainExecutor.execute(cameraView, nodeConfiguration
				.setNodeName("android/camera_view"));
		nodeMainExecutor.execute(virtualJoystickView,
				nodeConfiguration.setNodeName("android/virtual_joystick"));

		//inserted 138-
		NodeConfiguration nodeConfiguration2 = NodeConfiguration.newPublic(getRosHostname());
		nodeConfiguration2.setMasterUri(getMasterUri());
		//nodeMainExecutor.execute(talker, nodeConfiguration2);
		// The RosTextView is also a NodeMain that must be executed in order to start displaying incoming messages.
			nodeMainExecutor.execute(rosTextView, nodeConfiguration2);

        } catch (IOException e) {
            // Socket problem
        }



	}
	
	  @Override
	  public boolean onCreateOptionsMenu(Menu menu){
		  menu.add(0,0,0,R.string.stop_app);

		  return super.onCreateOptionsMenu(menu);
	  }
	  
	  @Override
	  public boolean onOptionsItemSelected(MenuItem item){
		  super.onOptionsItemSelected(item);
		  switch (item.getItemId()){
		  case 0:
			  onDestroy();
			  break;
		  }
		  return true;
	  }
}
