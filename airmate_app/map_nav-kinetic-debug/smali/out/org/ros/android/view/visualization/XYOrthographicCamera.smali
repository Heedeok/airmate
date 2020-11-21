.class public Lorg/ros/android/view/visualization/XYOrthographicCamera;
.super Ljava/lang/Object;
.source "XYOrthographicCamera.java"


# static fields
.field private static final MAXIMUM_ZOOM_FACTOR:F = 5.0f

.field private static final MINIMUM_ZOOM_FACTOR:F = 0.1f

.field private static final PIXELS_PER_METER:D = 100.0

.field private static final ROS_TO_SCREEN_TRANSFORM:Lorg/ros/rosjava_geometry/Transform;


# instance fields
.field private cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

.field private frame:Lorg/ros/namespace/GraphName;

.field private final frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

.field private final mutex:Ljava/lang/Object;

.field private viewport:Lorg/ros/android/view/visualization/Viewport;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 48
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v0, v1}, Lorg/ros/rosjava_geometry/Transform;->zRotation(D)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-virtual {v0, v1, v2}, Lorg/ros/rosjava_geometry/Transform;->scale(D)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    sput-object v0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->ROS_TO_SCREEN_TRANSFORM:Lorg/ros/rosjava_geometry/Transform;

    return-void
.end method

.method public constructor <init>(Lorg/ros/rosjava_geometry/FrameTransformTree;)V
    .registers 3
    .param p1, "frameTransformTree"    # Lorg/ros/rosjava_geometry/FrameTransformTree;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->mutex:Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->resetTransform()V

    .line 84
    return-void
.end method

.method private getCameraToScreenTransform()Lorg/ros/rosjava_geometry/Transform;
    .registers 3

    .line 124
    sget-object v0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->ROS_TO_SCREEN_TRANSFORM:Lorg/ros/rosjava_geometry/Transform;

    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    return-object v0
.end method

.method private resetTransform()V
    .registers 2

    .line 87
    invoke-static {}, Lorg/ros/rosjava_geometry/Transform;->identity()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    .line 88
    return-void
.end method


