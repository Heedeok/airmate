.class Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;
.super Ljava/lang/Object;
.source "PoseSubscriberLayer.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lgeometry_msgs/PoseStamped;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;

.field final synthetic val$view:Lorg/ros/android/view/visualization/VisualizationView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;Lorg/ros/android/view/visualization/VisualizationView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;

    .line 62
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;

    iput-object p2, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewMessage(Lgeometry_msgs/PoseStamped;)V
    .registers 7
    .param p1, "pose"    # Lgeometry_msgs/PoseStamped;

    .line 65
    invoke-interface {p1}, Lgeometry_msgs/PoseStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v0

    invoke-interface {v0}, Lstd_msgs/Header;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 66
    .local v0, "source":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v1}, Lorg/ros/android/view/visualization/VisualizationView;->getFrameTransformTree()Lorg/ros/rosjava_geometry/FrameTransformTree;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;

    invoke-static {v2}, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->access$000(Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/ros/rosjava_geometry/FrameTransformTree;->transform(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v1

    .line 67
    .local v1, "frameTransform":Lorg/ros/rosjava_geometry/FrameTransform;
    if-eqz v1, :cond_3d

    .line 68
    invoke-interface {p1}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v2

    invoke-static {v2}, Lorg/ros/rosjava_geometry/Transform;->fromPoseMessage(Lgeometry_msgs/Pose;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    .line 69
    .local v2, "poseTransform":Lorg/ros/rosjava_geometry/Transform;
    iget-object v3, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;

    invoke-static {v3}, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->access$100(Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;)Lorg/ros/android/view/visualization/shape/Shape;

    move-result-object v3

    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/ros/android/view/visualization/shape/Shape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    .line 70
    iget-object v3, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->access$202(Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;Z)Z

    .line 72
    .end local v2    # "poseTransform":Lorg/ros/rosjava_geometry/Transform;
    :cond_3d
    return-void
.end method

.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 62
    check-cast p1, Lgeometry_msgs/PoseStamped;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;->onNewMessage(Lgeometry_msgs/PoseStamped;)V

    return-void
.end method
