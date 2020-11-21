.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static BIGGEST_BINOMIALS:[I = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FACTORIALS:[I

.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final HALF_POWERS_OF_10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POWERS_OF_10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 149
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_24

    sput-object v1, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    .line 153
    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/google/common/math/IntMath;->HALF_POWERS_OF_10:[I

    .line 440
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/google/common/math/IntMath;->FACTORIALS:[I

    .line 488
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/common/math/IntMath;->BIGGEST_BINOMIALS:[I

    return-void

    nop

    :array_24
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_3c
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_54
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_72
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .registers 8
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .line 463
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 464
    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 465
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

    .line 466
    shr-int/lit8 v2, p0, 0x1

    if-le p1, v2, :cond_2b

    .line 467
    sub-int p1, p0, p1

    .line 469
    :cond_2b
    sget-object v2, Lcom/google/common/math/IntMath;->BIGGEST_BINOMIALS:[I

    array-length v2, v2

    if-ge p1, v2, :cond_4f

    sget-object v2, Lcom/google/common/math/IntMath;->BIGGEST_BINOMIALS:[I

    aget v2, v2, p1

    if-le p0, v2, :cond_37

    goto :goto_4f

    .line 472
    :cond_37
    packed-switch p1, :pswitch_data_54

    .line 478
    const-wide/16 v1, 0x1

    .line 479
    .local v1, "result":J
    goto :goto_3f

    .line 476
    .end local v1    # "result":J
    :pswitch_3d
    return p0

    .line 474
    :pswitch_3e
    return v1

    .line 479
    .local v0, "i":I
    .restart local v1    # "result":J
    :goto_3f
    if-ge v0, p1, :cond_4d

    .line 480
    sub-int v3, p0, v0

    int-to-long v3, v3

    mul-long v1, v1, v3

    .line 481
    add-int/lit8 v3, v0, 0x1

    int-to-long v3, v3

    div-long/2addr v1, v3

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 483
    .end local v0    # "i":I
    :cond_4d
    long-to-int v0, v1

    return v0

    .line 470
    .end local v1    # "result":J
    :cond_4f
    :goto_4f
    const v0, 0x7fffffff

    return v0

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3d
    .end packed-switch
.end method

.method public static checkedAdd(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 354
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 355
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 356
    long-to-int v2, v0

    return v2
.end method

.method public static checkedMultiply(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 376
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 377
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 378
    long-to-int v2, v0

    return v2
.end method

.method public static checkedPow(II)I
    .registers 7
    .param p0, "b"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "failing tests"
    .end annotation

    .line 391
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 392
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_68

    .line 406
    move v0, p0

    const/4 p0, 0x1

    goto :goto_39

    .line 400
    :pswitch_e
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 401
    shl-int v0, v2, p1

    return v0

    .line 396
    :pswitch_1a
    return v2

    .line 394
    :pswitch_1b
    if-nez p1, :cond_1f

    const/4 v1, 0x1

    nop

    :cond_1f
    return v1

    .line 398
    :pswitch_20
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_26

    const/4 v0, 0x1

    nop

    :cond_26
    return v0

    .line 403
    :pswitch_27
    const/16 v3, 0x20

    if-ge p1, v3, :cond_2d

    const/4 v1, 0x1

    nop

    :cond_2d
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 404
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_37

    shl-int v0, v2, p1

    goto :goto_38

    :cond_37
    shl-int/2addr v0, p1

    :goto_38
    return v0

    .line 406
    .local v0, "b":I
    .local p0, "accum":I
    :cond_39
    :goto_39
    nop

    .line 408
    packed-switch p1, :pswitch_data_76

    .line 414
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_4c

    .line 415
    invoke-static {p0, v0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result p0

    goto :goto_4c

    .line 412
    :pswitch_46
    invoke-static {p0, v0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    return v1

    .line 410
    :pswitch_4b
    return p0

    .line 417
    :cond_4c
    :goto_4c
    shr-int/lit8 p1, p1, 0x1

    .line 418
    if-lez p1, :cond_39

    .line 419
    const v3, -0xb504

    if-gt v3, v0, :cond_57

    const/4 v3, 0x1

    goto :goto_58

    :cond_57
    const/4 v3, 0x0

    :goto_58
    const v4, 0xb504

    if-gt v0, v4, :cond_5f

    const/4 v4, 0x1

    goto :goto_60

    :cond_5f
    const/4 v4, 0x0

    :goto_60
    and-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 420
    mul-int v0, v0, v0

    goto :goto_39

    nop

    :pswitch_data_68
    .packed-switch -0x2
        :pswitch_27
        :pswitch_20
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_46
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 365
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 366
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 367
    long-to-int v2, v0

    return v2
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .registers 12
    .param p0, "p"    # I
    .param p1, "q"    # I
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 248
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    if-eqz p1, :cond_6d

    .line 252
    div-int v0, p0, p1

    .line 253
    .local v0, "div":I
    mul-int v1, p1, v0

    sub-int v1, p0, v1

    .line 255
    .local v1, "rem":I
    if-nez v1, :cond_e

    .line 256
    return v0

    .line 266
    :cond_e
    xor-int v2, p0, p1

    shr-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    or-int/2addr v2, v3

    .line 268
    .local v2, "signum":I
    sget-object v4, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_76

    .line 298
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 287
    :pswitch_26
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 288
    .local v4, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v6, v4

    sub-int v6, v4, v6

    .line 291
    .local v6, "cmpRemToHalfDivisor":I
    if-nez v6, :cond_4c

    .line 292
    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v7, :cond_4b

    sget-object v7, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v7, :cond_3d

    const/4 v7, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v7, 0x0

    :goto_3e
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_44

    const/4 v8, 0x1

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    :goto_45
    and-int/2addr v7, v8

    if-eqz v7, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v3, 0x0

    nop

    :cond_4b
    :goto_4b
    goto :goto_66

    .line 294
    :cond_4c
    if-lez v6, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    .line 296
    .local v3, "increment":Z
    :goto_50
    goto :goto_66

    .line 279
    .end local v3    # "increment":Z
    .end local v4    # "absRem":I
    .end local v6    # "cmpRemToHalfDivisor":I
    :pswitch_51
    if-lez v2, :cond_54

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    .line 280
    .restart local v3    # "increment":Z
    :goto_55
    goto :goto_66

    .line 276
    .end local v3    # "increment":Z
    :pswitch_56
    const/4 v3, 0x1

    .line 277
    .restart local v3    # "increment":Z
    goto :goto_66

    .line 282
    .end local v3    # "increment":Z
    :pswitch_58
    if-gez v2, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v3, 0x0

    .line 283
    .restart local v3    # "increment":Z
    :goto_5c
    goto :goto_66

    .line 270
    .end local v3    # "increment":Z
    :pswitch_5d
    if-nez v1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v3, 0x0

    :goto_61
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 273
    :pswitch_64
    const/4 v3, 0x0

    .line 274
    .restart local v3    # "increment":Z
    nop

    .line 300
    :goto_66
    if-eqz v3, :cond_6b

    add-int v4, v0, v2

    goto :goto_6c

    :cond_6b
    move v4, v0

    :goto_6c
    return v4

    .line 250
    .end local v0    # "div":I
    .end local v1    # "rem":I
    .end local v2    # "signum":I
    .end local v3    # "increment":Z
    :cond_6d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "/ by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_64
        :pswitch_58
        :pswitch_56
        :pswitch_51
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method public static factorial(I)I
    .registers 2
    .param p0, "n"    # I

    .line 436
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 437
    sget-object v0, Lcom/google/common/math/IntMath;->FACTORIALS:[I

    array-length v0, v0

    if-ge p0, v0, :cond_f

    sget-object v0, Lcom/google/common/math/IntMath;->FACTORIALS:[I

    aget v0, v0, p0

    goto :goto_12

    :cond_f
    const v0, 0x7fffffff

    :goto_12
    return v0
.end method

.method public static gcd(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 337
    const-string v0, "a"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 338
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 340
    :goto_a
    if-eqz p1, :cond_11

    .line 341
    move v0, p1

    .line 342
    .local v0, "t":I
    rem-int p1, p0, p1

    .line 343
    move p0, v0

    .line 344
    .end local v0    # "t":I
    goto :goto_a

    .line 345
    :cond_11
    return p0
.end method

.method public static isPowerOfTwo(I)Z
    .registers 5
    .param p0, "x"    # I

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_e

    const/4 v0, 0x1

    nop

    :cond_e
    and-int/2addr v0, v2

    return v0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .line 117
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 118
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v0

    .line 119
    .local v0, "logFloor":I
    sget-object v1, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    aget v1, v1, v0

    .line 120
    .local v1, "floorPow":I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3a

    .line 136
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 134
    :pswitch_1e
    sget-object v2, Lcom/google/common/math/IntMath;->HALF_POWERS_OF_10:[I

    aget v2, v2, v0

    if-gt p0, v2, :cond_26

    move v2, v0

    goto :goto_28

    :cond_26
    add-int/lit8 v2, v0, 0x1

    :goto_28
    return v2

    .line 129
    :pswitch_29
    if-ne p0, v1, :cond_2d

    move v2, v0

    goto :goto_2f

    :cond_2d
    add-int/lit8 v2, v0, 0x1

    :goto_2f
    return v2

    .line 122
    :pswitch_30
    if-ne p0, v1, :cond_34

    const/4 v2, 0x1

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 126
    :pswitch_38
    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_30
        :pswitch_38
        :pswitch_38
        :pswitch_29
        :pswitch_29
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .registers 4
    .param p0, "x"    # I

    .line 141
    const/4 v0, 0x1

    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 142
    sget-object v2, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    aget v2, v2, v1

    if-ge p0, v2, :cond_10

    .line 143
    add-int/lit8 v0, v1, -0x1

    return v0

    .line 141
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    .end local v1    # "i":I
    :cond_13
    sget-object v1, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .line 76
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 77
    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 100
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :pswitch_16
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 94
    .local v0, "leadingZeros":I
    const v1, -0x4afb0ccd

    ushr-int/2addr v1, v0

    .line 96
    .local v1, "cmp":I
    rsub-int/lit8 v2, v0, 0x1f

    .line 97
    .local v2, "logFloor":I
    if-gt p0, v1, :cond_24

    move v3, v2

    goto :goto_26

    :cond_24
    add-int/lit8 v3, v2, 0x1

    :goto_26
    return v3

    .line 87
    .end local v0    # "leadingZeros":I
    .end local v1    # "cmp":I
    .end local v2    # "logFloor":I
    :pswitch_27
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0

    .line 79
    :pswitch_30
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 83
    :pswitch_37
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_30
        :pswitch_37
        :pswitch_37
        :pswitch_27
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static mod(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "m"    # I

    .line 318
    if-lez p1, :cond_b

    .line 321
    rem-int v0, p0, p1

    .line 322
    .local v0, "result":I
    if-ltz v0, :cond_8

    move v1, v0

    goto :goto_a

    :cond_8
    add-int v1, v0, p1

    :goto_a
    return v1

    .line 319
    .end local v0    # "result":I
    :cond_b
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pow(II)I
    .registers 5
    .param p0, "b"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "failing tests"
    .end annotation

    .line 167
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 168
    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_46

    .line 184
    move v0, p0

    const/4 p0, 0x1

    goto :goto_30

    .line 176
    :pswitch_f
    if-ge p1, v0, :cond_14

    shl-int v1, v2, p1

    nop

    :cond_14
    return v1

    .line 172
    :pswitch_15
    return v2

    .line 170
    :pswitch_16
    if-nez p1, :cond_1a

    const/4 v1, 0x1

    nop

    :cond_1a
    return v1

    .line 174
    :pswitch_1b
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, -0x1

    :goto_21
    return v2

    .line 178
    :pswitch_22
    if-ge p1, v0, :cond_2f

    .line 179
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2b

    shl-int v0, v2, p1

    goto :goto_2e

    :cond_2b
    shl-int v0, v2, p1

    neg-int v0, v0

    :goto_2e
    return v0

    .line 181
    :cond_2f
    return v1

    .line 184
    .local v0, "b":I
    .local p0, "accum":I
    :goto_30
    nop

    .line 185
    packed-switch p1, :pswitch_data_54

    .line 191
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    .line 189
    :pswitch_3a
    mul-int v1, v0, p0

    return v1

    .line 187
    :pswitch_3d
    return p0

    .line 191
    :cond_3e
    move v1, v0

    :goto_3f
    mul-int p0, p0, v1

    .line 192
    mul-int v0, v0, v0

    .line 184
    shr-int/lit8 p1, p1, 0x1

    goto :goto_30

    :pswitch_data_46
    .packed-switch -0x2
        :pswitch_22
        :pswitch_1b
        :pswitch_16
        :pswitch_15
        :pswitch_f
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3a
    .end packed-switch
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .registers 7
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .line 207
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 208
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v0

    .line 209
    .local v0, "sqrtFloor":I
    sget-object v1, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_44

    .line 229
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 221
    :pswitch_1c
    mul-int v1, v0, v0

    add-int/2addr v1, v0

    .line 227
    .local v1, "halfSquare":I
    if-gt p0, v1, :cond_23

    const/4 v4, 0x1

    goto :goto_24

    :cond_23
    const/4 v4, 0x0

    :goto_24
    if-gez v1, :cond_28

    const/4 v2, 0x1

    nop

    :cond_28
    or-int/2addr v2, v4

    if-eqz v2, :cond_2d

    move v2, v0

    goto :goto_2f

    :cond_2d
    add-int/lit8 v2, v0, 0x1

    :goto_2f
    return v2

    .line 217
    .end local v1    # "halfSquare":I
    :pswitch_30
    mul-int v1, v0, v0

    if-ne v1, p0, :cond_36

    move v1, v0

    goto :goto_38

    :cond_36
    add-int/lit8 v1, v0, 0x1

    :goto_38
    return v1

    .line 211
    :pswitch_39
    mul-int v1, v0, v0

    if-ne v1, p0, :cond_3f

    const/4 v2, 0x1

    nop

    :cond_3f
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 214
    :pswitch_42
    return v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_39
        :pswitch_42
        :pswitch_42
        :pswitch_30
        :pswitch_30
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .registers 3
    .param p0, "x"    # I

    .line 236
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
