.class public final Lcom/google/common/math/BigIntegerMath;
.super Ljava/lang/Object;
.source "BigIntegerMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SQRT2_PRECOMPUTE_THRESHOLD:I = 0x100
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 118
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .registers 8
    .param p0, "n"    # I
    .param p1, "k"    # I

    .line 377
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 378
    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 379
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, p0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const-string v3, "k (%s) > n (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 380
    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_2b

    .line 381
    sub-int p1, p0, p1

    .line 383
    :cond_2b
    sget-object v1, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    array-length v1, v1

    if-ge p1, v1, :cond_3f

    sget-object v1, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    aget v1, v1, p1

    if-gt p0, v1, :cond_3f

    .line 384
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->binomial(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 386
    :cond_3f
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 387
    .local v1, "result":Ljava/math/BigInteger;
    nop

    .local v0, "i":I
    :goto_42
    if-ge v0, p1, :cond_5d

    .line 388
    sub-int v2, p0, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 389
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 391
    .end local v0    # "i":I
    :cond_5d
    return-object v1
.end method

.method public static divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 6
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 275
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 276
    .local v0, "pDec":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 277
    .local v1, "qDec":Ljava/math/BigDecimal;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public static factorial(I)Ljava/math/BigInteger;
    .registers 22
    .param p0, "n"    # I

    .line 293
    move/from16 v0, p0

    const-string v1, "n"

    invoke-static {v1, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 296
    sget-object v1, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 297
    sget-object v1, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 301
    :cond_15
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v1

    mul-int v1, v1, v0

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    const/16 v3, 0x40

    invoke-static {v1, v3, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v1

    .line 302
    .local v1, "approxSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .local v2, "bignums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    sget-object v4, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    array-length v4, v4

    .line 306
    .local v4, "startingNumber":I
    sget-object v5, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    add-int/lit8 v6, v4, -0x1

    aget-wide v6, v5, v6

    .line 308
    .local v6, "product":J
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    .line 309
    .local v5, "shift":I
    shr-long/2addr v6, v5

    .line 312
    sget-object v8, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v6, v7, v8}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 313
    .local v8, "productBits":I
    int-to-long v10, v4

    sget-object v12, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v10, v11, v12}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v10

    add-int/2addr v10, v9

    .line 315
    .local v10, "bits":I
    add-int/lit8 v11, v10, -0x1

    shl-int v11, v9, v11

    .line 318
    .local v11, "nextPowerOfTwo":I
    int-to-long v12, v4

    .local v12, "num":J
    :goto_4d
    int-to-long v14, v0

    const-wide/16 v16, 0x1

    cmp-long v18, v12, v14

    if-gtz v18, :cond_87

    .line 320
    int-to-long v14, v11

    and-long/2addr v14, v12

    const-wide/16 v18, 0x0

    cmp-long v20, v14, v18

    if-eqz v20, :cond_60

    .line 321
    shl-int/lit8 v11, v11, 0x1

    .line 322
    add-int/lit8 v10, v10, 0x1

    .line 325
    :cond_60
    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v14

    .line 326
    .local v14, "tz":I
    shr-long v18, v12, v14

    .line 327
    .local v18, "normalizedNum":J
    add-int/2addr v5, v14

    .line 329
    sub-int v15, v10, v14

    .line 331
    .local v15, "normalizedBits":I
    add-int v9, v15, v8

    if-lt v9, v3, :cond_77

    .line 332
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const-wide/16 v6, 0x1

    .line 334
    const/4 v8, 0x0

    .line 336
    :cond_77
    mul-long v6, v6, v18

    .line 337
    sget-object v9, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v6, v7, v9}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v9

    const/16 v20, 0x1

    add-int/lit8 v8, v9, 0x1

    .line 318
    .end local v14    # "tz":I
    .end local v15    # "normalizedBits":I
    .end local v18    # "normalizedNum":J
    add-long v12, v12, v16

    const/4 v9, 0x1

    goto :goto_4d

    .line 340
    .end local v12    # "num":J
    :cond_87
    cmp-long v3, v6, v16

    if-lez v3, :cond_92

    .line 341
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_92
    invoke-static {v2}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method static fitsInLong(Ljava/math/BigInteger;)Z
    .registers 3
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 397
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isPowerOfTwo(Ljava/math/BigInteger;)Z
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 58
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_16

    invoke-virtual {p0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method static listProduct(Ljava/util/List;)Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .line 348
    .local p0, "nums":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static listProduct(Ljava/util/List;II)Ljava/math/BigInteger;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;II)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .line 352
    .local p0, "nums":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    sub-int v0, p2, p1

    packed-switch v0, :pswitch_data_52

    .line 363
    add-int v0, p2, p1

    ushr-int/lit8 v0, v0, 0x1

    .line 364
    .local v0, "m":I
    invoke-static {p0, p1, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0, v0, p2}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 360
    .end local v0    # "m":I
    :pswitch_16
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 358
    :pswitch_35
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 356
    :pswitch_48
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    .line 354
    :pswitch_4f
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v0

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_48
        :pswitch_35
        :pswitch_16
    .end packed-switch
.end method

