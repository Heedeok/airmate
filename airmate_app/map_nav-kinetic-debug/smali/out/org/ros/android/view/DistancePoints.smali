.class Lorg/ros/android/view/DistancePoints;
.super Ljava/lang/Object;
.source "DistancePoints.java"


# instance fields
.field private rangeVertexArray:[F

.field private rangeVertexBuffer:Ljava/nio/FloatBuffer;

.field private rangeVertexByteBuffer:Ljava/nio/ByteBuffer;

.field private rangeVertexCount:I

.field private rangeVertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private referenceVertexBuffer:Ljava/nio/FloatBuffer;

.field private robotVertexBuffer:Ljava/nio/FloatBuffer;

.field private robotVertexCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexArray:[F

    .line 48
    invoke-direct {p0}, Lorg/ros/android/view/DistancePoints;->initRobot()V

    .line 49
    invoke-direct {p0}, Lorg/ros/android/view/DistancePoints;->initReferenceMarker()V

    .line 50
    return-void
.end method

.method private initRangeVertexBuffer()V
    .registers 4

    .line 98
    iget-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    .line 99
    .local v0, "requiredVertexByteBufferCapacity":I
    iget-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_25

    .line 101
    :cond_16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 102
    iget-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 104
    :cond_25
    iget-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexBuffer:Ljava/nio/FloatBuffer;

    .line 105
    return-void
.end method

.method private initReferenceMarker()V
    .registers 11

    .line 200
    const/16 v0, 0x1e

    new-array v0, v0, [F

    .line 201
    .local v0, "referenceVertices":[F
    const/high16 v1, -0x40000000    # -2.0f

    .line 202
    .local v1, "yOffset":F
    const/high16 v2, 0x3e800000    # 0.25f

    .line 204
    .local v2, "yDelta":F
    const/4 v3, 0x0

    const/high16 v4, -0x40400000    # -1.5f

    aput v4, v0, v3

    .line 205
    const/4 v5, 0x1

    aput v1, v0, v5

    .line 206
    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v5, v0, v6

    .line 208
    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v7, 0x3

    aput v6, v0, v7

    .line 209
    const/4 v7, 0x4

    aput v1, v0, v7

    .line 210
    const/4 v7, 0x5

    aput v5, v0, v7

    .line 212
    const/4 v7, 0x6

    aput v4, v0, v7

    .line 213
    sub-float v7, v1, v2

    const/4 v8, 0x7

    aput v7, v0, v8

    .line 214
    const/16 v7, 0x8

    aput v5, v0, v7

    .line 216
    const/16 v8, 0x9

    aput v4, v0, v8

    .line 217
    add-float v4, v1, v2

    const/16 v8, 0xa

    aput v4, v0, v8

    .line 218
    const/16 v4, 0xb

    aput v5, v0, v4

    .line 220
    const/high16 v4, -0x41000000    # -0.5f

    const/16 v8, 0xc

    aput v4, v0, v8

    .line 221
    sub-float v8, v1, v2

    const/16 v9, 0xd

    aput v8, v0, v9

    .line 222
    const/16 v8, 0xe

    aput v5, v0, v8

    .line 224
    const/16 v8, 0xf

    aput v4, v0, v8

    .line 225
    add-float v4, v1, v2

    const/16 v8, 0x10

    aput v4, v0, v8

    .line 226
    const/16 v4, 0x11

    aput v5, v0, v4

    .line 228
    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v8, 0x12

    aput v4, v0, v8

    .line 229
    sub-float v8, v1, v2

    const/16 v9, 0x13

    aput v8, v0, v9

    .line 230
    const/16 v8, 0x14

    aput v5, v0, v8

    .line 232
    const/16 v8, 0x15

    aput v4, v0, v8

    .line 233
    add-float v4, v1, v2

    const/16 v8, 0x16

    aput v4, v0, v8

    .line 234
    const/16 v4, 0x17

    aput v5, v0, v4

    .line 236
    const/16 v4, 0x18

    aput v6, v0, v4

    .line 237
    sub-float v4, v1, v2

    const/16 v8, 0x19

    aput v4, v0, v8

    .line 238
    const/16 v4, 0x1a

    aput v5, v0, v4

    .line 240
    const/16 v4, 0x1b

    aput v6, v0, v4

    .line 241
    add-float v4, v1, v2

    const/16 v6, 0x1c

    aput v4, v0, v6

    .line 242
    const/16 v4, 0x1d

    aput v5, v0, v4

    .line 243
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x20

    div-int/2addr v4, v7

    .line 244
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 245
    .local v4, "referenceVertexByteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/ros/android/view/DistancePoints;->referenceVertexBuffer:Ljava/nio/FloatBuffer;

    .line 247
    iget-object v5, p0, Lorg/ros/android/view/DistancePoints;->referenceVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 248
    iget-object v5, p0, Lorg/ros/android/view/DistancePoints;->referenceVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    return-void
.end method

.method private initRobot()V
    .registers 9

    .line 168
    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 175
    .local v0, "robotVertices":[F
    const/4 v1, 0x0

    const v2, 0x3e290ff9    # 0.1651f

    aput v2, v0, v1

    .line 176
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 177
    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v0, v4

    .line 179
    const/4 v4, 0x3

    aput v2, v0, v4

    .line 180
    const v5, -0x41d6f007    # -0.1651f

    const/4 v6, 0x4

    aput v5, v0, v6

    .line 181
    const/4 v6, 0x5

    aput v3, v0, v6

    .line 183
    const/4 v6, 0x6

    aput v5, v0, v6

    .line 184
    const/4 v6, 0x7

    aput v5, v0, v6

    .line 185
    const/16 v6, 0x8

    aput v3, v0, v6

    .line 187
    const/16 v7, 0x9

    aput v5, v0, v7

    .line 188
    const/16 v5, 0xa

    aput v2, v0, v5

    .line 189
    const/16 v2, 0xb

    aput v3, v0, v2

    .line 190
    array-length v2, v0

    div-int/2addr v2, v4

    iput v2, p0, Lorg/ros/android/view/DistancePoints;->robotVertexCount:I

    .line 192
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x20

    div-int/2addr v2, v6

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 193
    .local v2, "vertexByteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 194
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/ros/android/view/DistancePoints;->robotVertexBuffer:Ljava/nio/FloatBuffer;

    .line 195
    iget-object v3, p0, Lorg/ros/android/view/DistancePoints;->robotVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 196
    iget-object v3, p0, Lorg/ros/android/view/DistancePoints;->robotVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    return-void
.end method


# virtual methods
.method public drawRange(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 116
    const/16 v0, 0xb44

    :try_start_2
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 117
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 118
    const/4 v0, 0x3

    const/16 v1, 0x1406

    iget-object v2, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 119
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 120
    const v1, 0x3f333333    # 0.7f

    const v2, 0x3eb33333    # 0.35f

    invoke-interface {p1, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 122
    const/4 v1, 0x6

    iget v2, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexCount:I

    invoke-interface {p1, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 123
    const/high16 v1, 0x40400000    # 3.0f

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 124
    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-interface {p1, v1, v4, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 126
    iget v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 127
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_42} :catch_43

    .line 130
    goto :goto_44

    .line 128
    :catch_43
    move-exception v0

    .line 131
    :goto_44
    return-void
.end method

.method public drawReferenceMarker(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 140
    const/16 v0, 0xb20

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 141
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 142
    iget-object v2, p0, Lorg/ros/android/view/DistancePoints;->referenceVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    invoke-interface {p1, v4, v5, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 143
    const v2, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1, v2, v2, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 146
    const/4 v2, 0x1

    const/16 v4, 0xa

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 147
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 148
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 149
    return-void
.end method

.method public drawRobot(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 158
    const/16 v0, 0xb20

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 159
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 160
    iget-object v2, p0, Lorg/ros/android/view/DistancePoints;->robotVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    invoke-interface {p1, v4, v5, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 161
    const/4 v2, 0x0

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {p1, v4, v2, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 162
    iget v2, p0, Lorg/ros/android/view/DistancePoints;->robotVertexCount:I

    const/4 v4, 0x2

    invoke-interface {p1, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 163
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 164
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 165
    return-void
.end method

.method public updateRange(Ljava/util/List;FFFF)V
    .registers 14
    .param p2, "maxRange"    # F
    .param p3, "minRange"    # F
    .param p4, "minimumTheta"    # F
    .param p5, "thetaIncrement"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FFFF)V"
        }
    .end annotation

    .line 59
    .local p1, "range":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    float-to-double v0, p4

    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float p4, v0

    .line 65
    iget-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 72
    .local v2, "rangeValue":F
    cmpg-float v3, v2, p2

    if-gez v3, :cond_7f

    cmpl-float v3, v2, p3

    if-lez v3, :cond_7f

    .line 74
    iget-object v3, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    float-to-double v4, v2

    float-to-double v6, p4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v3, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    float-to-double v4, v2

    float-to-double v6, p4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v3, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_7f
    add-float/2addr p4, p5

    .line 82
    .end local v2    # "rangeValue":F
    goto :goto_34

    .line 83
    :cond_81
    iget-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexArray:[F

    array-length v0, v0

    iget-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_96

    .line 84
    iget-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexArray:[F

    .line 87
    :cond_96
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_98
    iget-object v2, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b3

    .line 88
    iget-object v2, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexArray:[F

    iget-object v3, p0, Lorg/ros/android/view/DistancePoints;->rangeVertices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 90
    .end local v1    # "i":I
    :cond_b3
    iget-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexArray:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexCount:I

    .line 92
    invoke-direct {p0}, Lorg/ros/android/view/DistancePoints;->initRangeVertexBuffer()V

    .line 93
    iget-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexArray:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 94
    iget-object v1, p0, Lorg/ros/android/view/DistancePoints;->rangeVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    return-void
.end method
