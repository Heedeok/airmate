.class public Luk/co/blogspot/fractiousg/texample/SpriteBatch;
.super Ljava/lang/Object;
.source "SpriteBatch.java"


# static fields
.field static final INDICES_PER_SPRITE:I = 0x6

.field static final VERTEX_SIZE:I = 0x4

.field static final VERTICES_PER_SPRITE:I = 0x4


# instance fields
.field bufferIndex:I

.field gl:Ljavax/microedition/khronos/opengles/GL10;

.field maxSprites:I

.field numSprites:I

.field vertexBuffer:[F

.field vertices:Luk/co/blogspot/fractiousg/texample/Vertices;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;I)V
    .registers 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "maxSprites"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 26
    mul-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    .line 27
    new-instance v0, Luk/co/blogspot/fractiousg/texample/Vertices;

    mul-int/lit8 v3, p2, 0x4

    mul-int/lit8 v4, p2, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Luk/co/blogspot/fractiousg/texample/Vertices;-><init>(Ljavax/microedition/khronos/opengles/GL10;IIZZZ)V

    iput-object v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertices:Luk/co/blogspot/fractiousg/texample/Vertices;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    .line 29
    iput p2, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->maxSprites:I

    .line 30
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->numSprites:I

    .line 32
    mul-int/lit8 v1, p2, 0x6

    new-array v1, v1, [S

    .line 33
    .local v1, "indices":[S
    array-length v2, v1

    .line 34
    .local v2, "len":I
    const/4 v3, 0x0

    .line 35
    .local v3, "j":S
    move v4, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v4, "j":S
    :goto_2c
    if-ge v3, v2, :cond_5e

    .line 36
    add-int/lit8 v5, v3, 0x0

    add-int/lit8 v6, v4, 0x0

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 37
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 38
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v4, 0x2

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 39
    add-int/lit8 v5, v3, 0x3

    add-int/lit8 v6, v4, 0x2

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 40
    add-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, v4, 0x3

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 41
    add-int/lit8 v5, v3, 0x5

    add-int/lit8 v6, v4, 0x0

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 35
    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v5, v4, 0x4

    int-to-short v4, v5

    goto :goto_2c

    .line 43
    .end local v3    # "i":I
    :cond_5e
    iget-object v3, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertices:Luk/co/blogspot/fractiousg/texample/Vertices;

    invoke-virtual {v3, v1, v0, v2}, Luk/co/blogspot/fractiousg/texample/Vertices;->setIndices([SII)V

    .line 44
    return-void
.end method


# virtual methods
.method public beginBatch()V
    .registers 2

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->numSprites:I

    .line 52
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    .line 53
    return-void
.end method

.method public drawSprite(FFFFLuk/co/blogspot/fractiousg/texample/TextureRegion;)V
    .registers 15
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "region"    # Luk/co/blogspot/fractiousg/texample/TextureRegion;

    .line 78
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->numSprites:I

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->maxSprites:I

    if-ne v0, v1, :cond_e

    .line 79
    invoke-virtual {p0}, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->endBatch()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->numSprites:I

    .line 82
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    .line 85
    :cond_e
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p3, v0

    .line 86
    .local v1, "halfWidth":F
    div-float v0, p4, v0

    .line 87
    .local v0, "halfHeight":F
    sub-float v2, p1, v1

    .line 88
    .local v2, "x1":F
    sub-float v3, p2, v0

    .line 89
    .local v3, "y1":F
    add-float v4, p1, v1

    .line 90
    .local v4, "x2":F
    add-float v5, p2, v0

    .line 92
    .local v5, "y2":F
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    aput v2, v6, v7

    .line 93
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    aput v3, v6, v7

    .line 94
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    iget v8, p5, Luk/co/blogspot/fractiousg/texample/TextureRegion;->u1:F

    aput v8, v6, v7

    .line 95
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    iget v8, p5, Luk/co/blogspot/fractiousg/texample/TextureRegion;->v2:F

    aput v8, v6, v7

    .line 97
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    aput v4, v6, v7

    .line 98
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    aput v3, v6, v7

    .line 99
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    iget v8, p5, Luk/co/blogspot/fractiousg/texample/TextureRegion;->u2:F

    aput v8, v6, v7

    .line 100
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    iget v8, p5, Luk/co/blogspot/fractiousg/texample/TextureRegion;->v2:F

    aput v8, v6, v7

    .line 102
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    aput v4, v6, v7

    .line 103
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    aput v5, v6, v7

    .line 104
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    iget v8, p5, Luk/co/blogspot/fractiousg/texample/TextureRegion;->u2:F

    aput v8, v6, v7

    .line 105
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    iget v8, p5, Luk/co/blogspot/fractiousg/texample/TextureRegion;->v1:F

    aput v8, v6, v7

    .line 107
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    aput v2, v6, v7

    .line 108
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    aput v5, v6, v7

    .line 109
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    iget v8, p5, Luk/co/blogspot/fractiousg/texample/TextureRegion;->u1:F

    aput v8, v6, v7

    .line 110
    iget-object v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v7, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    iget v8, p5, Luk/co/blogspot/fractiousg/texample/TextureRegion;->v1:F

    aput v8, v6, v7

    .line 112
    iget v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->numSprites:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->numSprites:I

    .line 113
    return-void
.end method

.method public endBatch()V
    .registers 5

    .line 60
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->numSprites:I

    if-lez v0, :cond_22

    .line 61
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertices:Luk/co/blogspot/fractiousg/texample/Vertices;

    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertexBuffer:[F

    iget v2, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->bufferIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Luk/co/blogspot/fractiousg/texample/Vertices;->setVertices([FII)V

    .line 62
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertices:Luk/co/blogspot/fractiousg/texample/Vertices;

    invoke-virtual {v0}, Luk/co/blogspot/fractiousg/texample/Vertices;->bind()V

    .line 63
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertices:Luk/co/blogspot/fractiousg/texample/Vertices;

    const/4 v1, 0x4

    iget v2, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->numSprites:I

    mul-int/lit8 v2, v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Luk/co/blogspot/fractiousg/texample/Vertices;->draw(III)V

    .line 64
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->vertices:Luk/co/blogspot/fractiousg/texample/Vertices;

    invoke-virtual {v0}, Luk/co/blogspot/fractiousg/texample/Vertices;->unbind()V

    .line 66
    :cond_22
    return-void
.end method
