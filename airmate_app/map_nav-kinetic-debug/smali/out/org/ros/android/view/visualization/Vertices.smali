.class public Lorg/ros/android/view/visualization/Vertices;
.super Ljava/lang/Object;
.source "Vertices.java"


# static fields
.field private static final FLOAT_BYTE_SIZE:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static allocateBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "size"    # I

    .line 39
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static countVertices(Ljava/nio/FloatBuffer;I)I
    .registers 5
    .param p0, "vertices"    # Ljava/nio/FloatBuffer;
    .param p1, "size"    # I

    .line 96
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    rem-int/2addr v0, p1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of vertices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    div-int/2addr v0, p1

    return v0
.end method

.method public static drawLineLoop(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;F)V
    .registers 8
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "vertices"    # Ljava/nio/FloatBuffer;
    .param p2, "color"    # Lorg/ros/android/view/visualization/Color;
    .param p3, "width"    # F

    .line 73
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->mark()Ljava/nio/Buffer;

    .line 74
    invoke-virtual {p2, p0}, Lorg/ros/android/view/visualization/Color;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 75
    invoke-interface {p0, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 76
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 77
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0x1406

    invoke-interface {p0, v2, v3, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 78
    invoke-static {p1, v2}, Lorg/ros/android/view/visualization/Vertices;->countVertices(Ljava/nio/FloatBuffer;I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {p0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 79
    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 80
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->reset()Ljava/nio/Buffer;

    .line 81
    return-void
.end method

.method public static drawLines(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;F)V
    .registers 8
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "vertices"    # Ljava/nio/FloatBuffer;
    .param p2, "color"    # Lorg/ros/android/view/visualization/Color;
    .param p3, "width"    # F

    .line 84
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->mark()Ljava/nio/Buffer;

    .line 85
    invoke-virtual {p2, p0}, Lorg/ros/android/view/visualization/Color;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 86
    invoke-interface {p0, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 87
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 88
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0x1406

    invoke-interface {p0, v2, v3, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 89
    invoke-static {p1, v2}, Lorg/ros/android/view/visualization/Vertices;->countVertices(Ljava/nio/FloatBuffer;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 90
    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 91
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->reset()Ljava/nio/Buffer;

    .line 92
    return-void
.end method

.method public static drawPoints(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;F)V
    .registers 8
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "vertices"    # Ljava/nio/FloatBuffer;
    .param p2, "color"    # Lorg/ros/android/view/visualization/Color;
    .param p3, "size"    # F

    .line 52
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->mark()Ljava/nio/Buffer;

    .line 53
    invoke-virtual {p2, p0}, Lorg/ros/android/view/visualization/Color;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 54
    invoke-interface {p0, p3}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 55
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 56
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x1406

    invoke-interface {p0, v1, v3, v2, p1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 57
    invoke-static {p1, v1}, Lorg/ros/android/view/visualization/Vertices;->countVertices(Ljava/nio/FloatBuffer;I)I

    move-result v1

    invoke-interface {p0, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 58
    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 59
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->reset()Ljava/nio/Buffer;

    .line 60
    return-void
.end method

.method public static drawTriangleFan(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;)V
    .registers 7
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "vertices"    # Ljava/nio/FloatBuffer;
    .param p2, "color"    # Lorg/ros/android/view/visualization/Color;

    .line 63
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->mark()Ljava/nio/Buffer;

    .line 64
    invoke-virtual {p2, p0}, Lorg/ros/android/view/visualization/Color;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 65
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0x1406

    invoke-interface {p0, v2, v3, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 67
    invoke-static {p1, v2}, Lorg/ros/android/view/visualization/Vertices;->countVertices(Ljava/nio/FloatBuffer;I)I

    move-result v2

    const/4 v3, 0x6

    invoke-interface {p0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 68
    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 69
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->reset()Ljava/nio/Buffer;

    .line 70
    return-void
.end method

.method public static toFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "floats"    # [F

    .line 45
    array-length v0, p0

    invoke-static {v0}, Lorg/ros/android/view/visualization/Vertices;->allocateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 46
    .local v0, "floatBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    return-object v0
.end method
