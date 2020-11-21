.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BBII)I
    .registers 5
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BBII)I
    .registers 5
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 261
    array-length v0, p0

    if-nez v0, :cond_8

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 264
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([B)V

    return-object v0
.end method

.method public static varargs concat([[B)[B
    .registers 10
    .param p0, "arrays"    # [[B

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[B
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

    .line 173
    .local v5, "array":[B
    array-length v6, v5

    add-int/2addr v4, v6

    .line 172
    .end local v5    # "array":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 175
    .end local v0    # "i$":I
    .end local v1    # "arr$":[[B
    .end local v2    # "len$":I
    :cond_f
    new-array v0, v4, [B

    .line 176
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 177
    .local v1, "pos":I
    move-object v2, p0

    .local v2, "arr$":[[B
    array-length v5, v2

    move v6, v1

    const/4 v1, 0x0

    .local v1, "i$":I
    .local v5, "len$":I
    .local v6, "pos":I
    :goto_16
    if-ge v1, v5, :cond_23

    aget-object v7, v2, v1

    .line 178
    .local v7, "array":[B
    array-length v8, v7

    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    array-length v8, v7

    add-int/2addr v6, v8

    .line 177
    .end local v7    # "array":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 181
    .end local v1    # "i$":I
    .end local v2    # "arr$":[[B
    .end local v5    # "len$":I
    :cond_23
    return-object v0
.end method

.method public static contains([BB)Z
    .registers 7
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .line 75
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v1, :cond_f

    aget-byte v4, v0, v3

    .line 76
    .local v4, "value":B
    if-ne v4, p1, :cond_c

    .line 77
    const/4 v2, 0x1

    return v2

    .line 75
    .end local v4    # "value":B
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 80
    .end local v0    # "arr$":[B
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_f
    return v2
.end method

.method private static copyOf([BI)[B
    .registers 5
    .param p0, "original"    # [B
    .param p1, "length"    # I

    .line 211
    new-array v0, p1, [B

    .line 212
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    return-object v0
.end method

.method public static ensureCapacity([BII)[B
    .registers 9
    .param p0, "array"    # [B
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 202
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

    .line 203
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

    .line 204
    array-length v0, p0

    if-ge v0, p1, :cond_30

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Bytes;->copyOf([BI)[B

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, p0

    :goto_31
    return-object v0
.end method

.method public static hashCode(B)I
    .registers 1
    .param p0, "value"    # B

    .line 62
    return p0
.end method

.method public static indexOf([BB)I
    .registers 4
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .line 93
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static indexOf([BBII)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "target"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 99
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 100
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 101
    return v0

    .line 99
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "i":I
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([B[B)I
    .registers 7
    .param p0, "array"    # [B
    .param p1, "target"    # [B

    .line 119
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 122
    return v1

    .line 126
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 127
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2a

    .line 128
    add-int v3, v0, v2

    aget-byte v3, p0, v3

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_27

    .line 129
    nop

    .line 126
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 127
    .restart local v2    # "j":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 132
    .end local v2    # "j":I
    :cond_2a
    return v0

    .line 134
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOf([BB)I
    .registers 4
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .line 147
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([BBII)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "target"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 153
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 154
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 155
    return v0

    .line 153
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 158
    .end local v0    # "i":I
    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[B"
        }
    .end annotation

    .line 232
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v0, :cond_c

    .line 233
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 236
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 238
    .local v1, "len":I
    new-array v2, v1, [B

    .line 239
    .local v2, "array":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_27

    .line 241
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 243
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method
