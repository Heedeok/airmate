.class public Lorg/ros/android/view/DistanceView;
.super Landroid/opengl/GLSurfaceView;
.source "DistanceView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/ros/node/NodeMain;
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/opengl/GLSurfaceView;",
        "Landroid/view/View$OnTouchListener;",
        "Lorg/ros/node/NodeMain;",
        "Lorg/ros/message/MessageListener<",
        "Lsensor_msgs/LaserScan;",
        ">;"
    }
.end annotation


# instance fields
.field private contactDistance:D

.field private distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

.field private laserTopic:Ljava/lang/String;

.field private normalizedZoomValue:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ros/android/view/DistanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Lorg/ros/android/view/DistanceRenderer;

    invoke-direct {v0}, Lorg/ros/android/view/DistanceRenderer;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    .line 81
    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/ros/android/view/DistanceView;->setEGLConfigChooser(IIIIII)V

    .line 82
    invoke-virtual {p0}, Lorg/ros/android/view/DistanceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/ros/android/view/DistanceView;->setZOrderOnTop(Z)V

    .line 84
    iget-object v0, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    invoke-virtual {p0, v0}, Lorg/ros/android/view/DistanceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ros/android/view/DistanceView;->setRenderMode(I)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/DistanceView;)Lorg/ros/android/view/DistanceRenderer;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/DistanceView;

    .line 46
    iget-object v0, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    return-object v0
.end method

.method private calculateDistance(FFFF)D
    .registers 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 241
    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float v0, v0, v1

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public currentSpeed(D)V
    .registers 4
    .param p1, "speed"    # D

    .line 199
    iget-object v0, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    invoke-virtual {v0, p1, p2}, Lorg/ros/android/view/DistanceRenderer;->currentSpeed(D)V

    .line 200
    return-void
.end method

.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 102
    const-string v0, "android_15/distance_view"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public lockZoom()V
    .registers 2

    .line 181
    iget-object v0, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    invoke-virtual {v0}, Lorg/ros/android/view/DistanceRenderer;->lockZoom()V

    .line 182
    return-void
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 143
    return-void
.end method

.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 46
    check-cast p1, Lsensor_msgs/LaserScan;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/DistanceView;->onNewMessage(Lsensor_msgs/LaserScan;)V

    return-void
.end method

.method public onNewMessage(Lsensor_msgs/LaserScan;)V
    .registers 3
    .param p1, "message"    # Lsensor_msgs/LaserScan;

    .line 147
    new-instance v0, Lorg/ros/android/view/DistanceView$2;

    invoke-direct {v0, p0, p1}, Lorg/ros/android/view/DistanceView$2;-><init>(Lorg/ros/android/view/DistanceView;Lsensor_msgs/LaserScan;)V

    invoke-virtual {p0, v0}, Lorg/ros/android/view/DistanceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 133
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 4
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 138
    iget-object v0, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    invoke-virtual {p0}, Lorg/ros/android/view/DistanceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/android/view/DistanceRenderer;->savePreferences(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 6
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 108
    iget-object v0, p0, Lorg/ros/android/view/DistanceView;->laserTopic:Ljava/lang/String;

    const-string v1, "sensor_msgs/LaserScan"

    .line 109
    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    .line 110
    .local v0, "laserScanSubscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Lsensor_msgs/LaserScan;>;"
    invoke-interface {v0, p0}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 113
    const-string v1, "cmd_vel"

    const-string v2, "geometry_msgs/Twist"

    .line 114
    invoke-interface {p1, v1, v2}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v1

    .line 115
    .local v1, "twistSubscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Lgeometry_msgs/Twist;>;"
    new-instance v2, Lorg/ros/android/view/DistanceView$1;

    invoke-direct {v2, p0}, Lorg/ros/android/view/DistanceView$1;-><init>(Lorg/ros/android/view/DistanceView;)V

    invoke-interface {v1, v2}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 126
    invoke-virtual {p0, p0}, Lorg/ros/android/view/DistanceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object v2, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    invoke-virtual {p0}, Lorg/ros/android/view/DistanceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/ros/android/view/DistanceRenderer;->loadPreferences(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 205
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_27

    const/4 v2, 0x5

    if-eq v1, v2, :cond_f

    goto :goto_75

    .line 232
    :cond_f
    nop

    .line 233
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v1, v2, v3, v5}, Lorg/ros/android/view/DistanceView;->calculateDistance(FFFF)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/ros/android/view/DistanceView;->contactDistance:D

    goto :goto_75

    .line 208
    :cond_27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_75

    .line 210
    nop

    .line 211
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v1, v3, v5, v6}, Lorg/ros/android/view/DistanceView;->calculateDistance(FFFF)D

    move-result-wide v5

    .line 217
    .local v5, "currentContactDistance":D
    iget-wide v7, p0, Lorg/ros/android/view/DistanceView;->normalizedZoomValue:D

    iget-wide v9, p0, Lorg/ros/android/view/DistanceView;->contactDistance:D

    sub-double v9, v5, v9

    invoke-virtual {p0}, Lorg/ros/android/view/DistanceView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v1

    add-double/2addr v7, v9

    iput-wide v7, p0, Lorg/ros/android/view/DistanceView;->normalizedZoomValue:D

    .line 218
    iget-wide v1, p0, Lorg/ros/android/view/DistanceView;->normalizedZoomValue:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v1, v7

    if-lez v3, :cond_60

    .line 219
    iput-wide v7, p0, Lorg/ros/android/view/DistanceView;->normalizedZoomValue:D

    goto :goto_6a

    .line 220
    :cond_60
    iget-wide v1, p0, Lorg/ros/android/view/DistanceView;->normalizedZoomValue:D

    const-wide/16 v7, 0x0

    cmpg-double v3, v1, v7

    if-gez v3, :cond_6a

    .line 221
    iput-wide v7, p0, Lorg/ros/android/view/DistanceView;->normalizedZoomValue:D

    .line 223
    :cond_6a
    :goto_6a
    iget-object v1, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    iget-wide v2, p0, Lorg/ros/android/view/DistanceView;->normalizedZoomValue:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/ros/android/view/DistanceRenderer;->setNormalizedZoom(F)V

    .line 225
    iput-wide v5, p0, Lorg/ros/android/view/DistanceView;->contactDistance:D

    .line 226
    .end local v5    # "currentContactDistance":D
    nop

    .line 237
    :cond_75
    :goto_75
    return v4
.end method

.method public setTopicName(Ljava/lang/String;)V
    .registers 2
    .param p1, "topicName"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lorg/ros/android/view/DistanceView;->laserTopic:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setZoomMode(Lorg/ros/android/view/ZoomMode;)V
    .registers 3
    .param p1, "mode"    # Lorg/ros/android/view/ZoomMode;

    .line 174
    iget-object v0, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    invoke-virtual {v0, p1}, Lorg/ros/android/view/DistanceRenderer;->setZoomMode(Lorg/ros/android/view/ZoomMode;)V

    .line 175
    return-void
.end method

.method public unlockZoom()V
    .registers 2

    .line 188
    iget-object v0, p0, Lorg/ros/android/view/DistanceView;->distanceRenderer:Lorg/ros/android/view/DistanceRenderer;

    invoke-virtual {v0}, Lorg/ros/android/view/DistanceRenderer;->unlockZoom()V

    .line 189
    return-void
.end method
