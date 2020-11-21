.class public Luk/co/blogspot/fractiousg/texample/GLText;
.super Ljava/lang/Object;
.source "GLText.java"


# static fields
.field public static final CHAR_BATCH_SIZE:I = 0x64

.field public static final CHAR_CNT:I = 0x60

.field public static final CHAR_END:I = 0x7e

.field public static final CHAR_NONE:I = 0x20

.field public static final CHAR_START:I = 0x20

.field public static final CHAR_UNKNOWN:I = 0x5f

.field public static final FONT_SIZE_MAX:I = 0xb4

.field public static final FONT_SIZE_MIN:I = 0x6


# instance fields
.field assets:Landroid/content/res/AssetManager;

.field batch:Luk/co/blogspot/fractiousg/texample/SpriteBatch;

.field cellHeight:I

.field cellWidth:I

.field charHeight:F

.field charRgn:[Luk/co/blogspot/fractiousg/texample/TextureRegion;

.field charWidthMax:F

.field final charWidths:[F

.field colCnt:I

.field fontAscent:F

.field fontDescent:F

.field fontHeight:F

.field fontPadX:I

.field fontPadY:I

.field gl:Ljavax/microedition/khronos/opengles/GL10;

.field rowCnt:I

.field scaleX:F

.field scaleY:F

.field spaceX:F

.field textureId:I

.field textureRgn:Luk/co/blogspot/fractiousg/texample/TextureRegion;

.field textureSize:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/res/AssetManager;)V
    .registers 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "assets"    # Landroid/content/res/AssetManager;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 68
    iput-object p2, p0, Luk/co/blogspot/fractiousg/texample/GLText;->assets:Landroid/content/res/AssetManager;

    .line 70
    new-instance v0, Luk/co/blogspot/fractiousg/texample/SpriteBatch;

    const/16 v1, 0x64

    invoke-direct {v0, p1, v1}, Luk/co/blogspot/fractiousg/texample/SpriteBatch;-><init>(Ljavax/microedition/khronos/opengles/GL10;I)V

    iput-object v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->batch:Luk/co/blogspot/fractiousg/texample/SpriteBatch;

    .line 72
    const/16 v0, 0x60

    new-array v1, v0, [F

    iput-object v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    .line 73
    new-array v0, v0, [Luk/co/blogspot/fractiousg/texample/TextureRegion;

    iput-object v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charRgn:[Luk/co/blogspot/fractiousg/texample/TextureRegion;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadX:I

    .line 77
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadY:I

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontHeight:F

    .line 80
    iput v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontAscent:F

    .line 81
    iput v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontDescent:F

    .line 83
    const/4 v2, -0x1

    iput v2, p0, Luk/co/blogspot/fractiousg/texample/GLText;->textureId:I

    .line 84
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    .line 86
    iput v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidthMax:F

    .line 87
    iput v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charHeight:F

    .line 89
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    .line 90
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->cellHeight:I

    .line 91
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->rowCnt:I

    .line 92
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->colCnt:I

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    .line 95
    iput v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    .line 96
    iput v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->spaceX:F

    .line 97
    return-void
.end method


# virtual methods
.method public begin()V
    .registers 2

    .line 245
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v0}, Luk/co/blogspot/fractiousg/texample/GLText;->begin(FFFF)V

    .line 246
    return-void
.end method

.method public begin(F)V
    .registers 3
    .param p1, "alpha"    # F

    .line 248
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, p1}, Luk/co/blogspot/fractiousg/texample/GLText;->begin(FFFF)V

    .line 249
    return-void
.end method

.method public begin(FFFF)V
    .registers 8
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .line 251
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 252
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->textureId:I

    const/16 v2, 0xde1

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 253
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->batch:Luk/co/blogspot/fractiousg/texample/SpriteBatch;

    invoke-virtual {v0}, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->beginBatch()V

    .line 254
    return-void
.end method

.method public draw(Ljava/lang/String;FF)V
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 267
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->cellHeight:I

    int-to-float v0, v0

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    mul-float v0, v0, v1

    .line 268
    .local v0, "chrHeight":F
    iget v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    int-to-float v1, v1

    iget v2, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    mul-float v1, v1, v2

    .line 269
    .local v1, "chrWidth":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 270
    .local v8, "len":I
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    iget v4, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadX:I

    int-to-float v4, v4

    iget v5, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    add-float/2addr p2, v3

    .line 271
    div-float v2, v0, v2

    iget v3, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadY:I

    int-to-float v3, v3

    iget v4, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    add-float/2addr p3, v2

    .line 272
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    move v9, v2

    .end local v2    # "i":I
    .local v9, "i":I
    if-ge v9, v8, :cond_5c

    .line 273
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    .line 274
    .local v2, "c":I
    if-ltz v2, :cond_3d

    const/16 v3, 0x60

    if-lt v2, v3, :cond_3b

    goto :goto_3d

    .line 276
    .end local v2    # "c":I
    .local v10, "c":I
    :cond_3b
    :goto_3b
    move v10, v2

    goto :goto_40

    .line 275
    .end local v10    # "c":I
    .restart local v2    # "c":I
    :cond_3d
    :goto_3d
    const/16 v2, 0x5f

    goto :goto_3b

    .line 276
    .end local v2    # "c":I
    .restart local v10    # "c":I
    :goto_40
    iget-object v2, p0, Luk/co/blogspot/fractiousg/texample/GLText;->batch:Luk/co/blogspot/fractiousg/texample/SpriteBatch;

    iget-object v3, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charRgn:[Luk/co/blogspot/fractiousg/texample/TextureRegion;

    aget-object v7, v3, v10

    move v3, p2

    move v4, p3

    move v5, v1

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->drawSprite(FFFFLuk/co/blogspot/fractiousg/texample/TextureRegion;)V

    .line 277
    iget-object v2, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    aget v2, v2, v10

    iget v3, p0, Luk/co/blogspot/fractiousg/texample/GLText;->spaceX:F

    add-float/2addr v2, v3

    iget v3, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    mul-float v2, v2, v3

    add-float/2addr p2, v2

    .line 272
    .end local v10    # "c":I
    add-int/lit8 v2, v9, 0x1

    goto :goto_2b

    .line 279
    .end local v9    # "i":I
    :cond_5c
    return-void
.end method

.method public drawC(Ljava/lang/String;FF)F
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 287
    invoke-virtual {p0, p1}, Luk/co/blogspot/fractiousg/texample/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    .line 288
    .local v0, "len":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    sub-float v2, p2, v2

    invoke-virtual {p0}, Luk/co/blogspot/fractiousg/texample/GLText;->getCharHeight()F

    move-result v3

    div-float/2addr v3, v1

    sub-float v1, p3, v3

    invoke-virtual {p0, p1, v2, v1}, Luk/co/blogspot/fractiousg/texample/GLText;->draw(Ljava/lang/String;FF)V

    .line 289
    return v0
.end method

.method public drawCX(Ljava/lang/String;FF)F
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 292
    invoke-virtual {p0, p1}, Luk/co/blogspot/fractiousg/texample/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    .line 293
    .local v0, "len":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float v1, p2, v1

    invoke-virtual {p0, p1, v1, p3}, Luk/co/blogspot/fractiousg/texample/GLText;->draw(Ljava/lang/String;FF)V

    .line 294
    return v0
.end method

.method public drawCY(Ljava/lang/String;FF)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 297
    invoke-virtual {p0}, Luk/co/blogspot/fractiousg/texample/GLText;->getCharHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p3, v0

    invoke-virtual {p0, p1, p2, v0}, Luk/co/blogspot/fractiousg/texample/GLText;->draw(Ljava/lang/String;FF)V

    .line 298
    return-void
.end method

.method public end()V
    .registers 4

    .line 256
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->batch:Luk/co/blogspot/fractiousg/texample/SpriteBatch;

    invoke-virtual {v0}, Luk/co/blogspot/fractiousg/texample/SpriteBatch;->endBatch()V

    .line 257
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 258
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 259
    return-void
.end method

.method public getAscent()F
    .registers 3

    .line 377
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontAscent:F

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getCharHeight()F
    .registers 3

    .line 369
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charHeight:F

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getCharWidth(C)F
    .registers 5
    .param p1, "chr"    # C

    .line 362
    add-int/lit8 v0, p1, -0x20

    .line 363
    .local v0, "c":I
    iget-object v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    aget v1, v1, v0

    iget v2, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    mul-float v1, v1, v2

    return v1
.end method

.method public getCharWidthMax()F
    .registers 3

    .line 366
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidthMax:F

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getDescent()F
    .registers 3

    .line 380
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontDescent:F

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getHeight()F
    .registers 3

    .line 383
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->fontHeight:F

    iget v1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getLength(Ljava/lang/String;)F
    .registers 8
    .param p1, "text"    # Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "len":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 347
    .local v1, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_1a

    .line 348
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    .line 349
    .local v3, "c":I
    iget-object v4, p0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    aget v4, v4, v3

    iget v5, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    .line 347
    .end local v3    # "c":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 351
    .end local v2    # "i":I
    :cond_1a
    const/4 v2, 0x1

    if-le v1, v2, :cond_29

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    iget v3, p0, Luk/co/blogspot/fractiousg/texample/GLText;->spaceX:F

    mul-float v2, v2, v3

    iget v3, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    mul-float v2, v2, v3

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    add-float/2addr v0, v2

    .line 352
    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 318
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 321
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    return v0
.end method

.method public getSpace()F
    .registers 2

    .line 337
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->spaceX:F

    return v0
.end method

.method public load(Landroid/graphics/Typeface;III)Z
    .registers 37
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "size"    # I
    .param p3, "padX"    # I
    .param p4, "padY"    # I

    .line 115
    move-object/from16 v0, p0

    move/from16 v1, p3

    iput v1, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadX:I

    .line 116
    move/from16 v2, p4

    iput v2, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadY:I

    .line 119
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 120
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    move/from16 v13, p2

    int-to-float v4, v13

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    move-object/from16 v14, p1

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 126
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    .line 127
    .local v15, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v4, v15, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontHeight:F

    .line 128
    iget v4, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontAscent:F

    .line 129
    iget v4, v15, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontDescent:F

    .line 133
    const/4 v4, 0x2

    new-array v11, v4, [C

    .line 134
    .local v11, "s":[C
    const/4 v5, 0x0

    iput v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charHeight:F

    iput v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidthMax:F

    .line 135
    new-array v10, v4, [F

    .line 136
    .local v10, "w":[F
    const/4 v5, 0x0

    .line 137
    .local v5, "cnt":I
    const/16 v16, 0x20

    move v6, v5

    const/16 v5, 0x20

    .local v5, "c":C
    .local v6, "cnt":I
    :goto_67
    const/16 v9, 0x7e

    const/4 v8, 0x0

    if-gt v5, v9, :cond_8d

    .line 138
    aput-char v5, v11, v8

    .line 139
    invoke-virtual {v3, v11, v8, v12, v10}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 140
    iget-object v7, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    aget v8, v10, v8

    aput v8, v7, v6

    .line 141
    iget-object v7, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    aget v7, v7, v6

    iget v8, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidthMax:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_87

    .line 142
    iget-object v7, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    aget v7, v7, v6

    iput v7, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidthMax:F

    .line 143
    :cond_87
    add-int/lit8 v6, v6, 0x1

    .line 137
    add-int/lit8 v7, v5, 0x1

    int-to-char v5, v7

    goto :goto_67

    .line 145
    .end local v5    # "c":C
    :cond_8d
    aput-char v16, v11, v8

    .line 146
    invoke-virtual {v3, v11, v8, v12, v10}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 147
    iget-object v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    aget v7, v10, v8

    aput v7, v5, v6

    .line 148
    iget-object v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    aget v5, v5, v6

    iget v7, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidthMax:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_a8

    .line 149
    iget-object v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidths:[F

    aget v5, v5, v6

    iput v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidthMax:F

    .line 150
    :cond_a8
    add-int/lit8 v17, v6, 0x1

    .line 153
    .end local v6    # "cnt":I
    .local v17, "cnt":I
    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontHeight:F

    iput v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charHeight:F

    .line 156
    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charWidthMax:F

    float-to-int v5, v5

    iget v6, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadX:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    .line 157
    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charHeight:F

    float-to-int v5, v5

    iget v6, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadY:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellHeight:I

    .line 158
    iget v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellHeight:I

    if-le v4, v5, :cond_cb

    iget v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    goto :goto_cd

    :cond_cb
    iget v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellHeight:I

    :goto_cd
    move v7, v4

    .line 159
    .local v7, "maxSize":I
    const/4 v4, 0x6

    if-lt v7, v4, :cond_26f

    const/16 v4, 0xb4

    if-le v7, v4, :cond_e0

    .line 160
    move-object/from16 v31, v3

    move/from16 v18, v7

    move-object/from16 v19, v10

    move-object/from16 v16, v11

    const/4 v12, 0x0

    goto/16 :goto_278

    .line 165
    :cond_e0
    const/16 v4, 0x18

    if-gt v7, v4, :cond_e9

    .line 166
    const/16 v4, 0x100

    iput v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    goto :goto_ff

    .line 167
    :cond_e9
    const/16 v4, 0x28

    if-gt v7, v4, :cond_f2

    .line 168
    const/16 v4, 0x200

    iput v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    goto :goto_ff

    .line 169
    :cond_f2
    const/16 v4, 0x50

    if-gt v7, v4, :cond_fb

    .line 170
    const/16 v4, 0x400

    iput v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    goto :goto_ff

    .line 172
    :cond_fb
    const/16 v4, 0x800

    iput v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    .line 175
    :goto_ff
    iget v4, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 176
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 181
    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    iget v8, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    div-int/2addr v5, v8

    iput v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->colCnt:I

    .line 182
    const/high16 v5, 0x42c00000    # 96.0f

    iget v8, v0, Luk/co/blogspot/fractiousg/texample/GLText;->colCnt:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    move-object/from16 v19, v10

    .end local v10    # "w":[F
    .local v19, "w":[F
    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    iput v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->rowCnt:I

    .line 185
    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadX:I

    int-to-float v5, v5

    .line 186
    .local v5, "x":F
    iget v8, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellHeight:I

    sub-int/2addr v8, v12

    int-to-float v8, v8

    iget v9, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontDescent:F

    sub-float/2addr v8, v9

    iget v9, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 187
    .local v8, "y":F
    move/from16 v21, v5

    move/from16 v22, v8

    const/16 v5, 0x20

    .end local v8    # "y":F
    .local v5, "c":C
    .local v21, "x":F
    .local v22, "y":F
    :goto_13c
    move v10, v5

    const/16 v9, 0x7e

    .end local v5    # "c":C
    .local v10, "c":C
    if-gt v10, v9, :cond_186

    .line 188
    const/4 v8, 0x0

    aput-char v10, v11, v8

    .line 189
    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object v5, v11

    move-object/from16 v23, v6

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .local v23, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v6, v18

    move/from16 v18, v7

    .end local v7    # "maxSize":I
    .local v18, "maxSize":I
    move/from16 v7, v20

    const/4 v12, 0x0

    move/from16 v8, v21

    const/16 v20, 0x7e

    move/from16 v9, v22

    move/from16 v24, v10

    .end local v10    # "c":C
    .local v24, "c":C
    move-object v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 190
    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    int-to-float v5, v5

    add-float v21, v21, v5

    .line 191
    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    int-to-float v5, v5

    add-float v5, v21, v5

    iget v6, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_17d

    .line 192
    iget v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->fontPadX:I

    int-to-float v5, v5

    .line 193
    .end local v21    # "x":F
    .local v5, "x":F
    iget v6, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellHeight:I

    int-to-float v6, v6

    add-float v22, v22, v6

    .line 187
    move/from16 v21, v5

    .end local v5    # "x":F
    .restart local v21    # "x":F
    :cond_17d
    add-int/lit8 v10, v24, 0x1

    int-to-char v5, v10

    move/from16 v7, v18

    move-object/from16 v6, v23

    const/4 v12, 0x1

    goto :goto_13c

    .line 196
    .end local v18    # "maxSize":I
    .end local v23    # "bitmap":Landroid/graphics/Bitmap;
    .end local v24    # "c":C
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "maxSize":I
    :cond_186
    move-object/from16 v23, v6

    move/from16 v18, v7

    const/4 v12, 0x0

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "maxSize":I
    .restart local v18    # "maxSize":I
    .restart local v23    # "bitmap":Landroid/graphics/Bitmap;
    aput-char v16, v11, v12

    .line 197
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v5, v4

    move-object v6, v11

    move/from16 v9, v21

    move/from16 v10, v22

    move-object/from16 v16, v11

    .end local v11    # "s":[C
    .local v16, "s":[C
    move-object v11, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 200
    const/4 v5, 0x1

    new-array v6, v5, [I

    .line 201
    .local v6, "textureIds":[I
    iget-object v7, v0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v7, v5, v6, v12}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 202
    const-string v5, "text handle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v6, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    aget v5, v6, v12

    iput v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureId:I

    .line 206
    iget-object v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v7, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureId:I

    const/16 v8, 0xde1

    invoke-interface {v5, v8, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 207
    iget-object v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x2801

    const/high16 v9, 0x46180000    # 9728.0f

    invoke-interface {v5, v8, v7, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 208
    iget-object v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x2800

    const v9, 0x46180400    # 9729.0f

    invoke-interface {v5, v8, v7, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 209
    iget-object v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x2802

    const v9, 0x47012f00    # 33071.0f

    invoke-interface {v5, v8, v7, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 210
    iget-object v5, v0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x2803

    invoke-interface {v5, v8, v7, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 213
    move-object/from16 v5, v23

    .end local v23    # "bitmap":Landroid/graphics/Bitmap;
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v8, v12, v5, v12}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 214
    iget-object v7, v0, Luk/co/blogspot/fractiousg/texample/GLText;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v7, v8, v12}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 217
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    const/4 v7, 0x0

    .line 221
    .end local v21    # "x":F
    .local v7, "x":F
    const/4 v8, 0x0

    .line 222
    .end local v22    # "y":F
    .restart local v8    # "y":F
    nop

    .local v12, "c":I
    :goto_1fc
    move v9, v12

    .end local v12    # "c":I
    .local v9, "c":I
    const/16 v10, 0x60

    if-ge v9, v10, :cond_24a

    .line 223
    iget-object v10, v0, Luk/co/blogspot/fractiousg/texample/GLText;->charRgn:[Luk/co/blogspot/fractiousg/texample/TextureRegion;

    new-instance v11, Luk/co/blogspot/fractiousg/texample/TextureRegion;

    iget v12, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    int-to-float v12, v12

    iget v1, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    int-to-float v1, v1

    iget v2, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    const/16 v20, 0x1

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    move-object/from16 v31, v3

    .end local v3    # "paint":Landroid/graphics/Paint;
    .local v31, "paint":Landroid/graphics/Paint;
    iget v3, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellHeight:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    move-object/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v1

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v2

    move/from16 v30, v3

    invoke-direct/range {v24 .. v30}, Luk/co/blogspot/fractiousg/texample/TextureRegion;-><init>(FFFFFF)V

    aput-object v11, v10, v9

    .line 224
    iget v1, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    int-to-float v1, v1

    add-float/2addr v7, v1

    .line 225
    iget v1, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellWidth:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget v2, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_241

    .line 226
    const/4 v1, 0x0

    .line 227
    .end local v7    # "x":F
    .local v1, "x":F
    iget v2, v0, Luk/co/blogspot/fractiousg/texample/GLText;->cellHeight:I

    int-to-float v2, v2

    add-float/2addr v8, v2

    .line 222
    move v7, v1

    .end local v1    # "x":F
    .restart local v7    # "x":F
    :cond_241
    add-int/lit8 v12, v9, 0x1

    move-object/from16 v3, v31

    move/from16 v1, p3

    move/from16 v2, p4

    goto :goto_1fc

    .line 232
    .end local v9    # "c":I
    .end local v31    # "paint":Landroid/graphics/Paint;
    .restart local v3    # "paint":Landroid/graphics/Paint;
    :cond_24a
    move-object/from16 v31, v3

    .end local v3    # "paint":Landroid/graphics/Paint;
    .restart local v31    # "paint":Landroid/graphics/Paint;
    new-instance v1, Luk/co/blogspot/fractiousg/texample/TextureRegion;

    iget v2, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    int-to-float v2, v2

    iget v3, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    int-to-float v3, v3

    const/16 v27, 0x0

    const/16 v28, 0x0

    iget v9, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    int-to-float v9, v9

    iget v10, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureSize:I

    int-to-float v10, v10

    move-object/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v29, v9

    move/from16 v30, v10

    invoke-direct/range {v24 .. v30}, Luk/co/blogspot/fractiousg/texample/TextureRegion;-><init>(FFFFFF)V

    iput-object v1, v0, Luk/co/blogspot/fractiousg/texample/GLText;->textureRgn:Luk/co/blogspot/fractiousg/texample/TextureRegion;

    .line 235
    const/4 v1, 0x1

    return v1

    .line 160
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "textureIds":[I
    .end local v8    # "y":F
    .end local v16    # "s":[C
    .end local v18    # "maxSize":I
    .end local v19    # "w":[F
    .end local v31    # "paint":Landroid/graphics/Paint;
    .restart local v3    # "paint":Landroid/graphics/Paint;
    .local v7, "maxSize":I
    .local v10, "w":[F
    .restart local v11    # "s":[C
    :cond_26f
    move-object/from16 v31, v3

    move/from16 v18, v7

    move-object/from16 v19, v10

    move-object/from16 v16, v11

    const/4 v12, 0x0

    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v7    # "maxSize":I
    .end local v10    # "w":[F
    .end local v11    # "s":[C
    .restart local v16    # "s":[C
    .restart local v18    # "maxSize":I
    .restart local v19    # "w":[F
    .restart local v31    # "paint":Landroid/graphics/Paint;
    :goto_278
    return v12
.end method

.method public load(Ljava/lang/String;III)Z
    .registers 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "padX"    # I
    .param p4, "padY"    # I

    .line 100
    iget-object v0, p0, Luk/co/blogspot/fractiousg/texample/GLText;->assets:Landroid/content/res/AssetManager;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 101
    .local v0, "tf":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0, p2, p3, p4}, Luk/co/blogspot/fractiousg/texample/GLText;->load(Landroid/graphics/Typeface;III)Z

    move-result v1

    return v1
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 306
    iput p1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    iput p1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    .line 307
    return-void
.end method

.method public setScale(FF)V
    .registers 3
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 309
    iput p1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleX:F

    .line 310
    iput p2, p0, Luk/co/blogspot/fractiousg/texample/GLText;->scaleY:F

    .line 311
    return-void
.end method

.method public setSpace(F)V
    .registers 2
    .param p1, "space"    # F

    .line 329
    iput p1, p0, Luk/co/blogspot/fractiousg/texample/GLText;->spaceX:F

    .line 330
    return-void
.end method
