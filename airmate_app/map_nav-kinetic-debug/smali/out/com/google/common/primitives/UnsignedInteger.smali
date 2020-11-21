.class public final Lcom/google/common/primitives/UnsignedInteger;
.super Ljava/lang/Number;
.source "UnsignedInteger.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/primitives/UnsignedInteger;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ONE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ZERO:Lcom/google/common/primitives/UnsignedInteger;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ZERO:Lcom/google/common/primitives/UnsignedInteger;

    .line 48
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ONE:Lcom/google/common/primitives/UnsignedInteger;

    .line 49
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "value"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    and-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 55
    return-void
.end method

.method public static asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;
    .registers 2
    .param p0, "value"    # I

    .line 62
    new-instance v0, Lcom/google/common/primitives/UnsignedInteger;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/UnsignedInteger;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/google/common/primitives/UnsignedInteger;
    .registers 7
    .param p0, "value"    # J

    .line 70
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, v0, p0

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    long-to-int v0, p0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 96
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I

    .line 107
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 5
    .param p0, "value"    # Ljava/math/BigInteger;

    .line 82
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_15

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x20

    if-gt v0, v3, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const-string v3, "value (%s) is outside the range for an unsigned integer value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 4
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedInteger;

    .line 115
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .registers 3

    .line 196
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/google/common/primitives/UnsignedInteger;)I
    .registers 4
    .param p1, "other"    # Lcom/google/common/primitives/UnsignedInteger;

    .line 206
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedInts;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 44
    move-object v0, p1

    check-cast v0, Lcom/google/common/primitives/UnsignedInteger;

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->compareTo(Lcom/google/common/primitives/UnsignedInteger;)I

    move-result v0

    return v0
.end method

.method public divide(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 4
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedInteger;

    .line 142
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedInts;->divide(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .registers 3

    .line 189
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    instance-of v0, p1, Lcom/google/common/primitives/UnsignedInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 218
    move-object v0, p1

    check-cast v0, Lcom/google/common/primitives/UnsignedInteger;

    .line 219
    .local v0, "other":Lcom/google/common/primitives/UnsignedInteger;
    iget v2, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v3, v0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    if-ne v2, v3, :cond_10

    const/4 v1, 0x1

    nop

    :cond_10
    return v1

    .line 221
    .end local v0    # "other":Lcom/google/common/primitives/UnsignedInteger;
    :cond_11
    return v1
.end method

.method public floatValue()F
    .registers 3

    .line 180
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 212
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public intValue()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 171
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public multiply(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 4
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Does not truncate correctly"
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    mul-int v0, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public remainder(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 4
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedInteger;

    .line 150
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedInts;->remainder(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 4
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedInteger;

    .line 124
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 229
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 3
    .param p1, "radix"    # I

    .line 238
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
