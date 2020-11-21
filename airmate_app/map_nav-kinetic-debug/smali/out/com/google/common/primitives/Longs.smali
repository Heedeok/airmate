.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_POWER_OF_TWO:J = 0x4000000000000000L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([JJII)I
    .registers 6
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .registers 6
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 452
    array-length v0, p0

    if-nez v0, :cond_8

    .line 453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 455
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    return-object v0
.end method

.method public static compare(JJ)I
    .registers 5
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 90
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static varargs concat([[J)[J
    .registers 10
    .param p0, "arrays"    # [[J

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[J
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

    .line 239
    .local v5, "array":[J
    array-length v6, v5

    add-int/2addr v4, v6

    .line 238
    .end local v5    # "array":[J
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 241
    .end local v0    # "i$":I
    .end local v1    # "arr$":[[J
    .end local v2    # "len$":I
    :cond_f
    new-array v0, v4, [J

    .line 242
    .local v0, "result":[J
    const/4 v1, 0x0

    .line 243
    .local v1, "pos":I
    move-object v2, p0

    .local v2, "arr$":[[J
    array-length v5, v2

    move v6, v1

    const/4 v1, 0x0

    .local v1, "i$":I
    .local v5, "len$":I
    .local v6, "pos":I
    :goto_16
    if-ge v1, v5, :cond_23

    aget-object v7, v2, v1

    .line 244
    .local v7, "array":[J
    array-length v8, v7

    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    array-length v8, v7

    add-int/2addr v6, v8

    .line 243
    .end local v7    # "array":[J
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 247
    .end local v1    # "i$":I
    .end local v2    # "arr$":[[J
    .end local v5    # "len$":I
    :cond_23
    return-object v0
.end method

.method public static contains([JJ)Z
    .registers 10
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .line 103
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v1, :cond_11

    aget-wide v4, v0, v3

    .line 104
    .local v4, "value":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_e

    .line 105
    const/4 v2, 0x1

    return v2

    .line 103
    .end local v4    # "value":J
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 108
    .end local v0    # "arr$":[J
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_11
    return v2
.end method

.method private static copyOf([JI)[J
    .registers 5
    .param p0, "original"    # [J
    .param p1, "length"    # I

    .line 342
    new-array v0, p1, [J

    .line 343
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    return-object v0
.end method

.method public static ensureCapacity([JII)[J
    .registers 9
    .param p0, "array"    # [J
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 333
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

    .line 334
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

    .line 335
    array-length v0, p0

    if-ge v0, p1, :cond_30

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->copyOf([JI)[J

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, p0

    :goto_31
    return-object v0
.end method

.method public static fromByteArray([B)J
    .registers 16
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 289
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
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

    .line 291
    aget-byte v7, p0, v2

    aget-byte v8, p0, v3

    aget-byte v9, p0, v5

    const/4 v0, 0x3

    aget-byte v10, p0, v0

    const/4 v0, 0x4

    aget-byte v11, p0, v0

    const/4 v0, 0x5

    aget-byte v12, p0, v0

    const/4 v0, 0x6

    aget-byte v13, p0, v0

    const/4 v0, 0x7

    aget-byte v14, p0, v0

    invoke-static/range {v7 .. v14}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fromBytes(BBBBBBBB)J
    .registers 15
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B
    .param p4, "b5"    # B
    .param p5, "b6"    # B
    .param p6, "b7"    # B
    .param p7, "b8"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 305
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    int-to-long v4, p1

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    int-to-long v4, p2

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    int-to-long v4, p3

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    int-to-long v4, p4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    int-to-long v4, p5

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    int-to-long v4, p6

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    int-to-long v4, p7

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hashCode(J)I
    .registers 4
    .param p0, "value"    # J

    .line 77
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static indexOf([JJ)I
    .registers 5
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .line 121
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static indexOf([JJII)I
    .registers 9
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 127
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_d

    .line 128
    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_a

    .line 129
    return v0

    .line 127
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "i":I
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([J[J)I
    .registers 10
    .param p0, "array"    # [J
    .param p1, "target"    # [J

    .line 147
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 150
    return v1

    .line 154
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2d

    .line 155
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2c

    .line 156
    add-int v3, v0, v2

    aget-wide v3, p0, v3

    aget-wide v5, p1, v2

    cmp-long v7, v3, v5

    if-eqz v7, :cond_29

    .line 157
    nop

    .line 154
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 155
    .restart local v2    # "j":I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 160
    .end local v2    # "j":I
    :cond_2c
    return v0

    .line 162
    .end local v0    # "i":I
    :cond_2d
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [J

    .line 357
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    array-length v0, p1

    if-nez v0, :cond_9

    .line 359
    const-string v0, ""

    return-object v0

    .line 363
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 364
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-wide v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 365
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 366
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 368
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([JJ)I
    .registers 5
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .line 175
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([JJII)I
    .registers 9
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 181
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p3, :cond_e

    .line 182
    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_b

    .line 183
    return v0

    .line 181
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 186
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
            "[J>;"
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .registers 7
    .param p0, "array"    # [J

    .line 217
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

    .line 218
    aget-wide v0, p0, v1

    .line 219
    .local v0, "max":J
    nop

    .local v2, "i":I
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_1c

    .line 220
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_19

    .line 221
    aget-wide v0, p0, v2

    .line 219
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 224
    .end local v2    # "i":I
    :cond_1c
    return-wide v0
.end method

.method public static varargs min([J)J
    .registers 7
    .param p0, "array"    # [J

    .line 198
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

    .line 199
    aget-wide v0, p0, v1

    .line 200
    .local v0, "min":J
    nop

    .local v2, "i":I
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_1c

    .line 201
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_19

    .line 202
    aget-wide v0, p0, v2

    .line 200
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 205
    .end local v2    # "i":I
    :cond_1c
    return-wide v0
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .line 423
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v0, :cond_c

    .line 424
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object v0

    return-object v0

    .line 427
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 429
    .local v1, "len":I
    new-array v2, v1, [J

    .line 430
    .local v2, "array":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_27

    .line 432
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 430
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 434
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method

.method public static toByteArray(J)[B
    .registers 6
    .param p0, "value"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 263
    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, 0x38

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x30

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/16 v2, 0x28

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    shr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    long-to-int v0, p0

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    return-object v1
.end method
