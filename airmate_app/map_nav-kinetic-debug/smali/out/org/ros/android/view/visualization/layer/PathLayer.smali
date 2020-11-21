.class public Lorg/ros/android/view/visualization/layer/PathLayer;
.super Lorg/ros/android/view/visualization/layer/SubscriberLayer;
.source "PathLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/TfLayer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/android/view/visualization/layer/SubscriberLayer<",
        "Lnav_msgs/Path;",
        ">;",
        "Lorg/ros/android/view/visualization/layer/TfLayer;"
    }
.end annotation


# static fields
.field private static final COLOR:Lorg/ros/android/view/visualization/Color;

.field private static final LINE_WIDTH:F = 4.0f


# instance fields
.field private frame:Lorg/ros/namespace/GraphName;

.field private numPoints:I

.field private ready:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const-string v0, "03dfc9"

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/Color;->fromHexAndAlpha(Ljava/lang/String;F)Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    sput-object v0, Lorg/ros/android/view/visualization/layer/PathLayer;->COLOR:Lorg/ros/android/view/visualization/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "topic"    # Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/android/view/visualization/layer/PathLayer;-><init>(Lorg/ros/namespace/GraphName;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "topic"    # Lorg/ros/namespace/GraphName;

    .line 53
    const-string v0, "nav_msgs/Path"

    invoke-direct {p0, p1, v0}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->ready:Z

    .line 55
    iput v0, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->numPoints:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/visualization/layer/PathLayer;Lnav_msgs/Path;)V
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PathLayer;
    .param p1, "x1"    # Lnav_msgs/Path;

    .line 38
    invoke-direct {p0, p1}, Lorg/ros/android/view/visualization/layer/PathLayer;->updateVertexBuffer(Lnav_msgs/Path;)V

    return-void
.end method

.method static synthetic access$102(Lorg/ros/android/view/visualization/layer/PathLayer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PathLayer;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->ready:Z

    return p1
.end method

.method private updateVertexBuffer(Lnav_msgs/Path;)V
    .registers 10
    .param p1, "path"    # Lnav_msgs/Path;

    .line 83
    nop

    .line 84
    invoke-interface {p1}, Lnav_msgs/Path;->getPoses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "goalVertexByteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    invoke-interface {p1}, Lnav_msgs/Path;->getPoses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_8f

    .line 89
    invoke-interface {p1}, Lnav_msgs/Path;->getPoses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeometry_msgs/PoseStamped;

    invoke-interface {v2}, Lgeometry_msgs/PoseStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v2

    invoke-interface {v2}, Lstd_msgs/Header;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    iput-object v2, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->frame:Lorg/ros/namespace/GraphName;

    .line 90
    invoke-interface {p1}, Lnav_msgs/Path;->getPoses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgeometry_msgs/PoseStamped;

    .line 91
    .local v4, "pose":Lgeometry_msgs/PoseStamped;
    iget-object v5, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v4}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v6

    invoke-interface {v6}, Lgeometry_msgs/Pose;->getPosition()Lgeometry_msgs/Point;

    move-result-object v6

    invoke-interface {v6}, Lgeometry_msgs/Point;->getX()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 92
    iget-object v5, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v4}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v6

    invoke-interface {v6}, Lgeometry_msgs/Pose;->getPosition()Lgeometry_msgs/Point;

    move-result-object v6

    invoke-interface {v6}, Lgeometry_msgs/Point;->getY()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 93
    iget-object v5, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v4}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v6

    invoke-interface {v6}, Lgeometry_msgs/Pose;->getPosition()Lgeometry_msgs/Point;

    move-result-object v6

    invoke-interface {v6}, Lgeometry_msgs/Point;->getZ()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    .end local v4    # "pose":Lgeometry_msgs/PoseStamped;
    goto :goto_4a

    .line 97
    :cond_8f
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    iput v1, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->numPoints:I

    .line 99
    return-void
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 60
    iget-boolean v0, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->ready:Z

    if-eqz v0, :cond_25

    .line 61
    const v0, 0x8074

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 62
    const/16 v1, 0x1406

    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-interface {p2, v4, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 63
    sget-object v1, Lorg/ros/android/view/visualization/layer/PathLayer;->COLOR:Lorg/ros/android/view/visualization/Color;

    invoke-virtual {v1, p2}, Lorg/ros/android/view/visualization/Color;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 64
    const/high16 v1, 0x40800000    # 4.0f

    invoke-interface {p2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 65
    iget v1, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->numPoints:I

    invoke-interface {p2, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 66
    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 68
    :cond_25
    return-void
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PathLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 72
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 73
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/layer/PathLayer;->getSubscriber()Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    new-instance v1, Lorg/ros/android/view/visualization/layer/PathLayer$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/visualization/layer/PathLayer$1;-><init>(Lorg/ros/android/view/visualization/layer/PathLayer;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 80
    return-void
.end method
