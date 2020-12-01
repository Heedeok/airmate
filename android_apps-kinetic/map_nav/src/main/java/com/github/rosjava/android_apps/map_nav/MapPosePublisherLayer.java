package com.github.rosjava.android_apps.map_nav;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.github.rosjava.android_apps.map_nav.R;
import com.github.rosjava.android_remocons.common_tools.apps.AppParameters;
import com.github.rosjava.android_remocons.common_tools.apps.AppRemappings;
import com.google.common.base.Preconditions;
import geometry_msgs.PoseStamped;
import geometry_msgs.PoseWithCovarianceStamped;
import javax.microedition.khronos.opengles.GL10;
import move_base_msgs.MoveBaseActionGoal;
import org.ros.android.view.visualization.VisualizationView;
import org.ros.android.view.visualization.layer.DefaultLayer;
import org.ros.android.view.visualization.shape.PixelSpacePoseShape;
import org.ros.android.view.visualization.shape.Shape;
import org.ros.namespace.GraphName;
import org.ros.namespace.NameResolver;
import org.ros.node.ConnectedNode;
import org.ros.node.Node;
import org.ros.node.topic.Publisher;
import org.ros.rosjava_geometry.Transform;
import org.ros.rosjava_geometry.Vector3;

public class MapPosePublisherLayer extends DefaultLayer {
    private static final int GOAL_MODE = 1;
    private static final int POSE_MODE = 0;
    private Publisher<PoseStamped> androidGoalPublisher;
    private ConnectedNode connectedNode;
    /* access modifiers changed from: private */
    public Transform fixedPose;
    /* access modifiers changed from: private */
    public GestureDetector gestureDetector;
    private Publisher<MoveBaseActionGoal> goalPublisher;
    private Publisher<PoseWithCovarianceStamped> initialPosePublisher;
    private String initialPoseTopic;
    /* access modifiers changed from: private */
    public String mapFrame;
    private int mode;
    private String moveBaseGoalTopic;
    private NameResolver nameResolver;
    /* access modifiers changed from: private */
    public Transform pose;
    /* access modifiers changed from: private */
    public String robotFrame;
    /* access modifiers changed from: private */
    public Shape shape;
    private String simpleGoalTopic;
    /* access modifiers changed from: private */
    public boolean visible = false;

    public MapPosePublisherLayer(Context context, NameResolver newNameResolver, AppParameters params, AppRemappings remaps) {
        this.nameResolver = newNameResolver;
        this.mapFrame = (String) params.get("map_frame", context.getString(R.string.map_frame));
        this.robotFrame = (String) params.get("robot_frame", context.getString(R.string.robot_frame));
        this.initialPoseTopic = remaps.get(context.getString(R.string.initial_pose_topic));
        this.simpleGoalTopic = remaps.get(context.getString(R.string.simple_goal_topic));
        this.moveBaseGoalTopic = remaps.get(context.getString(R.string.move_base_goal_topic));
    }

    public void setPoseMode() {
        this.mode = 0;
    }

    public void setGoalMode() {
        this.mode = 1;
    }

    public void draw(VisualizationView view, GL10 gl) {
        if (this.visible) {
            Preconditions.checkNotNull(this.pose);
            this.shape.draw(view, gl);
        }
    }

    private double angle(double x1, double y1, double x2, double y2) {
        return Math.atan2(y1 - y2, x1 - x2);
    }

