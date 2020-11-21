.class final Lcom/google/common/math/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final IMPLICIT_BIT:J = 0x10000000000000L

.field private static final ONE_BITS:J

.field static final SIGNIFICAND_BITS:I = 0x34

.field static final SIGNIFICAND_MASK:J = 0xfffffffffffffL

.field static final SIGN_MASK:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 141
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static bigToDouble(Ljava/math/BigInteger;)D
    .registers 17
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 87
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 88
    .local v0, "absX":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 90
    .local v1, "exponent":I
    const/16 v3, 0x3f

    if-ge v1, v3, :cond_14

    .line 91
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    return-wide v2

    .line 92
    :cond_14
    const/16 v3, 0x3ff

    if-le v1, v3, :cond_25

    .line 93
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    return-wide v2

    .line 104
    :cond_25
    add-int/lit8 v3, v1, -0x34

    sub-int/2addr v3, v2

    .line 105
    .local v3, "shift":I
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 106
    .local v4, "twiceSignifFloor":J
    shr-long v6, v4, v2

    .line 107
    .local v6, "signifFloor":J
    const-wide v8, 0xfffffffffffffL

    and-long/2addr v6, v8

    .line 114
    const-wide/16 v8, 0x1

    and-long v10, v4, v8

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_4f

    and-long v10, v6, v8

    cmp-long v14, v10, v12

    if-nez v14, :cond_4e

    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v10

    if-ge v10, v3, :cond_4f

    :cond_4e
    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    .line 116
    .local v2, "increment":Z
    :goto_50
    if-eqz v2, :cond_54

    add-long/2addr v8, v6

    goto :goto_55

    :cond_54
    move-wide v8, v6

    .line 117
    .local v8, "signifRounded":J
    :goto_55
    add-int/lit16 v10, v1, 0x3ff

    int-to-long v10, v10

    const/16 v12, 0x34

    shl-long/2addr v10, v12

    .line 118
    .local v10, "bits":J
    add-long/2addr v10, v8

    .line 125
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    move-result v12

    int-to-long v12, v12

    const-wide/high16 v14, -0x8000000000000000L

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    .line 126
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    return-wide v12
.end method

.method static ensureNonNegative(D)D
    .registers 5
    .param p0, "value"    # D

    .line 133
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 134
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_10

    .line 135
    return-wide p0

    .line 137
    :cond_10
    return-wide v0
.end method

.method static getSignificand(D)J
    .registers 7
    .param p0, "d"    # D

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    const-string v1, "not a normal value"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 60
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 61
    .local v0, "exponent":I
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 62
    .local v1, "bits":J
    const-wide v3, 0xfffffffffffffL

    and-long/2addr v1, v3

    .line 63
    const/16 v3, -0x3ff

    if-ne v0, v3, :cond_1f

    const/4 v3, 0x1

    shl-long v3, v1, v3

    goto :goto_22

    :cond_1f
    const-wide/high16 v3, 0x10000000000000L

    or-long/2addr v3, v1

    :goto_22
    return-wide v3
.end method

.method static isFinite(D)Z
    .registers 4
    .param p0, "d"    # D

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static isNormal(D)Z
    .registers 4
    .param p0, "d"    # D

    .line 73
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static nextDown(D)D
    .registers 4
    .param p0, "d"    # D

    .line 34
    neg-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method static scaleNormalize(D)D
    .registers 6
    .param p0, "x"    # D

    .line 81
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v0, v2

    .line 82
    .local v0, "significand":J
    sget-wide v2, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    or-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method
