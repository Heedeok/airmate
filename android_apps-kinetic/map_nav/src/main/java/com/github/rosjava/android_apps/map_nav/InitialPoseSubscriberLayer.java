package com.github.rosjava.android_apps.map_nav;

import geometry_msgs.PoseWithCovarianceStamped;
import javax.microedition.khronos.opengles.GL10;
import org.ros.android.view.visualization.VisualizationView;
import org.ros.android.view.visualization.layer.SubscriberLayer;
import org.ros.android.view.visualization.layer.TfLayer;
import org.ros.android.view.visualization.shape.GoalShape;
import org.ros.android.view.visualization.shape.Shape;
import org.ros.message.MessageListener;
import org.ros.namespace.GraphName;
import org.ros.node.ConnectedNode;
import org.ros.rosjava_geometry.FrameTransform;
import org.ros.rosjava_geometry.Transform;

public class InitialPoseSubscriberLayer extends SubscriberLayer<PoseWithCovarianceStamped> implements TfLayer {
    /* access modifiers changed from: private */
    public Shape shape;
    /* access modifiers changed from: private */
    public final GraphName targetFrame;

    public InitialPoseSubscriberLayer(String topic, String robotFrame) {
        this(GraphName.of(topic), robotFrame);
        this.shape = new GoalShape();
    }

    public InitialPoseSubscriberLayer(GraphName topic, String robotFrame) {
        super(topic, PoseWithCovarianceStamped._TYPE);
        this.targetFrame = GraphName.of(robotFrame);
    }

    public void draw(VisualizationView view, GL10 gl) {
        this.shape.draw(view, gl);
    }

    public void onStart(final VisualizationView view, ConnectedNode connectedNode) {
        super.onStart(view, connectedNode);
        getSubscriber().addMessageListener(new MessageListener<PoseWithCovarianceStamped>() {
            public void onNewMessage(PoseWithCovarianceStamped pose) {
                FrameTransform frameTransform = view.getFrameTransformTree().transform(GraphName.of(pose.getHeader().getFrameId()), InitialPoseSubscriberLayer.this.targetFrame);
                if (frameTransform != null) {
                    InitialPoseSubscriberLayer.this.shape.setTransform(frameTransform.getTransform().multiply(Transform.fromPoseMessage(pose.getPose().getPose())));
                }
            }
        });
    }

    public GraphName getFrame() {
        return this.targetFrame;
    }
}
