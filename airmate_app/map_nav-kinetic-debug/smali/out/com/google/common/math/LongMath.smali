.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final BIGGEST_BINOMIALS:[I

.field static final BIGGEST_SIMPLE_BINOMIALS:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FACTORIALS:[J

.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final HALF_POWERS_OF_10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POWERS_OF_10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 155
    const/16 v0, 0x13

    new-array v1, v0, [J

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    .line 180
    new-array v0, v0, [J

    fill-array-data v0, :array_7c

    sput-object v0, Lcom/google/common/math/LongMath;->HALF_POWERS_OF_10:[J

    .line 560
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_cc

    sput-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    .line 623
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_124

    sput-object v0, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    .line 632
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_16c

    sput-object v0, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    return-void

    :array_2c
    .array-data 8
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
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_7c
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    :array_cc
    .array-data 8
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
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    :array_124
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    :array_16c
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .registers 8
    .param p0, "n"    # I
    .param p1, "k"    # I

    .line 591
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 592
    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 593
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

    .line 594
    shr-int/lit8 v2, p0, 0x1

    if-le p1, v2, :cond_2b

    .line 595
    sub-int p1, p0, p1

    .line 597
    :cond_2b
    sget-object v2, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    array-length v2, v2

    if-ge p1, v2, :cond_6a

    sget-object v2, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    aget v2, v2, p1

    if-le p0, v2, :cond_37

    goto :goto_6a

    .line 600
    :cond_37
    const-wide/16 v2, 0x1

    .line 601
    .local v2, "result":J
    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    array-length v4, v4

    if-ge p1, v4, :cond_53

    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    aget v4, v4, p1

    if-gt p0, v4, :cond_53

    .line 603
    nop

    .local v0, "i":I
    :goto_45
    if-ge v0, p1, :cond_69

    .line 604
    sub-int v1, p0, v0

    int-to-long v4, v1

    mul-long v2, v2, v4

    .line 605
    add-int/lit8 v1, v0, 0x1

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 610
    .end local v0    # "i":I
    :cond_53
    nop

    .local v1, "i":I
    :goto_54
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-gt v0, p1, :cond_69

    .line 611
    invoke-static {p0, v0}, Lcom/google/common/math/IntMath;->gcd(II)I

    move-result v1

    .line 612
    .local v1, "d":I
    div-int v4, v0, v1

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 613
    div-int v4, p0, v1

    int-to-long v4, v4

    mul-long v2, v2, v4

    .line 610
    .end local v1    # "d":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    add-int/lit8 p0, p0, -0x1

    goto :goto_54

    .line 616
    .end local v1    # "i":I
    :cond_69
    return-wide v2

    .line 598
    .end local v2    # "result":J
    :cond_6a
    :goto_6a
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public static checkedAdd(JJ)J
    .registers 14
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 452
    add-long v0, p0, p2

    .line 453
    .local v0, "result":J
    xor-long v2, p0, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gez v8, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_17

    const/4 v4, 0x1

    nop

    :cond_17
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 454
    return-wide v0
.end method

.method public static checkedMultiply(JJ)J
    .registers 13
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 477
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const-wide/16 v1, -0x1

    xor-long v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    xor-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    .local v0, "leadingZeros":I
    const/16 v1, 0x41

    if-le v0, v1, :cond_1f

    .line 490
    mul-long v1, p0, p2

    return-wide v1

    .line 492
    :cond_1f
    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 493
    const-wide/16 v4, 0x0

    cmp-long v1, p0, v4

    if-ltz v1, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, p2, v6

    if-eqz v8, :cond_3c

    const/4 v6, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v6, 0x0

    :goto_3d
    or-int/2addr v1, v6

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 494
    mul-long v6, p0, p2

    .line 495
    .local v6, "result":J
    cmp-long v1, p0, v4

    if-eqz v1, :cond_4f

    div-long v4, v6, p0

    cmp-long v1, v4, p2

    if-nez v1, :cond_4e

    goto :goto_4f

    :cond_4e
    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v2, 0x1

    :goto_50
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 496
    return-wide v6
.end method

.method public static checkedPow(JI)J
    .registers 10
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 507
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 508
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x2

    cmp-long v4, p0, v2

    if-ltz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    and-int/2addr v2, v3

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_52

    .line 509
    long-to-int v2, p0

    const-wide/16 v5, -0x1

    packed-switch v2, :pswitch_data_7e

    goto :goto_52

    .line 517
    :pswitch_25
    const/16 v2, 0x3f

    if-ge p2, v2, :cond_2b

    const/4 v0, 0x1

    nop

    :cond_2b
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 518
    shl-long v0, v3, p2

    return-wide v0

    .line 513
    :pswitch_31
    return-wide v3

    .line 511
    :pswitch_32
    if-nez p2, :cond_35

    goto :goto_37

    :cond_35
    const-wide/16 v3, 0x0

    :goto_37
    return-wide v3

    .line 515
    :pswitch_38
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-wide v3, v5

    :goto_3e
    return-wide v3

    .line 520
    :pswitch_3f
    const/16 v2, 0x40

    if-ge p2, v2, :cond_45

    const/4 v0, 0x1

    nop

    :cond_45
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 521
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_4f

    shl-long v0, v3, p2

    goto :goto_51

    :cond_4f
    shl-long v0, v5, p2

    :goto_51
    return-wide v0

    .line 524
    :cond_52
    :goto_52
    nop

    .local v3, "accum":J
    :cond_53
    :goto_53
    move-wide v2, v3

    .line 526
    .end local v3    # "accum":J
    .local v2, "accum":J
    packed-switch p2, :pswitch_data_8c

    .line 532
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_66

    .line 533
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    goto :goto_66

    .line 530
    :pswitch_60
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    return-wide v0

    .line 528
    :pswitch_65
    return-wide v2

    .line 535
    .end local v2    # "accum":J
    .restart local v3    # "accum":J
    :cond_66
    :goto_66
    move-wide v3, v2

    shr-int/lit8 p2, p2, 0x1

    .line 536
    if-lez p2, :cond_53

    .line 537
    const-wide v5, 0xb504f333L

    cmp-long v2, p0, v5

    if-gtz v2, :cond_76

    const/4 v2, 0x1

    goto :goto_77

    :cond_76
    const/4 v2, 0x0

    :goto_77
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 538
    mul-long p0, p0, p0

    goto :goto_53

    nop

    :pswitch_data_7e
    .packed-switch -0x2
        :pswitch_3f
        :pswitch_38
        :pswitch_32
        :pswitch_31
        :pswitch_25
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_65
        :pswitch_60
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .registers 14
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 464
    sub-long v0, p0, p2

    .line 465
    .local v0, "result":J
    xor-long v2, p0, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_17

    const/4 v4, 0x1

    nop

    :cond_17
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 466
    return-wide v0
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .registers 23
    .param p0, "p"    # J
    .param p2, "q"    # J
    .param p4, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 308
    move-object/from16 v0, p4

    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    div-long v1, p0, p2

    .line 310
    .local v1, "div":J
    mul-long v3, p2, v1

    sub-long v3, p0, v3

    .line 312
    .local v3, "rem":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_12

    .line 313
    return-wide v1

    .line 323
    :cond_12
    xor-long v7, p0, p2

    const/16 v9, 0x3f

    shr-long/2addr v7, v9

    long-to-int v7, v7

    const/4 v8, 0x1

    or-int/2addr v7, v8

    .line 325
    .local v7, "signum":I
    sget-object v9, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_7e

    .line 355
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 344
    :pswitch_2c
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 345
    .local v11, "absRem":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    sub-long/2addr v13, v11

    sub-long v13, v11, v13

    .line 348
    .local v13, "cmpRemToHalfDivisor":J
    cmp-long v9, v13, v5

    if-nez v9, :cond_56

    .line 349
    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne v0, v9, :cond_41

    const/4 v9, 0x1

    goto :goto_42

    :cond_41
    const/4 v9, 0x0

    :goto_42
    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne v0, v8, :cond_48

    const/4 v8, 0x1

    goto :goto_49

    :cond_48
    const/4 v8, 0x0

    :goto_49
    const-wide/16 v15, 0x1

    and-long/2addr v15, v1

    cmp-long v17, v15, v5

    if-eqz v17, :cond_52

    const/4 v10, 0x1

    nop

    :cond_52
    and-int v5, v8, v10

    or-int/2addr v5, v9

    goto :goto_77

    .line 351
    :cond_56
    cmp-long v8, v13, v5

    if-lez v8, :cond_5c

    const/4 v10, 0x1

    nop

    :cond_5c
    move v5, v10

    .line 353
    .local v5, "increment":Z
    goto :goto_77

    .line 336
    .end local v5    # "increment":Z
    .end local v11    # "absRem":J
    .end local v13    # "cmpRemToHalfDivisor":J
    :pswitch_5e
    if-lez v7, :cond_62

    const/4 v10, 0x1

    nop

    :cond_62
    move v5, v10

    .line 337
    .restart local v5    # "increment":Z
    goto :goto_77

    .line 333
    .end local v5    # "increment":Z
    :pswitch_64
    const/4 v5, 0x1

    .line 334
    .restart local v5    # "increment":Z
    goto :goto_77

    .line 339
    .end local v5    # "increment":Z
    :pswitch_66
    if-gez v7, :cond_6a

    const/4 v10, 0x1

    nop

    :cond_6a
    move v5, v10

    .line 340
    .restart local v5    # "increment":Z
    goto :goto_77

    .line 327
    .end local v5    # "increment":Z
    :pswitch_6c
    cmp-long v8, v3, v5

    if-nez v8, :cond_72

    const/4 v10, 0x1

    nop

    :cond_72
    invoke-static {v10}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 330
    :pswitch_75
    const/4 v5, 0x0

    .line 331
    .restart local v5    # "increment":Z
    nop

    .line 357
    :goto_77
    if-eqz v5, :cond_7c

    int-to-long v8, v7

    add-long/2addr v8, v1

    goto :goto_7d

    :cond_7c
    move-wide v8, v1

    :goto_7d
    return-wide v8

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_75
        :pswitch_66
        :pswitch_64
        :pswitch_5e
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method public static factorial(I)J
    .registers 4
    .param p0, "n"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 556
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 557
    sget-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    array-length v0, v0

    if-ge p0, v0, :cond_f

    sget-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    aget-wide v1, v0, p0

    goto :goto_14

    :cond_f
    const-wide v1, 0x7fffffffffffffffL

    :goto_14
    return-wide v1
.end method

.method static fitsInInt(J)Z
    .registers 5
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 641
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static gcd(JJ)J
    .registers 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 420
    const-string v0, "a"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 421
    const-string v0, "b"

    invoke-static {v0, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 422
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    cmp-long v5, p2, v2

    if-nez v5, :cond_1b

    const/4 v0, 0x1

    nop

    :cond_1b
    or-int/2addr v0, v4

    if-eqz v0, :cond_21

    .line 423
    or-long v0, p0, p2

    return-wide v0

    .line 429
    :cond_21
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 430
    .local v0, "aTwos":I
    shr-long/2addr p0, v0

    .line 431
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 432
    .local v1, "bTwos":I
    shr-long/2addr p2, v1

    .line 433
    :goto_2b
    cmp-long v2, p0, p2

    if-eqz v2, :cond_3e

    .line 434
    cmp-long v2, p0, p2

    if-gez v2, :cond_36

    .line 435
    move-wide v2, p2

    .line 436
    .local v2, "t":J
    move-wide p2, p0

    .line 437
    move-wide p0, v2

    .line 439
    .end local v2    # "t":J
    :cond_36
    const/4 v2, 0x0

    sub-long/2addr p0, p2

    .line 440
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    shr-long/2addr p0, v2

    goto :goto_2b

    .line 442
    :cond_3e
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-long v2, p0, v2

    return-wide v2
.end method

.method public static isPowerOfTwo(J)Z
    .registers 10
    .param p0, "x"    # J

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    const-wide/16 v5, 0x1

    sub-long v5, p0, v5

    and-long/2addr v5, p0

    cmp-long v7, v5, v2

    if-nez v7, :cond_16

    const/4 v0, 0x1

    nop

    :cond_16
    and-int/2addr v0, v4

    return v0
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .registers 9
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 117
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 118
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 119
    long-to-int v0, p0

    invoke-static {v0, p2}, Lcom/google/common/math/IntMath;->log10(ILjava/math/RoundingMode;)I

    move-result v0

    return v0

    .line 121
    :cond_11
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v0

    .line 122
    .local v0, "logFloor":I
    sget-object v1, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    aget-wide v2, v1, v0

    .line 123
    .local v2, "floorPow":J
    sget-object v1, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_4c

    .line 139
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 137
    :pswitch_2a
    sget-object v1, Lcom/google/common/math/LongMath;->HALF_POWERS_OF_10:[J

    aget-wide v4, v1, v0

    cmp-long v1, p0, v4

    if-gtz v1, :cond_34

    move v1, v0

    goto :goto_36

    :cond_34
    add-int/lit8 v1, v0, 0x1

    :goto_36
    return v1

    .line 132
    :pswitch_37
    cmp-long v1, p0, v2

    if-nez v1, :cond_3d

    move v1, v0

    goto :goto_3f

    :cond_3d
    add-int/lit8 v1, v0, 0x1

    :goto_3f
    return v1

    .line 125
    :pswitch_40
    cmp-long v1, p0, v2

    if-nez v1, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    :goto_47
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 129
    :pswitch_4a
    return v0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_4a
        :pswitch_4a
        :pswitch_37
        :pswitch_37
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method static log10Floor(J)I
    .registers 7
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 146
    sget-object v2, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    aget-wide v3, v2, v1

    cmp-long v2, p0, v3

    if-gez v2, :cond_12

    .line 147
    add-int/lit8 v0, v1, -0x1

    return v0

    .line 145
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    .end local v1    # "i":I
    :cond_15
    sget-object v1, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    array-length v1, v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .registers 8
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 76
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 77
    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 100
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 93
    :pswitch_18
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 94
    .local v0, "leadingZeros":I
    const-wide v1, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v1, v0

    .line 96
    .local v1, "cmp":J
    rsub-int/lit8 v3, v0, 0x3f

    .line 97
    .local v3, "logFloor":I
    cmp-long v4, p0, v1

    if-gtz v4, :cond_2a

    move v4, v3

    goto :goto_2c

    :cond_2a
    add-int/lit8 v4, v3, 0x1

    :goto_2c
    return v4

    .line 87
    .end local v0    # "leadingZeros":I
    .end local v1    # "cmp":J
    .end local v3    # "logFloor":I
    :pswitch_2d
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    return v0

    .line 79
    :pswitch_38
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 83
    :pswitch_3f
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    return v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3f
        :pswitch_3f
        :pswitch_2d
        :pswitch_2d
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public static mod(JI)I
    .registers 5
    .param p0, "x"    # J
    .param p2, "m"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 379
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .registers 9
    .param p0, "x"    # J
    .param p2, "m"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 400
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_12

    .line 403
    rem-long v2, p0, p2

    .line 404
    .local v2, "result":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_e

    move-wide v0, v2

    goto :goto_11

    :cond_e
    const/4 v0, 0x0

    add-long v0, v2, p2

    :goto_11
    return-wide v0

    .line 401
    .end local v2    # "result":J
    :cond_12
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " must be > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pow(JI)J
    .registers 9
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 211
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 212
    const-wide/16 v0, 0x1

    const-wide/16 v2, -0x2

    cmp-long v4, v2, p0

    if-gtz v4, :cond_3c

    const-wide/16 v2, 0x2

    cmp-long v4, p0, v2

    if-gtz v4, :cond_3c

    .line 213
    long-to-int v2, p0

    const/16 v3, 0x40

    const-wide/16 v4, 0x0

    packed-switch v2, :pswitch_data_54

    goto :goto_3c

    .line 221
    :pswitch_1c
    if-ge p2, v3, :cond_21

    shl-long v4, v0, p2

    nop

    :cond_21
    return-wide v4

    .line 217
    :pswitch_22
    return-wide v0

    .line 215
    :pswitch_23
    if-nez p2, :cond_26

    goto :goto_27

    :cond_26
    move-wide v0, v4

    :goto_27
    return-wide v0

    .line 219
    :pswitch_28
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2d

    goto :goto_2f

    :cond_2d
    const-wide/16 v0, -0x1

    :goto_2f
    return-wide v0

    .line 223
    :pswitch_30
    if-ge p2, v3, :cond_3b

    .line 224
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_38

    shl-long/2addr v0, p2

    goto :goto_3a

    :cond_38
    shl-long/2addr v0, p2

    neg-long v0, v0

    :goto_3a
    return-wide v0

    .line 226
    :cond_3b
    return-wide v4

    .line 230
    :cond_3c
    :goto_3c
    move-wide v2, p0

    move-wide p0, v0

    .line 231
    .local v2, "b":J
    .local p0, "accum":J
    :goto_3e
    packed-switch p2, :pswitch_data_62

    .line 237
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_4b

    move-wide v4, v0

    goto :goto_4c

    .line 235
    :pswitch_47
    mul-long v0, p0, v2

    return-wide v0

    .line 233
    :pswitch_4a
    return-wide p0

    .line 237
    :cond_4b
    move-wide v4, v2

    :goto_4c
    mul-long p0, p0, v4

    .line 238
    mul-long v2, v2, v2

    .line 230
    shr-int/lit8 p2, p2, 0x1

    goto :goto_3e

    nop

    :pswitch_data_54
    .packed-switch -0x2
        :pswitch_30
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_1c
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_47
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .registers 15
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 253
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 254
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 255
    long-to-int v0, p0

    invoke-static {v0, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 257
    :cond_12
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->sqrtFloor(J)J

    move-result-wide v0

    .line 258
    .local v0, "sqrtFloor":J
    sget-object v2, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_5e

    .line 278
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 270
    :pswitch_2b
    mul-long v7, v0, v0

    const/4 v2, 0x0

    add-long/2addr v7, v0

    .line 276
    .local v7, "halfSquare":J
    cmp-long v2, v7, p0

    if-ltz v2, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gez v11, :cond_3e

    const/4 v5, 0x1

    nop

    :cond_3e
    or-int/2addr v2, v5

    if-eqz v2, :cond_43

    move-wide v3, v0

    goto :goto_45

    :cond_43
    const/4 v2, 0x0

    add-long/2addr v3, v0

    :goto_45
    return-wide v3

    .line 266
    .end local v7    # "halfSquare":J
    :pswitch_46
    mul-long v5, v0, v0

    cmp-long v2, v5, p0

    if-nez v2, :cond_4e

    move-wide v3, v0

    goto :goto_50

    :cond_4e
    const/4 v2, 0x0

    add-long/2addr v3, v0

    :goto_50
    return-wide v3

    .line 260
    :pswitch_51
    mul-long v2, v0, v0

    cmp-long v4, v2, p0

    if-nez v4, :cond_59

    const/4 v5, 0x1

    nop

    :cond_59
    invoke-static {v5}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 263
    :pswitch_5c
    return-wide v0

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_51
        :pswitch_5c
        :pswitch_5c
        :pswitch_46
        :pswitch_46
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method private static sqrtFloor(J)J
    .registers 10
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 285
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 287
    .local v0, "sqrt0":J
    div-long v2, p0, v0

    add-long/2addr v2, v0

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    .line 288
    .local v2, "sqrt1":J
    cmp-long v5, v2, v0

    if-nez v5, :cond_10

    .line 289
    return-wide v0

    .line 292
    :cond_10
    move-wide v0, v2

    .line 293
    div-long v5, p0, v0

    const/4 v7, 0x0

    add-long/2addr v5, v0

    shr-long v2, v5, v4

    .line 294
    cmp-long v5, v2, v0

    if-ltz v5, :cond_10

    .line 295
    return-wide v0
.end method
