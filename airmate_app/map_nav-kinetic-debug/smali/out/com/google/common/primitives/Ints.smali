.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;,
        Lcom/google/common/primitives/Ints$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field public static final MAX_POWER_OF_TWO:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIII)I
    .registers 5
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([IIII)I
    .registers 5
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([I)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 467
    array-length v0, p0

    if-nez v0, :cond_8

    .line 468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 470
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([I)V

    return-object v0
.end method

.method public static checkedCast(J)I
    .registers 8
    .param p0, "value"    # J

    .line 87
    long-to-int v0, p0

    .line 88
    .local v0, "result":I
    int-to-long v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmp-long v5, v1, p0

    if-nez v5, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const-string v2, "Out of range: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return v0
.end method

.method public static compare(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 120
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    goto :goto_9

    :cond_4
    if-le p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static varargs concat([[I)[I
    .registers 10
    .param p0, "arrays"    # [[I

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[I
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

    .line 269
    .local v5, "array":[I
    array-length v6, v5

    add-int/2addr v4, v6

    .line 268
    .end local v5    # "array":[I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 271
    .end local v0    # "i$":I
    .end local v1    # "arr$":[[I
    .end local v2    # "len$":I
    :cond_f
    new-array v0, v4, [I

    .line 272
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 273
    .local v1, "pos":I
    move-object v2, p0

    .local v2, "arr$":[[I
    array-length v5, v2

    move v6, v1

    const/4 v1, 0x0

    .local v1, "i$":I
    .local v5, "len$":I
    .local v6, "pos":I
    :goto_16
    if-ge v1, v5, :cond_23

    aget-object v7, v2, v1

    .line 274
    .local v7, "array":[I
    array-length v8, v7

    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    array-length v8, v7

    add-int/2addr v6, v8

    .line 273
    .end local v7    # "array":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 277
    .end local v1    # "i$":I
    .end local v2    # "arr$":[[I
    .end local v5    # "len$":I
    :cond_23
    return-object v0
.end method

.method public static contains([II)Z
    .registers 7
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .line 133
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v1, :cond_f

    aget v4, v0, v3

    .line 134
    .local v4, "value":I
    if-ne v4, p1, :cond_c

    .line 135
    const/4 v2, 0x1

    return v2

    .line 133
    .end local v4    # "value":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 138
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_f
    return v2
.end method

.method private static copyOf([II)[I
    .registers 5
    .param p0, "original"    # [I
    .param p1, "length"    # I

    .line 358
    new-array v0, p1, [I

    .line 359
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    return-object v0
.end method

.method public static ensureCapacity([III)[I
    .registers 9
    .param p0, "array"    # [I
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 349
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

    .line 350
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

    .line 351
    array-length v0, p0

    if-ge v0, p1, :cond_30

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->copyOf([II)[I

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, p0

    :goto_31
    return-object v0
.end method

.method public static fromByteArray([B)I
    .registers 9
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 314
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v4, "array too small: %s < %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    array-length v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v0, v4, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 316
    aget-byte v0, p0, v2

    aget-byte v1, p0, v3

    aget-byte v2, p0, v5

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0
.end method

.method public static fromBytes(BBBB)I
    .registers 6
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 328
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static hashCode(I)I
    .registers 1
    .param p0, "value"    # I

    .line 75
    return p0
.end method

.method public static indexOf([II)I
    .registers 4
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .line 151
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static indexOf([IIII)I
    .registers 6
    .param p0, "array"    # [I
    .param p1, "target"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 157
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 158
    aget v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 159
    return v0

    .line 157
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    .end local v0    # "i":I
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([I[I)I
    .registers 7
    .param p0, "array"    # [I
    .param p1, "target"    # [I

    .line 177
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 180
    return v1

    .line 184
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 185
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2a

    .line 186
    add-int v3, v0, v2

    aget v3, p0, v3

    aget v4, p1, v2

    if-eq v3, v4, :cond_27

    .line 187
    nop

    .line 184
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 185
    .restart local v2    # "j":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 190
    .end local v2    # "j":I
    :cond_2a
    return v0

    .line 192
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [I

    .line 373
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    array-length v0, p1

    if-nez v0, :cond_9

    .line 375
    const-string v0, ""

    return-object v0

    .line 379
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 382
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 384
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([II)I
    .registers 4
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .line 205
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([IIII)I
    .registers 6
    .param p0, "array"    # [I
    .param p1, "target"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 211
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 212
    aget v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 213
    return v0

    .line 211
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 216
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
            "[I>;"
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([I)I
    .registers 4
    .param p0, "array"    # [I

    .line 247
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

    .line 248
    aget v0, p0, v1

    .line 249
    .local v0, "max":I
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 250
    aget v2, p0, v1

    if-le v2, v0, :cond_18

    .line 251
    aget v0, p0, v1

    .line 249
    :cond_18
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 254
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static varargs min([I)I
    .registers 4
    .param p0, "array"    # [I

    .line 228
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

    .line 229
    aget v0, p0, v1

    .line 230
    .local v0, "min":I
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 231
    aget v2, p0, v1

    if-ge v2, v0, :cond_18

    .line 232
    aget v0, p0, v1

    .line 230
    :cond_18
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 235
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static saturatedCast(J)I
    .registers 5
    .param p0, "value"    # J

    .line 101
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_b

    .line 102
    const v0, 0x7fffffff

    return v0

    .line 104
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_15

    .line 105
    const/high16 v0, -0x80000000

    return v0

    .line 107
    :cond_15
    long-to-int v0, p0

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .line 438
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v0, :cond_c

    .line 439
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v0

    return-object v0

    .line 442
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 443
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 444
    .local v1, "len":I
    new-array v2, v1, [I

    .line 445
    .local v2, "array":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_27

    .line 447
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 449
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method

.method public static toByteArray(I)[B
    .registers 4
    .param p0, "value"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 293
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 617
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
