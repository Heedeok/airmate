.class public Lorg/ros/android/view/visualization/TextureBitmap;
.super Ljava/lang/Object;
.source "TextureBitmap.java"

# interfaces
.implements Lorg/ros/android/view/visualization/OpenGlDrawable;


# static fields
.field public static final HEIGHT:I = 0x400

.field public static final STRIDE:I = 0x400


# instance fields
.field private bitmapBack:Landroid/graphics/Bitmap;

.field private bitmapFront:Landroid/graphics/Bitmap;

.field private handle:[I

.field private final mutex:Ljava/lang/Object;

.field private origin:Lorg/ros/rosjava_geometry/Transform;

.field private final pixels:[I

.field private reload:Z

.field private scaledHeight:D

.field private scaledWidth:D

.field private final surfaceVertices:Ljava/nio/FloatBuffer;

.field private final textureVertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/high16 v0, 0x100000

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->pixels:[I

    .line 64
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_40

    invoke-static {v0}, Lorg/ros/android/view/visualization/Vertices;->toFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->surfaceVertices:Ljava/nio/FloatBuffer;

    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_5c

    invoke-static {v0}, Lorg/ros/android/view/visualization/Vertices;->toFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->textureVertices:Ljava/nio/FloatBuffer;

    .line 78
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x400

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->bitmapFront:Landroid/graphics/Bitmap;

    .line 79
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->bitmapBack:Landroid/graphics/Bitmap;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->mutex:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->reload:Z

    .line 82
    return-void

    :array_40
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5c
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private bind(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 142
    iget-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->handle:[I

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 143
    const/4 v0, 0x1

    new-array v2, v0, [I

    iput-object v2, p0, Lorg/ros/android/view/visualization/TextureBitmap;->handle:[I

    .line 144
    iget-object v2, p0, Lorg/ros/android/view/visualization/TextureBitmap;->handle:[I

    invoke-interface {p1, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 145
    iput-boolean v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->reload:Z

    .line 147
    :cond_11
    iget-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->handle:[I

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 148
    const/16 v0, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-interface {p1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 149
    const/16 v0, 0x2800

    invoke-interface {p1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 150
    iget-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_29
    iget-boolean v3, p0, Lorg/ros/android/view/visualization/TextureBitmap;->reload:Z

    if-eqz v3, :cond_34

    .line 152
    iget-object v3, p0, Lorg/ros/android/view/visualization/TextureBitmap;->bitmapFront:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v3, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 153
    iput-boolean v1, p0, Lorg/ros/android/view/visualization/TextureBitmap;->reload:Z

    .line 155
    :cond_34
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private update(Lorg/ros/rosjava_geometry/Transform;IFI)V
    .registers 15
    .param p1, "origin"    # Lorg/ros/rosjava_geometry/Transform;
    .param p2, "stride"    # I
    .param p3, "resolution"    # F
    .param p4, "fillColor"    # I

    .line 129
    iput-object p1, p0, Lorg/ros/android/view/visualization/TextureBitmap;->origin:Lorg/ros/rosjava_geometry/Transform;

    .line 130
    const/high16 v0, 0x44800000    # 1024.0f

    mul-float v1, p3, v0

    float-to-double v1, v1

    iput-wide v1, p0, Lorg/ros/android/view/visualization/TextureBitmap;->scaledWidth:D

    .line 131
    mul-float v0, v0, p3

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->scaledHeight:D

    .line 132
    iget-object v2, p0, Lorg/ros/android/view/visualization/TextureBitmap;->bitmapBack:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/ros/android/view/visualization/TextureBitmap;->pixels:[I

    const/4 v4, 0x0

    const/16 v5, 0x400

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x400

    const/16 v9, 0x400

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 133
    iget-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_21
    iget-object v1, p0, Lorg/ros/android/view/visualization/TextureBitmap;->bitmapFront:Landroid/graphics/Bitmap;

    .line 135
    .local v1, "tmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lorg/ros/android/view/visualization/TextureBitmap;->bitmapBack:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lorg/ros/android/view/visualization/TextureBitmap;->bitmapFront:Landroid/graphics/Bitmap;

    .line 136
    iput-object v1, p0, Lorg/ros/android/view/visualization/TextureBitmap;->bitmapBack:Landroid/graphics/Bitmap;

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/ros/android/view/visualization/TextureBitmap;->reload:Z

    .line 138
    .end local v1    # "tmp":Landroid/graphics/Bitmap;
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2e

    throw v1
.end method


# virtual methods
.method public clearHandle()V
    .registers 2

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/android/view/visualization/TextureBitmap;->handle:[I

    .line 126
    return-void
.end method

.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 10
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 160
    const/16 v0, 0xde1

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 161
    invoke-direct {p0, p2}, Lorg/ros/android/view/visualization/TextureBitmap;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 162
    invoke-interface {p2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 163
    iget-object v1, p0, Lorg/ros/android/view/visualization/TextureBitmap;->origin:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {p2, v1}, Lorg/ros/android/view/visualization/OpenGlTransform;->apply(Ljavax/microedition/khronos/opengles/GL10;Lorg/ros/rosjava_geometry/Transform;)V

    .line 164
    iget-wide v1, p0, Lorg/ros/android/view/visualization/TextureBitmap;->scaledWidth:D

    double-to-float v1, v1

    iget-wide v2, p0, Lorg/ros/android/view/visualization/TextureBitmap;->scaledHeight:D

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p2, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 165
    invoke-interface {p2, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 166
    const v1, 0x8074

    invoke-interface {p2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 167
    const v2, 0x8078

    invoke-interface {p2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 168
    iget-object v3, p0, Lorg/ros/android/view/visualization/TextureBitmap;->surfaceVertices:Ljava/nio/FloatBuffer;

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-interface {p2, v6, v4, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 169
    iget-object v3, p0, Lorg/ros/android/view/visualization/TextureBitmap;->textureVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    invoke-interface {p2, v6, v4, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 170
    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-interface {p2, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 171
    invoke-interface {p2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 172
    invoke-interface {p2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 173
    invoke-interface {p2}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 174
    invoke-interface {p2, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 175
    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 176
    return-void
.end method

.method public updateFromPixelArray([IIFLorg/ros/rosjava_geometry/Transform;I)V
    .registers 15
    .param p1, "pixels"    # [I
    .param p2, "stride"    # I
    .param p3, "resolution"    # F
    .param p4, "origin"    # Lorg/ros/rosjava_geometry/Transform;
    .param p5, "fillColor"    # I

    .line 86
    array-length v0, p1

    rem-int/2addr v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 87
    array-length v0, p1

    div-int/2addr v0, p2

    .line 88
    .local v0, "height":I
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_e
    const/16 v3, 0x400

    if-ge v2, v3, :cond_30

    .line 89
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_13
    if-ge v4, v3, :cond_2d

    .line 93
    mul-int v5, v2, p2

    add-int/2addr v5, v4

    .line 94
    .local v5, "sourceIndex":I
    mul-int/lit16 v6, v2, 0x400

    add-int/2addr v6, v4

    .line 95
    .local v6, "targetIndex":I
    if-ge v4, p2, :cond_26

    if-ge v2, v0, :cond_26

    .line 96
    iget-object v7, p0, Lorg/ros/android/view/visualization/TextureBitmap;->pixels:[I

    aget v8, p1, v5

    aput v8, v7, v6

    goto :goto_2a

    .line 98
    :cond_26
    iget-object v7, p0, Lorg/ros/android/view/visualization/TextureBitmap;->pixels:[I

    aput p5, v7, v6

    .line 89
    .end local v5    # "sourceIndex":I
    .end local v6    # "targetIndex":I
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 88
    .end local v4    # "x":I
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 102
    .end local v2    # "y":I
    :cond_30
    invoke-direct {p0, p4, p2, p3, p5}, Lorg/ros/android/view/visualization/TextureBitmap;->update(Lorg/ros/rosjava_geometry/Transform;IFI)V

    .line 103
    return-void
.end method

.method public updateFromPixelBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;IFLorg/ros/rosjava_geometry/Transform;I)V
    .registers 13
    .param p1, "pixels"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "stride"    # I
    .param p3, "resolution"    # F
    .param p4, "origin"    # Lorg/ros/rosjava_geometry/Transform;
    .param p5, "fillColor"    # I

    .line 107
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    .local v0, "y":I
    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "y":I
    :goto_a
    const/16 v3, 0x400

    if-ge v2, v3, :cond_30

    .line 110
    move v4, v0

    const/4 v0, 0x0

    .local v0, "x":I
    .local v4, "i":I
    :goto_10
    if-ge v0, v3, :cond_2c

    .line 114
    if-ge v0, p2, :cond_23

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 115
    iget-object v5, p0, Lorg/ros/android/view/visualization/TextureBitmap;->pixels:[I

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v6

    aput v6, v5, v4

    goto :goto_27

    .line 117
    :cond_23
    iget-object v5, p0, Lorg/ros/android/view/visualization/TextureBitmap;->pixels:[I

    aput p5, v5, v4

    .line 110
    :goto_27
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 109
    .end local v0    # "x":I
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_a

    .line 121
    .end local v2    # "y":I
    .end local v4    # "i":I
    :cond_30
    invoke-direct {p0, p4, p2, p3, p5}, Lorg/ros/android/view/visualization/TextureBitmap;->update(Lorg/ros/rosjava_geometry/Transform;IFI)V

    .line 122
    return-void
.end method
