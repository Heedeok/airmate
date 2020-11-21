.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;,
        Lcom/google/common/primitives/Chars$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([CCII)I
    .registers 5
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([CCII)I
    .registers 5
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([C)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 459
    array-length v0, p0

    if-nez v0, :cond_8

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 462
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([C)V

    return-object v0
.end method

.method public static checkedCast(J)C
    .registers 8
    .param p0, "value"    # J

    .line 80
    long-to-int v0, p0

    int-to-char v0, v0

    .line 81
    .local v0, "result":C
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

    .line 82
    return v0
.end method

.method public static compare(CC)I
    .registers 3
    .param p0, "a"    # C
    .param p1, "b"    # C

    .line 113
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[C)[C
    .registers 10
    .param p0, "arrays"    # [[C

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[C
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

    .line 262
    .local v5, "array":[C
    array-length v6, v5

    add-int/2addr v4, v6

    .line 261
    .end local v5    # "array":[C
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 264
    .end local v0    # "i$":I
    .end local v1    # "arr$":[[C
    .end local v2    # "len$":I
    :cond_f
    new-array v0, v4, [C

    .line 265
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 266
    .local v1, "pos":I
    move-object v2, p0

    .local v2, "arr$":[[C
    array-length v5, v2

    move v6, v1

    const/4 v1, 0x0

    .local v1, "i$":I
    .local v5, "len$":I
    .local v6, "pos":I
    :goto_16
    if-ge v1, v5, :cond_23

    aget-object v7, v2, v1

    .line 267
    .local v7, "array":[C
    array-length v8, v7

    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    array-length v8, v7

    add-int/2addr v6, v8

    .line 266
    .end local v7    # "array":[C
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 270
    .end local v1    # "i$":I
    .end local v2    # "arr$":[[C
    .end local v5    # "len$":I
    :cond_23
    return-object v0
.end method

.method public static contains([CC)Z
    .registers 7
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 126
    move-object v0, p0

    .local v0, "arr$":[C
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v1, :cond_f

    aget-char v4, v0, v3

    .line 127
    .local v4, "value":C
    if-ne v4, p1, :cond_c

    .line 128
    const/4 v2, 0x1

    return v2

    .line 126
    .end local v4    # "value":C
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 131
    .end local v0    # "arr$":[C
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_f
    return v2
.end method

.method private static copyOf([CI)[C
    .registers 5
    .param p0, "original"    # [C
    .param p1, "length"    # I

    .line 349
    new-array v0, p1, [C

    .line 350
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    return-object v0
.end method

.method public static ensureCapacity([CII)[C
    .registers 9
    .param p0, "array"    # [C
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 340
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

    .line 341
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

    .line 342
    array-length v0, p0

    if-ge v0, p1, :cond_30

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Chars;->copyOf([CI)[C

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, p0

    :goto_31
    return-object v0
.end method

.method public static fromByteArray([B)C
    .registers 8
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 305
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

    .line 307
    aget-byte v0, p0, v1

    aget-byte v1, p0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    return v0
.end method

.method public static fromBytes(BB)C
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 319
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static hashCode(C)I
    .registers 1
    .param p0, "value"    # C

    .line 68
    return p0
.end method

.method public static indexOf([CC)I
    .registers 4
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 144
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static indexOf([CCII)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 150
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 151
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 152
    return v0

    .line 150
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "i":I
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([C[C)I
    .registers 7
    .param p0, "array"    # [C
    .param p1, "target"    # [C

    .line 170
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 173
    return v1

    .line 177
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 178
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2a

    .line 179
    add-int v3, v0, v2

    aget-char v3, p0, v3

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_27

    .line 180
    nop

    .line 177
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 178
    .restart local v2    # "j":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 183
    .end local v2    # "j":I
    :cond_2a
    return v0

    .line 185
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [C

    .line 364
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    array-length v0, p1

    .line 366
    .local v0, "len":I
    if-nez v0, :cond_9

    .line 367
    const-string v1, ""

    return-object v1

    .line 370
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    mul-int v2, v2, v3

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 372
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-char v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_2b

    .line 374
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 376
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf([CC)I
    .registers 4
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 198
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([CCII)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 204
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 205
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 206
    return v0

    .line 204
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 209
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
            "[C>;"
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([C)C
    .registers 4
    .param p0, "array"    # [C

    .line 240
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

    .line 241
    aget-char v0, p0, v1

    .line 242
    .local v0, "max":C
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 243
    aget-char v2, p0, v1

    if-le v2, v0, :cond_18

    .line 244
    aget-char v0, p0, v1

    .line 242
    :cond_18
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 247
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static varargs min([C)C
    .registers 4
    .param p0, "array"    # [C

    .line 221
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

    .line 222
    aget-char v0, p0, v1

    .line 223
    .local v0, "min":C
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 224
    aget-char v2, p0, v1

    if-ge v2, v0, :cond_18

    .line 225
    aget-char v0, p0, v1

    .line 223
    :cond_18
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 228
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static saturatedCast(J)C
    .registers 5
    .param p0, "value"    # J

    .line 94
    const-wide/32 v0, 0xffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_b

    .line 95
    const v0, 0xffff

    return v0

    .line 97
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_13

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_13
    long-to-int v0, p0

    int-to-char v0, v0

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[C
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 430
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v0, :cond_c

    .line 431
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 434
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 435
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 436
    .local v1, "len":I
    new-array v2, v1, [C

    .line 437
    .local v2, "array":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_27

    .line 439
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v2, v3

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 441
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method

.method public static toByteArray(C)[B
    .registers 4
    .param p0, "value"    # C
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 286
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
