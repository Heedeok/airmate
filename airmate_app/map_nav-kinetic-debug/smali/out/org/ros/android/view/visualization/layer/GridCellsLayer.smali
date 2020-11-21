.class public Lorg/ros/android/view/visualization/layer/GridCellsLayer;
.super Lorg/ros/android/view/visualization/layer/SubscriberLayer;
.source "GridCellsLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/TfLayer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/android/view/visualization/layer/SubscriberLayer<",
        "Lnav_msgs/GridCells;",
        ">;",
        "Lorg/ros/android/view/visualization/layer/TfLayer;"
    }
.end annotation


# instance fields
.field private camera:Lorg/ros/android/view/visualization/XYOrthographicCamera;

.field private final color:Lorg/ros/android/view/visualization/Color;

.field private frame:Lorg/ros/namespace/GraphName;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private message:Lnav_msgs/GridCells;

.field private ready:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/ros/android/view/visualization/Color;)V
    .registers 4
    .param p1, "topicName"    # Ljava/lang/String;
    .param p2, "color"    # Lorg/ros/android/view/visualization/Color;

    .line 46
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/ros/android/view/visualization/layer/GridCellsLayer;-><init>(Lorg/ros/namespace/GraphName;Lorg/ros/android/view/visualization/Color;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;Lorg/ros/android/view/visualization/Color;)V
    .registers 4
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p2, "color"    # Lorg/ros/android/view/visualization/Color;

    .line 50
    const-string v0, "nav_msgs/GridCells"

    invoke-direct {p0, p1, v0}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->color:Lorg/ros/android/view/visualization/Color;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->frame:Lorg/ros/namespace/GraphName;

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->lock:Ljava/util/concurrent/locks/Lock;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->ready:Z

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/visualization/layer/GridCellsLayer;)Lorg/ros/namespace/GraphName;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    .line 35
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method static synthetic access$002(Lorg/ros/android/view/visualization/layer/GridCellsLayer;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/GridCellsLayer;
    .param p1, "x1"    # Lorg/ros/namespace/GraphName;

    .line 35
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object p1
.end method

.method static synthetic access$100(Lorg/ros/android/view/visualization/layer/GridCellsLayer;)Ljava/util/concurrent/locks/Lock;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    .line 35
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$202(Lorg/ros/android/view/visualization/layer/GridCellsLayer;Lnav_msgs/GridCells;)Lnav_msgs/GridCells;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/GridCellsLayer;
    .param p1, "x1"    # Lnav_msgs/GridCells;

    .line 35
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->message:Lnav_msgs/GridCells;

    return-object p1
.end method

.method static synthetic access$302(Lorg/ros/android/view/visualization/layer/GridCellsLayer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/GridCellsLayer;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->ready:Z

    return p1
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 12
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 59
    iget-boolean v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->ready:Z

    if-nez v0, :cond_5

    .line 60
    return-void

    .line 62
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 63
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->message:Lnav_msgs/GridCells;

    .line 65
    invoke-interface {v0}, Lnav_msgs/GridCells;->getCellWidth()F

    move-result v0

    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->message:Lnav_msgs/GridCells;

    invoke-interface {v1}, Lnav_msgs/GridCells;->getCellHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->camera:Lorg/ros/android/view/visualization/XYOrthographicCamera;

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->getZoom()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 66
    .local v0, "pointSize":F
    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->message:Lnav_msgs/GridCells;

    invoke-interface {v1}, Lnav_msgs/GridCells;->getCells()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [F

    .line 67
    .local v1, "vertices":[F
    const/4 v3, 0x0

    .line 68
    .local v3, "i":I
    iget-object v4, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->message:Lnav_msgs/GridCells;

    invoke-interface {v4}, Lnav_msgs/GridCells;->getCells()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeometry_msgs/Point;

    .line 69
    .local v5, "cell":Lgeometry_msgs/Point;
    invoke-interface {v5}, Lgeometry_msgs/Point;->getX()D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v1, v3

    .line 70
    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5}, Lgeometry_msgs/Point;->getY()D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v1, v6

    .line 71
    add-int/lit8 v6, v3, 0x2

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 72
    add-int/lit8 v3, v3, 0x3

    .line 73
    .end local v5    # "cell":Lgeometry_msgs/Point;
    goto :goto_44

    .line 74
    :cond_68
    const v4, 0x8074

    invoke-interface {p2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 75
    const/16 v5, 0x1406

    invoke-static {v1}, Lorg/ros/android/view/visualization/Vertices;->toFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p2, v2, v5, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 76
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->color:Lorg/ros/android/view/visualization/Color;

    invoke-virtual {v2, p2}, Lorg/ros/android/view/visualization/Color;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 77
    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 78
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->message:Lnav_msgs/GridCells;

    invoke-interface {v2}, Lnav_msgs/GridCells;->getCells()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v7, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 79
    invoke-interface {p2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 80
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    return-void
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 85
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 86
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->getSubscriber()Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    new-instance v1, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;

    invoke-direct {v1, p0, p1}, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;-><init>(Lorg/ros/android/view/visualization/layer/GridCellsLayer;Lorg/ros/android/view/visualization/VisualizationView;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 99
    return-void
.end method
