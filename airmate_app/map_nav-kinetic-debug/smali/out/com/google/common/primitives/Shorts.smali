.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$ShortArrayAsList;,
        Lcom/google/common/primitives/Shorts$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final MAX_POWER_OF_TWO:S = 0x4000s


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([SSII)I
    .registers 5
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([SSII)I
    .registers 5
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 465
    array-length v0, p0

    if-nez v0, :cond_8

    .line 466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 468
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([S)V

    return-object v0
.end method

.method public static checkedCast(J)S
    .registers 8
    .param p0, "value"    # J

    .line 85
    long-to-int v0, p0

    int-to-short v0, v0

    .line 86
    .local v0, "result":S
    int-to-long v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmp-long v5, v1, p0

    if-nez v5, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-string v2, "Out of range: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return v0
.end method

.method public static compare(SS)I
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S

    .line 118
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[S)[S
    .registers 10
    .param p0, "arrays"    # [[S

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[S
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

    .line 267
    .local v5, "array":[S
    array-length v6, v5

    add-int/2addr v4, v6

    .line 266
    .end local v5    # "array":[S
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 269
    .end local v0    # "i$":I
    .end local v1    # "arr$":[[S
    .end local v2    # "len$":I
    :cond_f
    new-array v0, v4, [S

    .line 270
    .local v0, "result":[S
    const/4 v1, 0x0

    .line 271
    .local v1, "pos":I
    move-object v2, p0

    .local v2, "arr$":[[S
    array-length v5, v2

    move v6, v1

    const/4 v1, 0x0

    .local v1, "i$":I
    .local v5, "len$":I
    .local v6, "pos":I
    :goto_16
    if-ge v1, v5, :cond_23

    aget-object v7, v2, v1

    .line 272
    .local v7, "array":[S
    array-length v8, v7

    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length v8, v7

    add-int/2addr v6, v8

    .line 271
    .end local v7    # "array":[S
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 275
    .end local v1    # "i$":I
    .end local v2    # "arr$":[[S
    .end local v5    # "len$":I
    :cond_23
    return-object v0
.end method

.method public static contains([SS)Z
    .registers 7
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .line 131
    move-object v0, p0

    .local v0, "arr$":[S
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v1, :cond_f

    aget-short v4, v0, v3

    .line 132
    .local v4, "value":S
    if-ne v4, p1, :cond_c

    .line 133
    const/4 v2, 0x1

    return v2

    .line 131
    .end local v4    # "value":S
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 136
    .end local v0    # "arr$":[S
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_f
    return v2
.end method

.method private static copyOf([SI)[S
    .registers 5
    .param p0, "original"    # [S
    .param p1, "length"    # I

    .line 355
    new-array v0, p1, [S

    .line 356
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    return-object v0
.end method

.method public static ensureCapacity([SII)[S
    .registers 9
    .param p0, "array"    # [S
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 346
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

    .line 347
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

    .line 348
    array-length v0, p0

    if-ge v0, p1, :cond_30

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Shorts;->copyOf([SI)[S

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, p0

    :goto_31
    return-object v0
.end method

.method public static fromByteArray([B)S
    .registers 8
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 311
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v4, "array too small: %s < %s"

    new-array v5, v3, [Ljava/lang/Object;

    array-length v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 313
    aget-byte v0, p0, v1

    aget-byte v1, p0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Shorts;->fromBytes(BB)S

    move-result v0

    return v0
.end method

.method public static fromBytes(BB)S
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 325
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static hashCode(S)I
    .registers 1
    .param p0, "value"    # S

    .line 72
    return p0
.end method

.method public static indexOf([SS)I
    .registers 4
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .line 149
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static indexOf([SSII)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "target"    # S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 155
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 156
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 157
    return v0

    .line 155
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "i":I
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([S[S)I
    .registers 7
    .param p0, "array"    # [S
    .param p1, "target"    # [S

    .line 175
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 178
    return v1

    .line 182
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 183
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2a

    .line 184
    add-int v3, v0, v2

    aget-short v3, p0, v3

    aget-short v4, p1, v2

    if-eq v3, v4, :cond_27

    .line 185
    nop

    .line 182
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 183
    .restart local v2    # "j":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 188
    .end local v2    # "j":I
    :cond_2a
    return v0

    .line 190
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .registers 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [S

    .line 370
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    array-length v0, p1

    if-nez v0, :cond_9

    .line 372
    const-string v0, ""

    return-object v0

    .line 376
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-short v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 379
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-short v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 381
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([SS)I
    .registers 4
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .line 203
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([SSII)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "target"    # S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 209
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 210
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 211
    return v0

    .line 209
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 214
    .end local v0    # "i":I
    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[S>;"
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([S)S
    .registers 4
    .param p0, "array"    # [S

    .line 245
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

    .line 246
    aget-short v0, p0, v1

    .line 247
    .local v0, "max":S
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 248
    aget-short v2, p0, v1

    if-le v2, v0, :cond_18

    .line 249
    aget-short v0, p0, v1

    .line 247
    :cond_18
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 252
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static varargs min([S)S
    .registers 4
    .param p0, "array"    # [S

    .line 226
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

    .line 227
    aget-short v0, p0, v1

    .line 228
    .local v0, "min":S
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 229
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_18

    .line 230
    aget-short v0, p0, v1

    .line 228
    :cond_18
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 233
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static saturatedCast(J)S
    .registers 5
    .param p0, "value"    # J

    .line 99
    const-wide/16 v0, 0x7fff

    cmp-long v2, p0, v0

    if-lez v2, :cond_9

    .line 100
    const/16 v0, 0x7fff

    return v0

    .line 102
    :cond_9
    const-wide/16 v0, -0x8000

    cmp-long v2, p0, v0

    if-gez v2, :cond_12

    .line 103
    const/16 v0, -0x8000

    return v0

    .line 105
    :cond_12
    long-to-int v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[S
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[S"
        }
    .end annotation

    .line 436
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v0, :cond_c

    .line 437
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->toShortArray()[S

    move-result-object v0

    return-object v0

    .line 440
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 441
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 442
    .local v1, "len":I
    new-array v2, v1, [S

    .line 443
    .local v2, "array":[S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_27

    .line 445
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    aput-short v4, v2, v3

    .line 443
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 447
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method

.method public static toByteArray(S)[B
    .registers 4
    .param p0, "value"    # S
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 292
    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method
