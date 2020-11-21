.class public abstract Lorg/apache/commons/lang/math/Range;
.super Ljava/lang/Object;
.source "Range.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public containsDouble(D)Z
    .registers 6
    .param p1, "value"    # D

    .line 270
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumDouble()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang/math/NumberUtils;->compare(DD)I

    move-result v0

    .line 271
    .local v0, "compareMin":I
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumDouble()D

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lorg/apache/commons/lang/math/NumberUtils;->compare(DD)I

    move-result v1

    .line 272
    .local v1, "compareMax":I
    if-gtz v0, :cond_16

    if-ltz v1, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method public containsDouble(Ljava/lang/Number;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Number;

    .line 252
    if-nez p1, :cond_4

    .line 253
    const/4 v0, 0x0

    return v0

    .line 255
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/math/Range;->containsDouble(D)Z

    move-result v0

    return v0
.end method

.method public containsFloat(F)Z
    .registers 5
    .param p1, "value"    # F

    .line 306
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumFloat()F

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/math/NumberUtils;->compare(FF)I

    move-result v0

    .line 307
    .local v0, "compareMin":I
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumFloat()F

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang/math/NumberUtils;->compare(FF)I

    move-result v1

    .line 308
    .local v1, "compareMax":I
    if-gtz v0, :cond_16

    if-ltz v1, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method public containsFloat(Ljava/lang/Number;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 288
    if-nez p1, :cond_4

    .line 289
    const/4 v0, 0x0

    return v0

    .line 291
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/Range;->containsFloat(F)Z

    move-result v0

    return v0
.end method

.method public containsInteger(I)Z
    .registers 3
    .param p1, "value"    # I

    .line 236
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumInteger()I

    move-result v0

    if-lt p1, v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumInteger()I

    move-result v0

    if-gt p1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public containsInteger(Ljava/lang/Number;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 218
    if-nez p1, :cond_4

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/Range;->containsInteger(I)Z

    move-result v0

    return v0
.end method

.method public containsLong(J)Z
    .registers 6
    .param p1, "value"    # J

    .line 202
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumLong()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumLong()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public containsLong(Ljava/lang/Number;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Number;

    .line 184
    if-nez p1, :cond_4

    .line 185
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/math/Range;->containsLong(J)Z

    move-result v0

    return v0
.end method

.method public abstract containsNumber(Ljava/lang/Number;)Z
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 4
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 332
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 333
    return v0

    .line 335
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    nop

    :cond_1a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 382
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 383
    return v0

    .line 384
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 387
    :cond_12
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang/math/Range;

    .line 388
    .local v2, "range":Lorg/apache/commons/lang/math/Range;
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0

    .line 385
    .end local v2    # "range":Lorg/apache/commons/lang/math/Range;
    :cond_34
    :goto_34
    return v1
.end method

.method public getMaximumDouble()D
    .registers 3

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumFloat()F
    .registers 2

    .line 149
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaximumInteger()I
    .registers 2

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaximumLong()J
    .registers 3

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getMaximumNumber()Ljava/lang/Number;
.end method

.method public getMinimumDouble()D
    .registers 3

    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumFloat()F
    .registers 2

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinimumInteger()I
    .registers 2

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getMinimumLong()J
    .registers 3

    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getMinimumNumber()Ljava/lang/Number;
.end method

.method public hashCode()I
    .registers 4

    .line 403
    const/16 v0, 0x11

    .line 404
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 405
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 406
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 407
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 4
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 358
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 359
    return v0

    .line 361
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 422
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 423
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 425
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 427
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
