.class public Lorg/ros/math/Unsigned;
.super Ljava/lang/Object;
.source "Unsigned.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static byteToShort(B)S
    .registers 2
    .param p0, "value"    # B

    .line 54
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static intToLong(I)J
    .registers 5
    .param p0, "value"    # I

    .line 36
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static shortToInt(S)I
    .registers 2
    .param p0, "value"    # S

    .line 45
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