.method public static log10(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .registers 11
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 131
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 132
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 133
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->log10(JLjava/math/RoundingMode;)I

    move-result v0

    return v0

    .line 137
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v0, "powersOf10":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 139
    .local v1, "powerOf10":Ljava/math/BigInteger;
    :goto_1d
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x2

    if-ltz v2, :cond_2c

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1d

    .line 143
    :cond_2c
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 144
    .local v2, "floorPow":Ljava/math/BigInteger;
    const/4 v4, 0x0

    .line 145
    .local v4, "floorLog":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    .local v5, "i":I
    .local v6, "halfPowerSquared":Ljava/math/BigInteger;
    :goto_36
    if-ltz v5, :cond_50

    .line 146
    .end local v6    # "halfPowerSquared":Ljava/math/BigInteger;
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    .line 147
    .local v6, "powOf10":Ljava/math/BigInteger;
    mul-int/lit8 v4, v4, 0x2

    .line 148
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 149
    .local v7, "tenPow":Ljava/math/BigInteger;
    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ltz v8, :cond_4d

    .line 150
    move-object v2, v7

    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 145
    .end local v6    # "powOf10":Ljava/math/BigInteger;
    .end local v7    # "tenPow":Ljava/math/BigInteger;
    :cond_4d
    add-int/lit8 v5, v5, -0x1

    goto :goto_36

    .line 154
    .end local v5    # "i":I
    .local v6, "halfPowerSquared":Ljava/math/BigInteger;
    :cond_50
    sget-object v5, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_8e

    .line 174
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 170
    .end local v6    # "halfPowerSquared":Ljava/math/BigInteger;
    :pswitch_61
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 171
    .local v5, "x2":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v6, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 172
    .local v3, "halfPowerSquared":Ljava/math/BigInteger;
    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gtz v6, :cond_77

    move v6, v4

    goto :goto_79

    :cond_77
    add-int/lit8 v6, v4, 0x1

    :goto_79
    return v6

    .line 164
    .end local v3    # "halfPowerSquared":Ljava/math/BigInteger;
    .end local v5    # "x2":Ljava/math/BigInteger;
    :pswitch_7a
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    move v3, v4

    goto :goto_84

    :cond_82
    add-int/lit8 v3, v4, 0x1

    :goto_84
    return v3

    .line 156
    :pswitch_85
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 160
    :pswitch_8c
    return v4

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_85
        :pswitch_8c
        :pswitch_8c
        :pswitch_7a
        :pswitch_7a
        :pswitch_61
        :pswitch_61
        :pswitch_61
    .end packed-switch
.end method

.method public static log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .registers 6
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .line 71
    const-string v0, "x"

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 72
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 73
    .local v0, "logFloor":I
    sget-object v1, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_60

    .line 107
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 87
    :pswitch_22
    const/16 v1, 0x100

    if-ge v0, v1, :cond_37

    .line 88
    sget-object v2, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 90
    .local v1, "halfPower":Ljava/math/BigInteger;
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_34

    .line 91
    return v0

    .line 93
    :cond_34
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 102
    .end local v1    # "halfPower":Ljava/math/BigInteger;
    :cond_37
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 103
    .local v1, "x2":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 104
    .local v2, "logX2Floor":I
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_4a

    move v3, v0

    goto :goto_4c

    :cond_4a
    add-int/lit8 v3, v0, 0x1

    :goto_4c
    return v3

    .line 82
    .end local v1    # "x2":Ljava/math/BigInteger;
    .end local v2    # "logX2Floor":I
    :pswitch_4d
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result v1

    if-eqz v1, :cond_55

    move v1, v0

    goto :goto_57

    :cond_55
    add-int/lit8 v1, v0, 0x1

    :goto_57
    return v1

    .line 75
    :pswitch_58
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 78
    :pswitch_5f
    return v0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_58
        :pswitch_5f
        :pswitch_5f
        :pswitch_4d
        :pswitch_4d
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public static sqrt(Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 5
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 188
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 189
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 190
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->sqrt(JLjava/math/RoundingMode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 192
    :cond_18
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 193
    .local v0, "sqrtFloor":Ljava/math/BigInteger;
    sget-object v1, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_64

    .line 213
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 205
    :pswitch_2e
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 211
    .local v1, "halfSquare":Ljava/math/BigInteger;
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_3e

    move-object v2, v0

    goto :goto_44

    :cond_3e
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_44
    return-object v2

    .line 201
    .end local v1    # "halfSquare":Ljava/math/BigInteger;
    :pswitch_45
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    move-object v1, v0

    goto :goto_57

    :cond_51
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_57
    return-object v1

    .line 195
    :pswitch_58
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 198
    :pswitch_63
    return-object v0

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_58
        :pswitch_63
        :pswitch_63
        :pswitch_45
        :pswitch_45
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method private static sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 263
    invoke-static {p0}, Lcom/google/common/math/DoubleUtils;->bigToDouble(Ljava/math/BigInteger;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/common/math/DoubleMath;->roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 239
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v0

    .line 240
    .local v0, "log2":I
    const/16 v1, 0x3ff

    if-ge v0, v1, :cond_f

    .line 241
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_21

    .line 243
    :cond_f
    add-int/lit8 v1, v0, -0x34

    and-int/lit8 v1, v1, -0x2

    .line 248
    .local v1, "shift":I
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    shr-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 250
    .local v1, "sqrt0":Ljava/math/BigInteger;
    :goto_21
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 251
    .local v2, "sqrt1":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 252
    return-object v1

    .line 255
    :cond_35
    move-object v1, v2

    .line 256
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 257
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_35

    .line 258
    return-object v1
.end method
