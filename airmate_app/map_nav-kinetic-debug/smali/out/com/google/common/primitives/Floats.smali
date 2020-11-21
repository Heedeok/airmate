.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;,
        Lcom/google/common/primitives/Floats$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([FFII)I
    .registers 5
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .registers 5
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([F)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 403
    array-length v0, p0

    if-nez v0, :cond_8

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 406
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([F)V

    return-object v0
.end method

.method public static compare(FF)I
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[F)[F
    .registers 10
    .param p0, "arrays"    # [[F

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[F
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .local v0, "i$":I
    .local v4, "length":I
    :goto_6
    if-ge v0, v2, :cond_f

    aget-object v5, v1, v0

    .line 247
    .local v5, "array":[F
    array-length v6, v5

    add-int/2addr v4, v6

    .line 246
    .end local v5    # "array":[F
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 249
    .end local v0    # "i$":I
    .end local v1    # "arr$":[[F
    .end local v2    # "len$":I
    :cond_f
    new-array v0, v4, [F

    .line 250
    .local v0, "result":[F
    const/4 v1, 0x0

    .line 251
    .local v1, "pos":I
    move-object v2, p0

    .local v2, "arr$":[[F
    array-length v5, v2

    move v6, v1

    const/4 v1, 0x0

    .local v1, "i$":I
    .local v5, "len$":I
    .local v6, "pos":I
    :goto_16
    if-ge v1, v5, :cond_23

    aget-object v7, v2, v1

    .line 252
    .local v7, "array":[F
    array-length v8, v7

    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    array-length v8, v7

    add-int/2addr v6, v8

    .line 251
    .end local v7    # "array":[F
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 255
    .end local v1    # "i$":I
    .end local v2    # "arr$":[[F
    .end local v5    # "len$":I
    :cond_23
    return-object v0
.end method

.method public static contains([FF)Z
    .registers 8
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .line 108
    move-object v0, p0

    .local v0, "arr$":[F
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v1, :cond_11

    aget v4, v0, v3

    .line 109
    .local v4, "value":F
    cmpl-float v5, v4, p1

    if-nez v5, :cond_e

    .line 110
    const/4 v2, 0x1

    return v2

    .line 108
    .end local v4    # "value":F
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 113
    .end local v0    # "arr$":[F
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_11
    return v2
.end method

.method private static copyOf([FI)[F
    .registers 5
    .param p0, "original"    # [F
    .param p1, "length"    # I

    .line 285
    new-array v0, p1, [F

    .line 286
    .local v0, "copy":[F
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    return-object v0
.end method

.method public static ensureCapacity([FII)[F
    .registers 9
    .param p0, "array"    # [F
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 276
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 277
    if-ltz p2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 278
    array-length v0, p0

    if-ge v0, p1, :cond_30

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Floats;->copyOf([FI)[F

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, p0

    :goto_31
    return-object v0
.end method

.method public static hashCode(F)I
    .registers 2
    .param p0, "value"    # F

    .line 69
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([FF)I
    .registers 4
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .line 127
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static indexOf([FFII)I
    .registers 6
    .param p0, "array"    # [F
    .param p1, "target"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 133
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_d

    .line 134
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_a

    .line 135
    return v0

    .line 133
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    .end local v0    # "i":I
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([F[F)I
    .registers 7
    .param p0, "array"    # [F
    .param p1, "target"    # [F

    .line 156
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 159
    return v1

    .line 163
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2d

    .line 164
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2c

    .line 165
    add-int v3, v0, v2

    aget v3, p0, v3

    aget v4, p1, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_29

    .line 166
    nop

    .line 163
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 164
    .restart local v2    # "j":I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 169
    .end local v2    # "j":I
    :cond_2c
    return v0

    .line 171
    .end local v0    # "i":I
    :cond_2d
    const/4 v0, -0x1

    return v0
.end method

.method public static isFinite(F)Z
    .registers 5
    .param p0, "value"    # F

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float v2, v2, p0

    if-gez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v3, p0, v3

    if-gez v3, :cond_13

    const/4 v0, 0x1

    nop

    :cond_13
    and-int/2addr v0, v2

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[F)Ljava/lang/String;
    .registers 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [F

    .line 305
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    array-length v0, p1

    if-nez v0, :cond_9

    .line 307
    const-string v0, ""

    return-object v0

    .line 311
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 313
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 316
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([FF)I
    .registers 4
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .line 185
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([FFII)I
    .registers 6
    .param p0, "array"    # [F
    .param p1, "target"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 191
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_e

    .line 192
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_b

    .line 193
    return v0

    .line 191
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 196
    .end local v0    # "i":I
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[F>;"
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([F)F
    .registers 4
    .param p0, "array"    # [F

    .line 227
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 228
    aget v0, p0, v1

    .line 229
    .local v0, "max":F
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 230
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 229
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 232
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static varargs min([F)F
    .registers 4
    .param p0, "array"    # [F

    .line 209
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 210
    aget v0, p0, v1

    .line 211
    .local v0, "min":F
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 212
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 211
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 214
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[F
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[F"
        }
    .end annotation

    .line 371
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v0, :cond_c

    .line 372
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->toFloatArray()[F

    move-result-object v0

    return-object v0

    .line 375
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 376
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 377
    .local v1, "len":I
    new-array v2, v1, [F

    .line 378
    .local v2, "array":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_27

    .line 380
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    aput v4, v2, v3

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 382
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method