# virtual methods
.method public apply(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 91
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    sget-object v1, Lorg/ros/android/view/visualization/XYOrthographicCamera;->ROS_TO_SCREEN_TRANSFORM:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {p1, v1}, Lorg/ros/android/view/visualization/OpenGlTransform;->apply(Ljavax/microedition/khronos/opengles/GL10;Lorg/ros/rosjava_geometry/Transform;)V

    .line 93
    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {p1, v1}, Lorg/ros/android/view/visualization/OpenGlTransform;->apply(Ljavax/microedition/khronos/opengles/GL10;Lorg/ros/rosjava_geometry/Transform;)V

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public applyFrameTransform(Ljavax/microedition/khronos/opengles/GL10;Lorg/ros/namespace/GraphName;)Z
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "frame"    # Lorg/ros/namespace/GraphName;

    .line 98
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    if-eqz v0, :cond_1a

    .line 100
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0, p2, v1}, Lorg/ros/rosjava_geometry/FrameTransformTree;->transform(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    .line 101
    .local v0, "frameTransform":Lorg/ros/rosjava_geometry/FrameTransform;
    if-eqz v0, :cond_1a

    .line 102
    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/ros/android/view/visualization/OpenGlTransform;->apply(Ljavax/microedition/khronos/opengles/GL10;Lorg/ros/rosjava_geometry/Transform;)V

    .line 103
    const/4 v1, 0x1

    return v1

    .line 106
    .end local v0    # "frameTransform":Lorg/ros/rosjava_geometry/FrameTransform;
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraToRosTransform()Lorg/ros/rosjava_geometry/Transform;
    .registers 2

    .line 262
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    return-object v0
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 196
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getScreenTransform(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/Transform;
    .registers 5
    .param p1, "targetFrame"    # Lorg/ros/namespace/GraphName;

    .line 128
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0, v1, p1}, Lorg/ros/rosjava_geometry/FrameTransformTree;->transform(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    .line 129
    .local v0, "frameTransform":Lorg/ros/rosjava_geometry/FrameTransform;
    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    invoke-direct {p0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->getCameraToScreenTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/rosjava_geometry/Transform;->invert()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    return-object v1
.end method

.method public getViewport()Lorg/ros/android/view/visualization/Viewport;
    .registers 2

    .line 256
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->viewport:Lorg/ros/android/view/visualization/Viewport;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->viewport:Lorg/ros/android/view/visualization/Viewport;

    return-object v0
.end method

.method public getZoom()D
    .registers 5

    .line 169
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/Transform;->getScale()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public jumpToFrame(Ljava/lang/String;)V
    .registers 3
    .param p1, "frame"    # Ljava/lang/String;

    .line 247
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->jumpToFrame(Lorg/ros/namespace/GraphName;)V

    .line 248
    return-void
.end method

.method public jumpToFrame(Lorg/ros/namespace/GraphName;)V
    .registers 8
    .param p1, "frame"    # Lorg/ros/namespace/GraphName;

    .line 235
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    iput-object p1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    .line 237
    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Transform;->getScale()D

    move-result-wide v1

    .line 238
    .local v1, "scale":D
    invoke-direct {p0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->resetTransform()V

    .line 239
    iget-object v3, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    iget-object v4, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {v4}, Lorg/ros/rosjava_geometry/Transform;->getScale()D

    move-result-wide v4

    div-double v4, v1, v4

    invoke-virtual {v3, v4, v5}, Lorg/ros/rosjava_geometry/Transform;->scale(D)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v3

    iput-object v3, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    .line 240
    .end local v1    # "scale":D
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public rotate(DDD)V
    .registers 11
    .param p1, "focusX"    # D
    .param p3, "focusY"    # D
    .param p5, "deltaAngle"    # D

    .line 140
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    double-to-int v1, p1

    double-to-int v2, p3

    :try_start_5
    invoke-virtual {p0, v1, v2}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-static {v1}, Lorg/ros/rosjava_geometry/Transform;->translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    .line 142
    .local v1, "focus":Lorg/ros/rosjava_geometry/Transform;
    iget-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    .line 143
    invoke-virtual {v2, v1}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-static {p5, p6}, Lorg/ros/rosjava_geometry/Transform;->zRotation(D)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    .line 144
    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Transform;->invert()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    iput-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    .line 145
    .end local v1    # "focus":Lorg/ros/rosjava_geometry/Transform;
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public setFrame(Ljava/lang/String;)V
    .registers 3
    .param p1, "frame"    # Ljava/lang/String;

    .line 225
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->setFrame(Lorg/ros/namespace/GraphName;)V

    .line 226
    return-void
.end method

.method public setFrame(Lorg/ros/namespace/GraphName;)V
    .registers 6
    .param p1, "frame"    # Lorg/ros/namespace/GraphName;

    .line 207
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_6
    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    if-eq v1, p1, :cond_24

    .line 210
    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    iget-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1, p1, v2}, Lorg/ros/rosjava_geometry/FrameTransformTree;->transform(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v1

    .line 211
    .local v1, "frameTransform":Lorg/ros/rosjava_geometry/FrameTransform;
    if-eqz v1, :cond_24

    .line 214
    iget-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    iput-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    .line 217
    .end local v1    # "frameTransform":Lorg/ros/rosjava_geometry/FrameTransform;
    :cond_24
    iput-object p1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    .line 218
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public setViewport(Lorg/ros/android/view/visualization/Viewport;)V
    .registers 2
    .param p1, "viewport"    # Lorg/ros/android/view/visualization/Viewport;

    .line 251
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iput-object p1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->viewport:Lorg/ros/android/view/visualization/Viewport;

    .line 253
    return-void
.end method

.method public toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;
    .registers 16
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I

    .line 177
    int-to-double v0, p1

    iget-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->viewport:Lorg/ros/android/view/visualization/Viewport;

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/Viewport;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    .line 178
    .local v0, "centeredX":D
    iget-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->viewport:Lorg/ros/android/view/visualization/Viewport;

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/Viewport;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    int-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    .line 179
    .local v2, "centeredY":D
    invoke-direct {p0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->getCameraToScreenTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lorg/ros/rosjava_geometry/Transform;->invert()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v4

    new-instance v5, Lorg/ros/rosjava_geometry/Vector3;

    const-wide/16 v11, 0x0

    move-object v6, v5

    move-wide v7, v0

    move-wide v9, v2

    invoke-direct/range {v6 .. v12}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    invoke-virtual {v4, v5}, Lorg/ros/rosjava_geometry/Transform;->apply(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v4

    return-object v4
.end method

.method public toFrame(IILorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/Transform;
    .registers 7
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "frame"    # Lorg/ros/namespace/GraphName;

    .line 189
    invoke-virtual {p0, p1, p2}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/rosjava_geometry/Transform;->translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    .line 190
    .local v0, "translation":Lorg/ros/rosjava_geometry/Transform;
    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    iget-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->frame:Lorg/ros/namespace/GraphName;

    .line 191
    invoke-virtual {v1, v2, p3}, Lorg/ros/rosjava_geometry/FrameTransformTree;->transform(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v1

    .line 192
    .local v1, "cameraToFrame":Lorg/ros/rosjava_geometry/FrameTransform;
    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    return-object v2
.end method

.method public translate(DD)V
    .registers 13
    .param p1, "deltaX"    # D
    .param p3, "deltaY"    # D

    .line 116
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    sget-object v1, Lorg/ros/android/view/visualization/XYOrthographicCamera;->ROS_TO_SCREEN_TRANSFORM:Lorg/ros/rosjava_geometry/Transform;

    .line 118
    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Transform;->invert()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    const-wide/16 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v2 .. v7}, Lorg/ros/rosjava_geometry/Transform;->translation(DDD)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    .line 119
    invoke-direct {p0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->getCameraToScreenTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public zoom(DDD)V
    .registers 22
    .param p1, "focusX"    # D
    .param p3, "focusY"    # D
    .param p5, "factor"    # D

    .line 156
    move-object v1, p0

    iget-object v2, v1, Lorg/ros/android/view/visualization/XYOrthographicCamera;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    move-wide/from16 v3, p1

    double-to-int v0, v3

    move-wide/from16 v5, p3

    double-to-int v7, v5

    :try_start_a
    invoke-virtual {p0, v0, v7}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/rosjava_geometry/Transform;->translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    .line 158
    .local v0, "focus":Lorg/ros/rosjava_geometry/Transform;
    iget-object v7, v1, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {v7}, Lorg/ros/rosjava_geometry/Transform;->getScale()D

    move-result-wide v7

    .line 159
    .local v7, "scale":D
    mul-double v9, v7, p5

    const-wide v11, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    invoke-static/range {v9 .. v14}, Lorg/ros/math/RosMath;->clamp(DDD)D

    move-result-wide v9

    div-double/2addr v9, v7

    .line 160
    .local v9, "zoom":D
    iget-object v11, v1, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    .line 161
    invoke-virtual {v11, v0}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Lorg/ros/rosjava_geometry/Transform;->scale(D)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v11

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/Transform;->invert()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v11

    iput-object v11, v1, Lorg/ros/android/view/visualization/XYOrthographicCamera;->cameraToRosTransform:Lorg/ros/rosjava_geometry/Transform;

    .line 162
    .end local v0    # "focus":Lorg/ros/rosjava_geometry/Transform;
    .end local v7    # "scale":D
    .end local v9    # "zoom":D
    monitor-exit v2

    .line 163
    return-void

    .line 162
    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3c

    throw v0
.end method
