.class Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer$1;
.super Ljava/lang/Object;
.source "InitialPoseSubscriberLayer.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lgeometry_msgs/PoseWithCovarianceStamped;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;

.field final synthetic val$view:Lorg/ros/android/view/visualization/VisualizationView;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;Lorg/ros/android/view/visualization/VisualizationView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;

    .line 38
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;

    iput-object p2, p0, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewMessage(Lgeometry_msgs/PoseWithCovarianceStamped;)V
    .registers 6
    .param p1, "pose"    # Lgeometry_msgs/PoseWithCovarianceStamped;

    .line 40
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/VisualizationView;->getFrameTransformTree()Lorg/ros/rosjava_geometry/FrameTransformTree;

    move-result-object v0

    invoke-interface {p1}, Lgeometry_msgs/PoseWithCovarianceStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v1

    invoke-interface {v1}, Lstd_msgs/Header;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;->targetFrame:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0, v1, v2}, Lorg/ros/rosjava_geometry/FrameTransformTree;->transform(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    .line 41
    .local v0, "frameTransform":Lorg/ros/rosjava_geometry/FrameTransform;
    if-eqz v0, :cond_37

    .line 42
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;

    iget-object v1, v1, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-interface {p1}, Lgeometry_msgs/PoseWithCovarianceStamped;->getPose()Lgeometry_msgs/PoseWithCovariance;

    move-result-object v3

    invoke-interface {v3}, Lgeometry_msgs/PoseWithCovariance;->getPose()Lgeometry_msgs/Pose;

    move-result-object v3

    invoke-static {v3}, Lorg/ros/rosjava_geometry/Transform;->fromPoseMessage(Lgeometry_msgs/Pose;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/ros/android/view/visualization/shape/Shape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    .line 44
    :cond_37
    return-void
.end method

.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 38
    check-cast p1, Lgeometry_msgs/PoseWithCovarianceStamped;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer$1;->onNewMessage(Lgeometry_msgs/PoseWithCovarianceStamped;)V

    return-void
.end method
