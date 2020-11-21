.class public Luk/co/blogspot/fractiousg/texample/Vertices;
.super Ljava/lang/Object;
.source "Vertices.java"


# static fields
.field static final COLOR_CNT:I = 0x4

.field static final INDEX_SIZE:I = 0x2

.field static final NORMAL_CNT:I = 0x3

.field static final POSITION_CNT_2D:I = 0x2

.field static final POSITION_CNT_3D:I = 0x3

.field static final TEXCOORD_CNT:I = 0x2


# instance fields
.field final gl:Ljavax/microedition/khronos/opengles/GL10;

.field final hasColor:Z

.field final hasNormals:Z

.field final hasTexCoords:Z

.field final indices:Ljava/nio/ShortBuffer;

.field public numIndices:I

.field public numVertices:I

.field public final positionCnt:I

.field final tmpBuffer:[I

.field public final vertexSize:I

.field public final vertexStride:I

.field final vertices:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;IIZZZ)V
    .registers 15
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "maxVertices"    # I
    .param p3, "maxIndices"    # I
    .param p4, "hasColor"    # Z
    .param p5, "hasTexCoords"    # Z
    .param p6, "hasNormals"    # Z

    .line 47
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Luk/co/blogspot/fractiousg/texample/Vertices;-><init>(Ljavax/microedition/khronos/opengles/GL10;IIZZZZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;IIZZZZ)V
    .registers 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "maxVertices"    # I
    .param p3, "maxIndices"    # I
    .param p4, "hasColor"    # Z
    .param p5, "hasTexCoords"    # Z
    .param p6, "hasNormals"    # Z
    .param p7, "use3D"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 51
    iput-boolean p4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    .line 52
    iput-boolean p5, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasTexCoords:Z

    .line 53
    iput-boolean p6, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasNormals:Z

    .line 54
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p7, :cond_11

    const/4 v2, 0x3

    goto :goto_12

    :cond_11
    const/4 v2, 0x2

    :goto_12
    iput v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    .line 55
    iget v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p4, :cond_1c

    const/4 v5, 0x4

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    :goto_1d
    add-int/2addr v2, v5

    if-eqz p5, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    add-int/2addr v2, v1

    if-eqz p6, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    add-int/2addr v2, v0

    iput v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    .line 56
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    .line 58
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    mul-int v0, v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    .line 62
    if-lez p3, :cond_5b

    .line 63
    mul-int/lit8 v1, p3, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    goto :goto_5e

    .line 68
    :cond_5b
    const/4 v1, 0x0

    iput-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    .line 70
    :goto_5e
    iput v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->numVertices:I

    .line 71
    iput v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->numIndices:I

    .line 73
    iget v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    mul-int v1, v1, p2

    div-int/2addr v1, v3

    new-array v1, v1, [I

    iput-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->tmpBuffer:[I

    .line 74
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 8

    .line 114
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 115
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    iget v3, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    iget-object v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    const/16 v5, 0x1406

    invoke-interface {v0, v2, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 118
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_38

    .line 119
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8076

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 120
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v3, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v3, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    iget-object v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 124
    :cond_38
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasTexCoords:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_5d

    .line 125
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v4, 0x8078

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 126
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    iget-boolean v6, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    if-eqz v6, :cond_4f

    const/4 v6, 0x4

    goto :goto_50

    :cond_4f
    const/4 v6, 0x0

    :goto_50
    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v5, v4, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 130
    :cond_5d
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasNormals:Z

    if-eqz v0, :cond_87

    .line 131
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v4, 0x8075

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 132
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    iget-boolean v6, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    if-eqz v6, :cond_72

    goto :goto_73

    :cond_72
    const/4 v2, 0x0

    :goto_73
    add-int/2addr v4, v2

    iget-boolean v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasTexCoords:Z

    if-eqz v2, :cond_7a

    const/4 v1, 0x2

    nop

    :cond_7a
    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    iget-object v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v5, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 135
    :cond_87
    return-void
.end method

.method public draw(III)V
    .registers 7
    .param p1, "primitiveType"    # I
    .param p2, "offset"    # I
    .param p3, "numVertices"    # I

    .line 145
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_13

    .line 146
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1403

    iget-object v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {v0, p1, p3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_18

    .line 150
    :cond_13
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 152
    :goto_18
    return-void
.end method

.method public drawFull(III)V
    .registers 12
    .param p1, "primitiveType"    # I
    .param p2, "offset"    # I
    .param p3, "numVertices"    # I

    .line 178
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 179
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    iget v3, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    iget-object v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    const/16 v5, 0x1406

    invoke-interface {v0, v2, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 182
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    const/4 v2, 0x4

    const v3, 0x8076

    if-eqz v0, :cond_38

    .line 183
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 184
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v5, v4, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 188
    :cond_38
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasTexCoords:Z

    const v4, 0x8078

    if-eqz v0, :cond_5c

    .line 189
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 190
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v6, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    iget-boolean v7, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    if-eqz v7, :cond_4e

    const/4 v1, 0x4

    nop

    :cond_4e
    add-int/2addr v6, v1

    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    iget v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexSize:I

    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v5, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 194
    :cond_5c
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_6f

    .line 195
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1403

    iget-object v2, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {v0, p1, p3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_74

    .line 199
    :cond_6f
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 202
    :goto_74
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasTexCoords:Z

    if-eqz v0, :cond_7d

    .line 203
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 205
    :cond_7d
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    if-eqz v0, :cond_86

    .line 206
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 207
    :cond_86
    return-void
.end method

.method public setIndices([SII)V
    .registers 5
    .param p1, "indices"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 102
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 103
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 104
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 105
    iput p3, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->numIndices:I

    .line 106
    return-void
.end method

.method public setVertices([FII)V
    .registers 10
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 85
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 86
    add-int v0, p2, p3

    .line 87
    .local v0, "last":I
    move v1, p2

    .local v1, "i":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .local v1, "j":I
    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_1c

    .line 88
    iget-object v4, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->tmpBuffer:[I

    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    aput v5, v4, v1

    .line 87
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 89
    .end local v1    # "j":I
    .end local v3    # "i":I
    :cond_1c
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget-object v3, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->tmpBuffer:[I

    invoke-virtual {v1, v3, v2, p3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 90
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 91
    iget v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    div-int v1, p3, v1

    iput v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->numVertices:I

    .line 93
    return-void
.end method

.method setVtxColor(IF)V
    .registers 7
    .param p1, "vtxIdx"    # I
    .param p2, "a"    # F

    .line 243
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    mul-int v0, v0, p1

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    add-int/2addr v0, v1

    .line 244
    .local v0, "index":I
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x3

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 245
    return-void
.end method

.method setVtxColor(IFFF)V
    .registers 9
    .param p1, "vtxIdx"    # I
    .param p2, "r"    # F
    .param p3, "g"    # F
    .param p4, "b"    # F

    .line 237
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    mul-int v0, v0, p1

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    add-int/2addr v0, v1

    .line 238
    .local v0, "index":I
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 239
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 240
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 241
    return-void
.end method

.method setVtxColor(IFFFF)V
    .registers 10
    .param p1, "vtxIdx"    # I
    .param p2, "r"    # F
    .param p3, "g"    # F
    .param p4, "b"    # F
    .param p5, "a"    # F

    .line 230
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    mul-int v0, v0, p1

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    add-int/2addr v0, v1

    .line 231
    .local v0, "index":I
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 232
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 233
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 234
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x3

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 235
    return-void
.end method

.method setVtxNormal(IFFF)V
    .registers 9
    .param p1, "vtxIdx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 252
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    mul-int v0, v0, p1

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const/4 v1, 0x4

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    add-int/2addr v0, v1

    iget-boolean v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasTexCoords:Z

    if-eqz v1, :cond_16

    const/4 v2, 0x2

    nop

    :cond_16
    add-int/2addr v0, v2

    .line 253
    .local v0, "index":I
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 254
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 255
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 256
    return-void
.end method

.method setVtxPosition(IFF)V
    .registers 8
    .param p1, "vtxIdx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 219
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    mul-int v0, v0, p1

    .line 220
    .local v0, "index":I
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 221
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 222
    return-void
.end method

.method setVtxPosition(IFFF)V
    .registers 9
    .param p1, "vtxIdx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 224
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    mul-int v0, v0, p1

    .line 225
    .local v0, "index":I
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 226
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 227
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 228
    return-void
.end method

.method setVtxTexCoords(IFF)V
    .registers 8
    .param p1, "vtxIdx"    # I
    .param p2, "u"    # F
    .param p3, "v"    # F

    .line 247
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertexStride:I

    mul-int v0, v0, p1

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->positionCnt:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    .line 248
    .local v0, "index":I
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 249
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 250
    return-void
.end method

.method public unbind()V
    .registers 3

    .line 160
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasColor:Z

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 163
    :cond_c
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasTexCoords:Z

    if-eqz v0, :cond_18

    .line 164
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 166
    :cond_18
    iget-boolean v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->hasNormals:Z

    if-eqz v0, :cond_24

    .line 167
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8075

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 168
    :cond_24
    return-void
.end method
