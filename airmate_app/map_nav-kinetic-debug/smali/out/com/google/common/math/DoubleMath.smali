.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field static final EVERY_SIXTEENTH_FACTORIAL:[D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 197
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    .line 288
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/common/math/DoubleMath;->EVERY_SIXTEENTH_FACTORIAL:[D

    return-void

    :array_12
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factorial(I)D
    .registers 6
    .param p0, "n"    # I

    .line 270
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 271
    const/16 v0, 0xaa

    if-le p0, v0, :cond_c

    .line 272
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 276
    :cond_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 277
    .local v0, "accum":D
    and-int/lit8 v2, p0, -0x10

    .local v2, "i":I
    :goto_10
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p0, :cond_1b

    .line 278
    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    .line 277
    goto :goto_10

    .line 280
    .end local v2    # "i":I
    :cond_1b
    sget-object v2, Lcom/google/common/math/DoubleMath;->EVERY_SIXTEENTH_FACTORIAL:[D

    shr-int/lit8 v3, p0, 0x4

    aget-wide v3, v2, v3

    mul-double v3, v3, v0

    return-wide v3
.end method

.method public static isMathematicalInteger(D)Z
    .registers 5
    .param p0, "x"    # D

    .line 255
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_1c

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    if-gt v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public static isPowerOfTwo(D)Z
    .registers 5
    .param p0, "x"    # D

    .line 175
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_18

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static log2(D)D
    .registers 6
    .param p0, "x"    # D

    .line 194
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .registers 13
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmpl-double v4, p0, v2

    if-lez v4, :cond_10

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const-string v3, "x must be positive and finite"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 211
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v2

    .line 212
    .local v2, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 213
    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    mul-double v0, v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v0

    add-int/lit8 v0, v0, -0x34

    return v0

    .line 218
    :cond_2b
    sget-object v3, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_78

    .line 243
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 237
    :pswitch_3c
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v3

    .line 240
    .local v3, "xScaled":D
    mul-double v5, v3, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_4a

    const/4 v0, 0x1

    nop

    .line 241
    .local v0, "increment":Z
    :cond_4a
    goto :goto_70

    .line 232
    .end local v0    # "increment":Z
    .end local v3    # "xScaled":D
    :pswitch_4b
    if-ltz v2, :cond_4f

    const/4 v0, 0x1

    nop

    :cond_4f
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v3

    xor-int/2addr v1, v3

    and-int/2addr v0, v1

    .line 233
    .restart local v0    # "increment":Z
    goto :goto_70

    .line 229
    .end local v0    # "increment":Z
    :pswitch_56
    if-gez v2, :cond_5a

    const/4 v0, 0x1

    nop

    :cond_5a
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v3

    xor-int/2addr v1, v3

    and-int/2addr v0, v1

    .line 230
    .restart local v0    # "increment":Z
    goto :goto_70

    .line 226
    .end local v0    # "increment":Z
    :pswitch_61
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 227
    .restart local v0    # "increment":Z
    goto :goto_70

    .line 220
    .end local v0    # "increment":Z
    :pswitch_67
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 223
    :pswitch_6e
    const/4 v0, 0x0

    .line 224
    .restart local v0    # "increment":Z
    nop

    .line 245
    :goto_70
    if-eqz v0, :cond_75

    add-int/lit8 v1, v2, 0x1

    goto :goto_76

    :cond_75
    move v1, v2

    :goto_76
    return v1

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_67
        :pswitch_6e
        :pswitch_61
        :pswitch_56
        :pswitch_4b
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .registers 8
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 49
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 52
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/16 v3, 0x0

    packed-switch v0, :pswitch_data_8c

    .line 91
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :pswitch_1b
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 81
    return-wide p0

    .line 82
    :cond_22
    cmpl-double v0, p0, v3

    if-ltz v0, :cond_32

    .line 83
    add-double/2addr v1, p0

    .line 84
    .local v1, "z":D
    cmpl-double v0, v1, p0

    if-nez v0, :cond_2d

    move-wide v3, p0

    goto :goto_31

    :cond_2d
    invoke-static {v1, v2}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v3

    :goto_31
    return-wide v3

    .line 86
    .end local v1    # "z":D
    :cond_32
    const/4 v0, 0x0

    sub-double v0, p0, v1

    .line 87
    .local v0, "z":D
    cmpl-double v2, v0, p0

    if-nez v2, :cond_3b

    move-wide v2, p0

    goto :goto_3f

    :cond_3b
    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v2

    :goto_3f
    return-wide v2

    .line 73
    .end local v0    # "z":D
    :pswitch_40
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 74
    return-wide p0

    .line 76
    :cond_47
    cmpl-double v0, p0, v3

    if-ltz v0, :cond_4d

    add-double/2addr v1, p0

    goto :goto_50

    :cond_4d
    const/4 v0, 0x0

    sub-double v1, p0, v1

    :goto_50
    return-wide v1

    .line 70
    :pswitch_51
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    return-wide v0

    .line 67
    :pswitch_56
    cmpl-double v0, p0, v3

    if-ltz v0, :cond_5f

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_63

    :cond_5f
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_63
    return-wide v0

    .line 64
    :pswitch_64
    return-wide p0

    .line 61
    :pswitch_65
    cmpl-double v0, p0, v3

    if-ltz v0, :cond_6e

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_6f

    :cond_6e
    move-wide v0, p0

    :goto_6f
    return-wide v0

    .line 58
    :pswitch_70
    cmpl-double v0, p0, v3

    if-ltz v0, :cond_76

    move-wide v0, p0

    goto :goto_7a

    :cond_76
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_7a
    return-wide v0

    .line 54
    :pswitch_7b
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 55
    return-wide p0

    .line 50
    :cond_83
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "input is infinite or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_70
        :pswitch_65
        :pswitch_64
        :pswitch_56
        :pswitch_51
        :pswitch_40
        :pswitch_1b
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 10
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 157
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    .line 158
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v1, p0, v4

    if-gez v1, :cond_1a

    const/4 v2, 0x1

    nop

    :cond_1a
    and-int/2addr v0, v2

    if-eqz v0, :cond_23

    .line 159
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 161
    :cond_23
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 162
    .local v0, "exponent":I
    if-gez v0, :cond_2c

    .line 163
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 165
    :cond_2c
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v1

    .line 166
    .local v1, "significand":J
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v4, v0, -0x34

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 167
    .local v3, "result":Ljava/math/BigInteger;
    const-wide/16 v4, 0x0

    cmpg-double v6, p0, v4

    if-gez v6, :cond_45

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_46

    :cond_45
    move-object v4, v3

    :goto_46
    return-object v4
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .registers 11
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 110
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 111
    .local v0, "z":D
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide v4, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double v6, v0, v4

    if-lez v6, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    const-wide/high16 v5, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v7, v0, v5

    if-gez v7, :cond_1a

    const/4 v2, 0x1

    nop

    :cond_1a
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 112
    double-to-int v2, v0

    return v2
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .registers 12
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 133
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 134
    .local v0, "z":D
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v2, v6

    if-gez v8, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, v0, v6

    if-gez v3, :cond_1a

    const/4 v4, 0x1

    nop

    :cond_1a
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 135
    double-to-long v2, v0

    return-wide v2
.end method
