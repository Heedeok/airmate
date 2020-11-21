.class public Lorg/ros/android/view/camera/CameraPreviewView;
.super Landroid/view/ViewGroup;
.source "CameraPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/android/view/camera/CameraPreviewView$SurfaceHolderCallback;,
        Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.1


# instance fields
.field private bufferingPreviewCallback:Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;

.field private camera:Landroid/hardware/Camera;

.field private previewBuffer:[B

.field private previewSize:Landroid/hardware/Camera$Size;

.field private rawImageListener:Lorg/ros/android/view/camera/RawImageListener;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-direct {p0, p1}, Lorg/ros/android/view/camera/CameraPreviewView;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    invoke-direct {p0, p1}, Lorg/ros/android/view/camera/CameraPreviewView;->init(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    invoke-direct {p0, p1}, Lorg/ros/android/view/camera/CameraPreviewView;->init(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/camera/CameraPreviewView;)Landroid/hardware/Camera;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/camera/CameraPreviewView;

    .line 41
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/android/view/camera/CameraPreviewView;)[B
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/camera/CameraPreviewView;

    .line 41
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewBuffer:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/ros/android/view/camera/CameraPreviewView;)Lorg/ros/android/view/camera/RawImageListener;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/camera/CameraPreviewView;

    .line 41
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->rawImageListener:Lorg/ros/android/view/camera/RawImageListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/ros/android/view/camera/CameraPreviewView;)Landroid/hardware/Camera$Size;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/camera/CameraPreviewView;

    .line 41
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .registers 20
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 152
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move/from16 v0, p3

    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move/from16 v1, p2

    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 154
    .local v2, "targetRatio":D
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 155
    .local v4, "minimumDifference":D
    const/4 v6, 0x0

    .line 158
    .local v6, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 159
    .local v8, "size":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-double v9, v9

    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-double v11, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    .line 160
    .local v9, "ratio":D
    sub-double v11, v9, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpl-double v15, v11, v13

    if-lez v15, :cond_43

    .line 161
    goto :goto_1a

    .line 163
    :cond_43
    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v13, v11, v4

    if-gez v13, :cond_58

    .line 164
    move-object v6, v8

    .line 165
    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    .line 167
    .end local v8    # "size":Landroid/hardware/Camera$Size;
    .end local v9    # "ratio":D
    :cond_58
    goto :goto_1a

    .line 170
    :cond_59
    if-nez v6, :cond_86

    .line 171
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 172
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_64
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 173
    .restart local v8    # "size":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    cmpg-double v11, v9, v4

    if-gez v11, :cond_85

    .line 174
    move-object v6, v8

    .line 175
    iget v9, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v4, v9

    .line 177
    .end local v8    # "size":Landroid/hardware/Camera$Size;
    :cond_85
    goto :goto_64

    .line 180
    :cond_86
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-object v6
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {p0, v0}, Lorg/ros/android/view/camera/CameraPreviewView;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/camera/CameraPreviewView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 90
    iget-object v1, p0, Lorg/ros/android/view/camera/CameraPreviewView;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v2, Lorg/ros/android/view/camera/CameraPreviewView$SurfaceHolderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/ros/android/view/camera/CameraPreviewView$SurfaceHolderCallback;-><init>(Lorg/ros/android/view/camera/CameraPreviewView;Lorg/ros/android/view/camera/CameraPreviewView$1;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 91
    iget-object v1, p0, Lorg/ros/android/view/camera/CameraPreviewView;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 92
    new-instance v1, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;

    invoke-direct {v1, p0, v3}, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;-><init>(Lorg/ros/android/view/camera/CameraPreviewView;Lorg/ros/android/view/camera/CameraPreviewView$1;)V

    iput-object v1, p0, Lorg/ros/android/view/camera/CameraPreviewView;->bufferingPreviewCallback:Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;

    .line 93
    return-void
.end method

.method private setupBufferingPreviewCallback()V
    .registers 5

    .line 185
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    .line 186
    .local v0, "format":I
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    .line 187
    .local v1, "bits_per_pixel":I
    iget-object v2, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object v3, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    mul-int v2, v2, v3

    mul-int v2, v2, v1

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewBuffer:[B

    .line 188
    iget-object v2, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    iget-object v3, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewBuffer:[B

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 189
    iget-object v2, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    iget-object v3, p0, Lorg/ros/android/view/camera/CameraPreviewView;->bufferingPreviewCallback:Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 190
    return-void
.end method

.method private setupCameraParameters()V
    .registers 5

    .line 143
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 144
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {p0}, Lorg/ros/android/view/camera/CameraPreviewView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/ros/android/view/camera/CameraPreviewView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/ros/android/view/camera/CameraPreviewView;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    .line 146
    iget-object v2, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 147
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 148
    iget-object v2, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 149
    return-void
.end method


# virtual methods
.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .registers 2

    .line 125
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 194
    if-eqz p1, :cond_42

    invoke-virtual {p0}, Lorg/ros/android/view/camera/CameraPreviewView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_42

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ros/android/view/camera/CameraPreviewView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 196
    .local v1, "child":Landroid/view/View;
    sub-int v2, p4, p2

    .line 197
    .local v2, "width":I
    sub-int v3, p5, p3

    .line 199
    .local v3, "height":I
    move v4, v2

    .line 200
    .local v4, "previewWidth":I
    move v5, v3

    .line 201
    .local v5, "previewHeight":I
    iget-object v6, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    if-eqz v6, :cond_1f

    .line 202
    iget-object v6, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    .line 203
    iget-object v6, p0, Lorg/ros/android/view/camera/CameraPreviewView;->previewSize:Landroid/hardware/Camera$Size;

    iget v5, v6, Landroid/hardware/Camera$Size;->height:I

    .line 207
    :cond_1f
    mul-int v6, v2, v5

    mul-int v7, v3, v4

    if-le v6, v7, :cond_34

    .line 208
    mul-int v6, v4, v3

    div-int/2addr v6, v5

    .line 209
    .local v6, "scaledChildWidth":I
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    add-int v8, v2, v6

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v1, v7, v0, v8, v3}, Landroid/view/View;->layout(IIII)V

    .line 210
    .end local v6    # "scaledChildWidth":I
    goto :goto_42

    .line 211
    :cond_34
    mul-int v6, v5, v2

    div-int/2addr v6, v4

    .line 212
    .local v6, "scaledChildHeight":I
    sub-int v7, v3, v6

    div-int/lit8 v7, v7, 0x2

    add-int v8, v3, v6

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v1, v0, v7, v2, v8}, Landroid/view/View;->layout(IIII)V

    .line 215
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "previewWidth":I
    .end local v5    # "previewHeight":I
    .end local v6    # "scaledChildHeight":I
    :cond_42
    :goto_42
    return-void
.end method

.method public releaseCamera()V
    .registers 3

    .line 111
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    .line 112
    return-void

    .line 114
    :cond_5
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 115
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 116
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 117
    iput-object v1, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    .line 118
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .registers 4
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 129
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Lorg/ros/android/view/camera/CameraPreviewView;->camera:Landroid/hardware/Camera;

    .line 131
    invoke-direct {p0}, Lorg/ros/android/view/camera/CameraPreviewView;->setupCameraParameters()V

    .line 132
    invoke-direct {p0}, Lorg/ros/android/view/camera/CameraPreviewView;->setupBufferingPreviewCallback()V

    .line 133
    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 136
    :try_start_e
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_15

    .line 139
    nop

    .line 140
    return-void

    .line 137
    :catch_15
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setRawImageListener(Lorg/ros/android/view/camera/RawImageListener;)V
    .registers 2
    .param p1, "rawImageListener"    # Lorg/ros/android/view/camera/RawImageListener;

    .line 121
    iput-object p1, p0, Lorg/ros/android/view/camera/CameraPreviewView;->rawImageListener:Lorg/ros/android/view/camera/RawImageListener;

    .line 122
    return-void
.end method
