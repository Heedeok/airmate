.class public Lorg/ros/android/view/visualization/layer/PosePublisherLayer;
.super Lorg/ros/android/view/visualization/layer/DefaultLayer;
.source "PosePublisherLayer.java"


# instance fields
.field private connectedNode:Lorg/ros/node/ConnectedNode;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private pose:Lorg/ros/rosjava_geometry/Transform;

.field private posePublisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lgeometry_msgs/PoseStamped;",
            ">;"
        }
    .end annotation
.end field

.field private shape:Lorg/ros/android/view/visualization/shape/Shape;

.field private topic:Lorg/ros/namespace/GraphName;

.field private visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "topic"    # Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;-><init>(Lorg/ros/namespace/GraphName;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "topic"    # Lorg/ros/namespace/GraphName;

    .line 52
    invoke-direct {p0}, Lorg/ros/android/view/visualization/layer/DefaultLayer;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->topic:Lorg/ros/namespace/GraphName;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->visible:Z

    .line 55
    return-void
.end method

.method static synthetic access$002(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PosePublisherLayer;
    .param p1, "x1"    # Landroid/view/GestureDetector;

    .line 38
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->gestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic access$100(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;)Lorg/ros/rosjava_geometry/Transform;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

    .line 38
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    return-object v0
.end method

.method static synthetic access$102(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PosePublisherLayer;
    .param p1, "x1"    # Lorg/ros/rosjava_geometry/Transform;

    .line 38
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    return-object p1
.end method

.method static synthetic access$200(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;)Lorg/ros/android/view/visualization/shape/Shape;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

    .line 38
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    return-object v0
.end method

.method static synthetic access$302(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PosePublisherLayer;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->visible:Z

    return p1
.end method

.method private angle(DDDD)D
    .registers 15
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .line 66
    sub-double v0, p1, p5

    .line 67
    .local v0, "deltaX":D
    sub-double v2, p3, p7

    .line 68
    .local v2, "deltaY":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 59
    iget-boolean v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->visible:Z

    if-eqz v0, :cond_e

    .line 60
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    invoke-interface {v0, p1, p2}, Lorg/ros/android/view/visualization/shape/Shape;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 63
    :cond_e
    return-void
.end method

.method public onShutdown(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/Node;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "node"    # Lorg/ros/node/Node;

    .line 121
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->posePublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v0}, Lorg/ros/node/topic/Publisher;->shutdown()V

    .line 122
    return-void
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 98
    iput-object p2, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 99
    new-instance v0, Lorg/ros/android/view/visualization/shape/PixelSpacePoseShape;

    invoke-direct {v0}, Lorg/ros/android/view/visualization/shape/PixelSpacePoseShape;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    .line 100
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->topic:Lorg/ros/namespace/GraphName;

    const-string v1, "geometry_msgs/PoseStamped"

    invoke-interface {p2, v0, v1}, Lorg/ros/node/ConnectedNode;->newPublisher(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->posePublisher:Lorg/ros/node/topic/Publisher;

    .line 101
    new-instance v0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;

    invoke-direct {v0, p0, p1}, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;-><init>(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;Lorg/ros/android/view/visualization/VisualizationView;)V

    invoke-virtual {p1, v0}, Lorg/ros/android/view/visualization/VisualizationView;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public onTouchEvent(Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 73
    iget-boolean v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_85

    .line 74
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_5b

    .line 76
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->zero()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Transform;->apply(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v0

    .line 77
    .local v0, "poseVector":Lorg/ros/rosjava_geometry/Vector3;
    nop

    .line 78
    invoke-virtual {p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v4}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    .line 79
    .local v1, "pointerVector":Lorg/ros/rosjava_geometry/Vector3;
    nop

    .line 80
    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v5

    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v7

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v11

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->angle(DDDD)D

    move-result-wide v4

    .line 81
    .local v4, "angle":D
    invoke-static {v0}, Lorg/ros/rosjava_geometry/Transform;->translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-static {v4, v5}, Lorg/ros/rosjava_geometry/Transform;->zRotation(D)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    iput-object v2, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    .line 82
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    iget-object v6, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-interface {v2, v6}, Lorg/ros/android/view/visualization/shape/Shape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    .line 83
    return v3

    .line 85
    .end local v0    # "poseVector":Lorg/ros/rosjava_geometry/Vector3;
    .end local v1    # "pointerVector":Lorg/ros/rosjava_geometry/Vector3;
    .end local v4    # "angle":D
    :cond_5b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_85

    .line 86
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->posePublisher:Lorg/ros/node/topic/Publisher;

    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v4

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->getFrame()Lorg/ros/namespace/GraphName;

    move-result-object v4

    iget-object v5, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 87
    invoke-interface {v5}, Lorg/ros/node/ConnectedNode;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v5

    iget-object v6, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->posePublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v6}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeometry_msgs/PoseStamped;

    .line 86
    invoke-virtual {v2, v4, v5, v6}, Lorg/ros/rosjava_geometry/Transform;->toPoseStampedMessage(Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;Lgeometry_msgs/PoseStamped;)Lgeometry_msgs/PoseStamped;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 88
    iput-boolean v1, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->visible:Z

    .line 89
    return v3

    .line 92
    :cond_85
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    return v1
.end method
