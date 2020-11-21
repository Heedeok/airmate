.class public Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;
.super Lorg/ros/android/view/visualization/layer/SubscriberLayer;
.source "InitialPoseSubscriberLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/TfLayer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/android/view/visualization/layer/SubscriberLayer<",
        "Lgeometry_msgs/PoseWithCovarianceStamped;",
        ">;",
        "Lorg/ros/android/view/visualization/layer/TfLayer;"
    }
.end annotation


# instance fields
.field public shape:Lorg/ros/android/view/visualization/shape/Shape;

.field public final targetFrame:Lorg/ros/namespace/GraphName;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "robotFrame"    # Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lorg/ros/android/view/visualization/shape/GoalShape;

    invoke-direct {v0}, Lorg/ros/android/view/visualization/shape/GoalShape;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V
    .registers 4
    .param p1, "topic"    # Lorg/ros/namespace/GraphName;
    .param p2, "robotFrame"    # Ljava/lang/String;

    .line 28
    const-string v0, "geometry_msgs/PoseWithCovarianceStamped"

    invoke-direct {p0, p1, v0}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 29
    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;->targetFrame:Lorg/ros/namespace/GraphName;

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 33
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    invoke-interface {v0, p1, p2}, Lorg/ros/android/view/visualization/shape/Shape;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 34
    return-void
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;->targetFrame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 37
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 38
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;->getSubscriber()Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    new-instance v1, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer$1;

    invoke-direct {v1, p0, p1}, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;Lorg/ros/android/view/visualization/VisualizationView;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 46
    return-void
.end method
