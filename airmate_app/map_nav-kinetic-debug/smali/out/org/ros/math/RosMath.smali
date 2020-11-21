.class public Lorg/ros/math/RosMath;
.super Ljava/lang/Object;
.source "RosMath.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static clamp(DDD)D
    .registers 7
    .param p0, "value"    # D
    .param p2, "minmum"    # D
    .param p4, "maximum"    # D

    .line 29
    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    .line 30
    return-wide p2

    .line 32
    :cond_5
    cmpl-double v0, p0, p4

    if-lez v0, :cond_a

    .line 33
    return-wide p4

    .line 35
    :cond_a
    return-wide p0
.end method

.method public static clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "minmum"    # F
    .param p2, "maximum"    # F

    .line 39
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 40
    return p1

    .line 42
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_a

    .line 43
    return p2

    .line 45
    :cond_a
    return p0
.end method

.method public static clamp(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "minmum"    # I
    .param p2, "maximum"    # I

    .line 49
    if-ge p0, p1, :cond_3

    .line 50
    return p1

    .line 52
    :cond_3
    if-le p0, p2, :cond_6

    .line 53
    return p2

    .line 55
    :cond_6
    return p0
.end method

.method public static clamp(JJJ)J
    .registers 7
    .param p0, "value"    # J
    .param p2, "minmum"    # J
    .param p4, "maximum"    # J

    .line 59
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    .line 60
    return-wide p2

    .line 62
    :cond_5
    cmp-long v0, p0, p4

    if-lez v0, :cond_a

    .line 63
    return-wide p4

    .line 65
    :cond_a
    return-wide p0
.end method
