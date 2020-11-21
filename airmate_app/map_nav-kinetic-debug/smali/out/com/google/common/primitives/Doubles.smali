.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Doubles$DoubleArrayAsList;,
        Lcom/google/common/primitives/Doubles$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([DDII)I
    .registers 6
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([DDII)I
    .registers 6
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([D)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 406
    array-length v0, p0

    if-nez v0, :cond_8

    .line 407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 409
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([D)V

    return-object v0
.end method

.method public static compare(DD)I
    .registers 5
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 86
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[D)[D
    .registers 10
    .param p0, "arrays"    # [[D

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[D
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

    .line 250
    .local v5, "array":[D
    array-length v6, v5

    add-int/2addr v4, v6

    .line 249
    .end local v5    # "array":[D
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 252
    .end local v0    # "i$":I
    .end local v1    # "arr$":[[D
    .end local v2    # "len$":I
    :cond_f
    new-array v0, v4, [D

    .line 253
    .local v0, "result":[D
    const/4 v1, 0x0

    .line 254
    .local v1, "pos":I
    move-object v2, p0

    .local v2, "arr$":[[D
    array-length v5, v2

    move v6, v1

    const/4 v1, 0x0

    .local v1, "i$":I
    .local v5, "len$":I
    .local v6, "pos":I
    :goto_16
    if-ge v1, v5, :cond_23

    aget-object v7, v2, v1

    .line 255
    .local v7, "array":[D
    array-length v8, v7

    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    array-length v8, v7

    add-int/2addr v6, v8

    .line 254
    .end local v7    # "array":[D
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 258
    .end local v1    # "i$":I
    .end local v2    # "arr$":[[D
    .end local v5    # "len$":I
    :cond_23
    return-object v0
.end method

.method public static contains([DD)Z
    .registers 10
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .line 111
    move-object v0, p0

    .local v0, "arr$":[D
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v1, :cond_11

    aget-wide v4, v0, v3

    .line 112
    .local v4, "value":D
    cmpl-double v6, v4, p1

    if-nez v6, :cond_e

    .line 113
    const/4 v2, 0x1

    return v2

    .line 111
    .end local v4    # "value":D
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 116
    .end local v0    # "arr$":[D
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_11
    return v2
.end method

.method private static copyOf([DI)[D
    .registers 5
    .param p0, "original"    # [D
    .param p1, "length"    # I

    .line 288
    new-array v0, p1, [D

    .line 289
    .local v0, "copy":[D
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    return-object v0
.end method

.method public static ensureCapacity([DII)[D
    .registers 9
    .param p0, "array"    # [D
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 279
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

    .line 280
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

    .line 281
    array-length v0, p0

    if-ge v0, p1, :cond_30

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Doubles;->copyOf([DI)[D

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, p0

    :goto_31
    return-object v0
.end method

.method public static hashCode(D)I
    .registers 3
    .param p0, "value"    # D

    .line 68
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([DD)I
    .registers 5
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .line 130
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static indexOf([DDII)I
    .registers 9
    .param p0, "array"    # [D
    .param p1, "target"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 136
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_d

    .line 137
    aget-wide v1, p0, v0

    cmpl-double v3, v1, p1

    if-nez v3, :cond_a

    .line 138
    return v0

    .line 136
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([D[D)I
    .registers 10
    .param p0, "array"    # [D
    .param p1, "target"    # [D

    .line 159
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 162
    return v1

    .line 166
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2d

    .line 167
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2c

    .line 168
    add-int v3, v0, v2

    aget-wide v3, p0, v3

    aget-wide v5, p1, v2

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_29

    .line 169
    nop

    .line 166
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 167
    .restart local v2    # "j":I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 172
    .end local v2    # "j":I
    :cond_2c
    return v0

    .line 174
    .end local v0    # "i":I
    :cond_2d
    const/4 v0, -0x1

    return v0
.end method

.method public static isFinite(D)Z
    .registers 8
    .param p0, "value"    # D

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpg-double v4, v2, p0

    if-gez v4, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v5, p0, v3

    if-gez v5, :cond_13

    const/4 v0, 0x1

    nop

    :cond_13
    and-int/2addr v0, v2

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[D)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [D

    .line 308
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    array-length v0, p1

    if-nez v0, :cond_9

    .line 310
    const-string v0, ""

    return-object v0

    .line 314
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 315
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-wide v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 316
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 317
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 319
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([DD)I
    .registers 5
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .line 188
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([DDII)I
    .registers 9
    .param p0, "array"    # [D
    .param p1, "target"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 194
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p3, :cond_e

    .line 195
    aget-wide v1, p0, v0

    cmpl-double v3, v1, p1

    if-nez v3, :cond_b

    .line 196
    return v0

    .line 194
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 199
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
            "[D>;"
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([D)D
    .registers 6
    .param p0, "array"    # [D

    .line 230
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

    .line 231
    aget-wide v0, p0, v1

    .line 232
    .local v0, "max":D
    nop

    .local v2, "i":I
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_1a

    .line 233
    aget-wide v3, p0, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 235
    .end local v2    # "i":I
    :cond_1a
    return-wide v0
.end method

.method public static varargs min([D)D
    .registers 6
    .param p0, "array"    # [D

    .line 212
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

    .line 213
    aget-wide v0, p0, v1

    .line 214
    .local v0, "min":D
    nop

    .local v2, "i":I
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_1a

    .line 215
    aget-wide v3, p0, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 217
    .end local v2    # "i":I
    :cond_1a
    return-wide v0
.end method

.method public static toArray(Ljava/util/Collection;)[D
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[D"
        }
    .end annotation

    .line 374
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v0, :cond_c

    .line 375
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->toDoubleArray()[D

    move-result-object v0

    return-object v0

    .line 378
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 380
    .local v1, "len":I
    new-array v2, v1, [D

    .line 381
    .local v2, "array":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_27

    .line 383
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 385
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method
