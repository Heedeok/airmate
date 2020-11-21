.class public Lorg/ros/android/view/visualization/layer/LaserScanLayer;
.super Lorg/ros/android/view/visualization/layer/SubscriberLayer;
.source "LaserScanLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/TfLayer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/android/view/visualization/layer/SubscriberLayer<",
        "Lsensor_msgs/LaserScan;",
        ">;",
        "Lorg/ros/android/view/visualization/layer/TfLayer;"
    }
.end annotation


# static fields
.field private static final FREE_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

.field private static final LASER_SCAN_POINT_SIZE:F = 10.0f

.field private static final LASER_SCAN_STRIDE:I = 0xf

.field private static final OCCUPIED_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;


# instance fields
.field private frame:Lorg/ros/namespace/GraphName;

.field private final mutex:Ljava/lang/Object;

.field private vertexBackBuffer:Ljava/nio/FloatBuffer;

.field private vertexFrontBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const-string v0, "377dfa"

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/Color;->fromHexAndAlpha(Ljava/lang/String;F)Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    sput-object v0, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->FREE_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

    .line 42
    const-string v0, "377dfa"

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/Color;->fromHexAndAlpha(Ljava/lang/String;F)Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    sput-object v0, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->OCCUPIED_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "topicName"    # Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/android/view/visualization/layer/LaserScanLayer;-><init>(Lorg/ros/namespace/GraphName;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 57
    const-string v0, "sensor_msgs/LaserScan"

    invoke-direct {p0, p1, v0}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->mutex:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method static synthetic access$002(Lorg/ros/android/view/visualization/layer/LaserScanLayer;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/LaserScanLayer;
    .param p1, "x1"    # Lorg/ros/namespace/GraphName;

    .line 39
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object p1
.end method

.method static synthetic access$100(Lorg/ros/android/view/visualization/layer/LaserScanLayer;Lsensor_msgs/LaserScan;I)V
    .registers 3
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/LaserScanLayer;
    .param p1, "x1"    # Lsensor_msgs/LaserScan;
    .param p2, "x2"    # I

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->updateVertexBuffer(Lsensor_msgs/LaserScan;I)V

    return-void
.end method

.method private updateVertexBuffer(Lsensor_msgs/LaserScan;I)V
    .registers 22
    .param p1, "laserScan"    # Lsensor_msgs/LaserScan;
    .param p2, "stride"    # I

    .line 89
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v0, 0x0

    .line 90
    .local v0, "vertexCount":I
    invoke-interface/range {p1 .. p1}, Lsensor_msgs/LaserScan;->getRanges()[F

    move-result-object v3

    .line 91
    .local v3, "ranges":[F
    array-length v4, v3

    div-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    .line 92
    .local v4, "size":I
    iget-object v5, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_1b

    iget-object v5, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    if-ge v5, v4, :cond_21

    .line 93
    :cond_1b
    invoke-static {v4}, Lorg/ros/android/view/visualization/Vertices;->allocateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    .line 95
    :cond_21
    iget-object v5, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 97
    iget-object v5, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 98
    iget-object v5, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 99
    iget-object v5, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    invoke-interface/range {p1 .. p1}, Lsensor_msgs/LaserScan;->getRangeMin()F

    move-result v5

    .line 102
    .local v5, "minimumRange":F
    invoke-interface/range {p1 .. p1}, Lsensor_msgs/LaserScan;->getRangeMax()F

    move-result v7

    .line 103
    .local v7, "maximumRange":F
    invoke-interface/range {p1 .. p1}, Lsensor_msgs/LaserScan;->getAngleMin()F

    move-result v8

    .line 104
    .local v8, "angle":F
    invoke-interface/range {p1 .. p1}, Lsensor_msgs/LaserScan;->getAngleIncrement()F

    move-result v9

    .line 106
    .local v9, "angleIncrement":F
    const/4 v10, 0x0

    move v11, v8

    move v8, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v8, "vertexCount":I
    .local v11, "angle":F
    :goto_4c
    array-length v12, v3

    if-ge v0, v12, :cond_9e

    .line 107
    aget v12, v3, v0

    .line 111
    .local v12, "range":F
    cmpg-float v13, v5, v12

    if-gez v13, :cond_8a

    cmpg-float v13, v12, v7

    if-gez v13, :cond_8a

    .line 113
    iget-object v13, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    float-to-double v14, v12

    move/from16 v16, v7

    .end local v7    # "maximumRange":F
    .local v16, "maximumRange":F
    float-to-double v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v6

    double-to-float v6, v14

    invoke-virtual {v13, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 114
    iget-object v6, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    float-to-double v13, v12

    move-object/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "ranges":[F
    .end local v4    # "size":I
    .local v17, "ranges":[F
    .local v18, "size":I
    float-to-double v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v3

    double-to-float v3, v13

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 115
    iget-object v3, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 116
    add-int/lit8 v8, v8, 0x1

    goto :goto_91

    .line 118
    .end local v16    # "maximumRange":F
    .end local v17    # "ranges":[F
    .end local v18    # "size":I
    .restart local v3    # "ranges":[F
    .restart local v4    # "size":I
    .restart local v7    # "maximumRange":F
    :cond_8a
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v16, v7

    const/4 v4, 0x0

    .end local v3    # "ranges":[F
    .end local v4    # "size":I
    .end local v7    # "maximumRange":F
    .restart local v16    # "maximumRange":F
    .restart local v17    # "ranges":[F
    .restart local v18    # "size":I
    :goto_91
    int-to-float v3, v2

    mul-float v3, v3, v9

    add-float/2addr v11, v3

    .line 106
    .end local v12    # "range":F
    add-int/2addr v0, v2

    move/from16 v7, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    const/4 v6, 0x0

    goto :goto_4c

    .line 120
    .end local v0    # "i":I
    .end local v16    # "maximumRange":F
    .end local v17    # "ranges":[F
    .end local v18    # "size":I
    .restart local v3    # "ranges":[F
    .restart local v4    # "size":I
    .restart local v7    # "maximumRange":F
    :cond_9e
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v16, v7

    .end local v3    # "ranges":[F
    .end local v4    # "size":I
    .end local v7    # "maximumRange":F
    .restart local v16    # "maximumRange":F
    .restart local v17    # "ranges":[F
    .restart local v18    # "size":I
    iget-object v0, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget-object v0, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v8, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 122
    iget-object v3, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    :try_start_b3
    iget-object v0, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    .line 124
    .local v0, "tmp":Ljava/nio/FloatBuffer;
    iget-object v4, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    iput-object v4, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    .line 125
    iput-object v0, v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    .line 126
    .end local v0    # "tmp":Ljava/nio/FloatBuffer;
    monitor-exit v3

    .line 127
    return-void

    .line 126
    :catchall_bd
    move-exception v0

    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_b3 .. :try_end_bf} :catchall_bd

    throw v0
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 63
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_24

    .line 64
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_7
    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->FREE_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

    invoke-static {p2, v1, v2}, Lorg/ros/android/view/visualization/Vertices;->drawTriangleFan(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;)V

    .line 68
    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 69
    .local v1, "pointVertices":Ljava/nio/FloatBuffer;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    sget-object v2, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->OCCUPIED_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p2, v1, v2, v3}, Lorg/ros/android/view/visualization/Vertices;->drawPoints(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;F)V

    .line 71
    .end local v1    # "pointVertices":Ljava/nio/FloatBuffer;
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    .line 73
    :cond_24
    :goto_24
    return-void
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 131
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 77
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 78
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->getSubscriber()Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    .line 79
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Lsensor_msgs/LaserScan;>;"
    new-instance v1, Lorg/ros/android/view/visualization/layer/LaserScanLayer$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/visualization/layer/LaserScanLayer$1;-><init>(Lorg/ros/android/view/visualization/layer/LaserScanLayer;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 86
    return-void
.end method
