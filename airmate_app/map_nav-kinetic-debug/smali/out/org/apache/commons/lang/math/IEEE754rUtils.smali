.class public Lorg/apache/commons/lang/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "IEEE754rUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 221
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    return-wide p2

    .line 224
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 225
    return-wide p0

    .line 227
    :cond_e
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 208
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .registers 6
    .param p0, "array"    # [D

    .line 157
    if-eqz p0, :cond_1e

    .line 159
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 164
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 165
    .local v0, "max":D
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_15

    .line 166
    aget-wide v3, p0, v2

    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 169
    .end local v2    # "j":I
    :cond_15
    return-wide v0

    .line 160
    .end local v0    # "max":D
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 255
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 256
    return p1

    .line 258
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 259
    return p0

    .line 261
    :cond_e
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 242
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .registers 4
    .param p0, "array"    # [F

    .line 182
    if-eqz p0, :cond_1e

    .line 184
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 189
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 190
    .local v0, "max":F
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 191
    aget v2, p0, v1

    invoke-static {v2, v0}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(FF)F

    move-result v0

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 194
    .end local v1    # "j":I
    :cond_15
    return v0

    .line 185
    .end local v0    # "max":F
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 103
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    return-wide p2

    .line 106
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 107
    return-wide p0

    .line 109
    :cond_e
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 90
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .registers 6
    .param p0, "array"    # [D

    .line 39
    if-eqz p0, :cond_1e

    .line 41
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 46
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 47
    .local v0, "min":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_15

    .line 48
    aget-wide v3, p0, v2

    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 51
    .end local v2    # "i":I
    :cond_15
    return-wide v0

    .line 42
    .end local v0    # "min":D
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 137
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    return p1

    .line 140
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 141
    return p0

    .line 143
    :cond_e
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 124
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .registers 4
    .param p0, "array"    # [F

    .line 64
    if-eqz p0, :cond_1e

    .line 66
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 71
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 72
    .local v0, "min":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 73
    aget v2, p0, v1

    invoke-static {v2, v0}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(FF)F

    move-result v0

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 76
    .end local v1    # "i":I
    :cond_15
    return v0

    .line 67
    .end local v0    # "min":F
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