    public boolean onTouchEvent(VisualizationView view, MotionEvent event) {
        if (this.visible) {
            Preconditions.checkNotNull(this.pose);
            if (event.getAction() == 2) {
                Vector3 poseVector = this.pose.apply(Vector3.zero());
                Vector3 pointerVector = view.getCamera().toCameraFrame((int) event.getX(), (int) event.getY());
                this.pose = Transform.translation(poseVector).multiply(Transform.zRotation(angle(pointerVector.getX(), pointerVector.getY(), poseVector.getX(), poseVector.getY())));
                this.shape.setTransform(this.pose);
                return true;
            } else if (event.getAction() == 1) {
                switch (this.mode) {
                    case 0:
                        view.getCamera().setFrame(this.mapFrame);
                        Vector3 poseVector2 = this.fixedPose.apply(Vector3.zero());
                        Vector3 pointerVector2 = view.getCamera().toCameraFrame((int) event.getX(), (int) event.getY());
                        this.fixedPose = Transform.translation(poseVector2).multiply(Transform.zRotation(angle(pointerVector2.getX(), pointerVector2.getY(), poseVector2.getX(), poseVector2.getY())));
                        view.getCamera().setFrame(this.robotFrame);
                        PoseStamped poseStamped = this.fixedPose.toPoseStampedMessage(GraphName.of(this.robotFrame), this.connectedNode.getCurrentTime(), this.androidGoalPublisher.newMessage());
                        PoseWithCovarianceStamped initialPose = this.initialPosePublisher.newMessage();
                        initialPose.getHeader().setFrameId(this.mapFrame);
                        initialPose.getPose().setPose(poseStamped.getPose());
                        double[] covariance = initialPose.getPose().getCovariance();
                        covariance[0] = 0.25d;
                        covariance[7] = 0.25d;
                        covariance[35] = 0.06853891909122467d;
                        this.initialPosePublisher.publish(initialPose);
                        break;
                    case 1:
                        PoseStamped poseStamped2 = this.pose.toPoseStampedMessage(GraphName.of(this.robotFrame), this.connectedNode.getCurrentTime(), this.androidGoalPublisher.newMessage());
                        this.androidGoalPublisher.publish(poseStamped2);
                        MoveBaseActionGoal message = this.goalPublisher.newMessage();
                        message.setHeader(poseStamped2.getHeader());
                        message.getGoalId().setStamp(this.connectedNode.getCurrentTime());
                        message.getGoalId().setId("move_base/move_base_client_android" + this.connectedNode.getCurrentTime().toString());
                        message.getGoal().setTargetPose(poseStamped2);
                        this.goalPublisher.publish(message);
                        break;
                }
                this.visible = false;
                return true;
            }
        }
        this.gestureDetector.onTouchEvent(event);
        return false;
    }

    public void onStart(final VisualizationView view, ConnectedNode connectedNode2) {
        this.connectedNode = connectedNode2;
        this.shape = new PixelSpacePoseShape();
        this.mode = 1;
        this.initialPosePublisher = connectedNode2.newPublisher(this.nameResolver.resolve(this.initialPoseTopic).toString(), PoseWithCovarianceStamped._TYPE);
        this.androidGoalPublisher = connectedNode2.newPublisher(this.nameResolver.resolve(this.simpleGoalTopic).toString(), PoseStamped._TYPE);
        this.goalPublisher = connectedNode2.newPublisher(this.nameResolver.resolve(this.moveBaseGoalTopic).toString(), MoveBaseActionGoal._TYPE);
        view.post(new Runnable() {
            public void run() {
                GestureDetector unused = MapPosePublisherLayer.this.gestureDetector = new GestureDetector(view.getContext(), new GestureDetector.SimpleOnGestureListener() {
                    public void onLongPress(MotionEvent e) {
                        Transform unused = MapPosePublisherLayer.this.pose = Transform.translation(view.getCamera().toCameraFrame((int) e.getX(), (int) e.getY()));
                        MapPosePublisherLayer.this.shape.setTransform(MapPosePublisherLayer.this.pose);
                        view.getCamera().setFrame(MapPosePublisherLayer.this.mapFrame);
                        Transform unused2 = MapPosePublisherLayer.this.fixedPose = Transform.translation(view.getCamera().toCameraFrame((int) e.getX(), (int) e.getY()));
                        view.getCamera().setFrame(MapPosePublisherLayer.this.robotFrame);
                        boolean unused3 = MapPosePublisherLayer.this.visible = true;
                    }
                });
            }
        });
    }

    public void onShutdown(VisualizationView view, Node node) {
        this.initialPosePublisher.shutdown();
        this.androidGoalPublisher.shutdown();
        this.goalPublisher.shutdown();
    }
}
