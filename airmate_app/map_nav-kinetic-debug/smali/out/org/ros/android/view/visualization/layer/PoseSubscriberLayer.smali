.class public Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;
.super Lorg/ros/android/view/visualization/layer/SubscriberLayer;
.source "PoseSubscriberLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/TfLayer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/android/view/visualization/layer/SubscriberLayer<",
        "Lgeometry_msgs/PoseStamped;",
        ">;",
        "Lorg/ros/android/view/visualization/layer/TfLayer;"
    }
.end annotation


# instance fields
.field private ready:Z

.field private shape:Lorg/ros/android/view/visualization/shape/Shape;

.field private final targetFrame:Lorg/ros/namespace/GraphName;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "topic"    # Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "topic"    # Lorg/ros/namespace/GraphName;

    .line 46
    const-string v0, "geometry_msgs/PoseStamped"

    invoke-direct {p0, p1, v0}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 47
    const-string v0, "map"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->targetFrame:Lorg/ros/namespace/GraphName;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->ready:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;)Lorg/ros/namespace/GraphName;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;

    .line 33
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->targetFrame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;)Lorg/ros/android/view/visualization/shape/Shape;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;

    .line 33
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    return-object v0
.end method

.method static synthetic access$202(Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->ready:Z

    return p1
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 53
    iget-boolean v0, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->ready:Z

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    invoke-interface {v0, p1, p2}, Lorg/ros/android/view/visualization/shape/Shape;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 56
    :cond_9
    return-void
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->targetFrame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 60
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 61
    new-instance v0, Lorg/ros/android/view/visualization/shape/GoalShape;

    invoke-direct {v0}, Lorg/ros/android/view/visualization/shape/GoalShape;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    .line 62
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;->getSubscriber()Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    new-instance v1, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;

    invoke-direct {v1, p0, p1}, Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer$1;-><init>(Lorg/ros/android/view/visualization/layer/PoseSubscriberLayer;Lorg/ros/android/view/visualization/VisualizationView;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 74
    return-void
.end method
