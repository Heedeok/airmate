.class public final Lorg/apache/commons/lang/math/DoubleRange;
.super Lorg/apache/commons/lang/math/Range;
.source "DoubleRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfea04L


# instance fields
.field private transient hashCode:I

.field private final max:D

.field private transient maxObject:Ljava/lang/Double;

.field private final min:D

.field private transient minObject:Ljava/lang/Double;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(D)V
    .registers 5
    .param p1, "number"    # D

    .line 71
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->toString:Ljava/lang/String;

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_18

    .line 75
    iput-wide p1, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    .line 76
    iput-wide p1, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    .line 77
    return-void

    .line 73
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(DD)V
    .registers 7
    .param p1, "number1"    # D
    .param p3, "number2"    # D

    .line 116
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->toString:Ljava/lang/String;

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_27

    .line 120
    cmpg-double v0, p3, p1

    if-gez v0, :cond_22

    .line 121
    iput-wide p3, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    .line 122
    iput-wide p1, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    goto :goto_26

    .line 124
    :cond_22
    iput-wide p1, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    .line 125
    iput-wide p3, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    .line 127
    :goto_26
    return-void

    .line 118
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must not be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/Number;

    .line 89
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->toString:Ljava/lang/String;

    .line 90
    if-eqz p1, :cond_42

    .line 93
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    .line 94
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    .line 95
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 98
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_39

    .line 99
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    .line 102
    :cond_39
    return-void

    .line 96
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 9
    .param p1, "number1"    # Ljava/lang/Number;
    .param p2, "number2"    # Ljava/lang/Number;

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->toString:Ljava/lang/String;

    .line 143
    if-eqz p1, :cond_5f

    if-eqz p2, :cond_5f

    .line 146
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 147
    .local v0, "number1val":D
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 148
    .local v2, "number2val":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_57

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_57

    .line 151
    cmpg-double v4, v2, v0

    if-gez v4, :cond_40

    .line 152
    iput-wide v2, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    .line 153
    iput-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    .line 154
    instance-of v4, p2, Ljava/lang/Double;

    if-eqz v4, :cond_36

    .line 155
    move-object v4, p2

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    .line 157
    :cond_36
    instance-of v4, p1, Ljava/lang/Double;

    if-eqz v4, :cond_56

    .line 158
    move-object v4, p1

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    goto :goto_56

    .line 161
    :cond_40
    iput-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    .line 162
    iput-wide v2, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    .line 163
    instance-of v4, p1, Ljava/lang/Double;

    if-eqz v4, :cond_4d

    .line 164
    move-object v4, p1

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    .line 166
    :cond_4d
    instance-of v4, p2, Ljava/lang/Double;

    if-eqz v4, :cond_56

    .line 167
    move-object v4, p2

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    .line 170
    :cond_56
    :goto_56
    return-void

    .line 149
    :cond_57
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The numbers must not be NaN"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    .end local v0    # "number1val":D
    .end local v2    # "number2val":D
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public containsDouble(D)Z
    .registers 6
    .param p1, "value"    # D

    .line 314
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_e

    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public containsNumber(Ljava/lang/Number;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/Number;

    .line 296
    if-nez p1, :cond_4

    .line 297
    const/4 v0, 0x0

    return v0

    .line 299
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/math/DoubleRange;->containsDouble(D)Z

    move-result v0

    return v0
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 5
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 332
    return v0

    .line 334
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/math/DoubleRange;->containsDouble(D)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/math/DoubleRange;->containsDouble(D)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    nop

    :cond_1a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 368
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 369
    return v0

    .line 371
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/lang/math/DoubleRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 372
    return v2

    .line 374
    :cond_a
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/math/DoubleRange;

    .line 375
    .local v1, "range":Lorg/apache/commons/lang/math/DoubleRange;
    iget-wide v3, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2e

    iget-wide v3, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0
.end method

.method public getMaximumDouble()D
    .registers 3

    .line 269
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    return-wide v0
.end method

.method public getMaximumFloat()F
    .registers 3

    .line 280
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    double-to-float v0, v0

    return v0
.end method

.method public getMaximumInteger()I
    .registers 3

    .line 260
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    double-to-int v0, v0

    return v0
.end method

.method public getMaximumLong()J
    .registers 3

    .line 249
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .registers 4

    .line 235
    iget-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    if-nez v0, :cond_d

    .line 236
    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    .line 238
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->maxObject:Ljava/lang/Double;

    return-object v0
.end method

.method public getMinimumDouble()D
    .registers 3

    .line 215
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    return-wide v0
.end method

.method public getMinimumFloat()F
    .registers 3

    .line 226
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    double-to-float v0, v0

    return v0
.end method

.method public getMinimumInteger()I
    .registers 3

    .line 206
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    double-to-int v0, v0

    return v0
.end method

.method public getMinimumLong()J
    .registers 3

    .line 195
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .registers 4

    .line 181
    iget-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    if-nez v0, :cond_d

    .line 182
    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    .line 184
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->minObject:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .line 385
    iget v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    if-nez v0, :cond_3b

    .line 386
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    .line 387
    iget v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    .line 388
    iget-wide v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 389
    .local v0, "lng":J
    iget v2, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    mul-int/lit8 v2, v2, 0x25

    const/16 v3, 0x20

    shr-long v4, v0, v3

    xor-long/2addr v4, v0

    long-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    .line 390
    iget-wide v4, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 391
    iget v2, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    mul-int/lit8 v2, v2, 0x25

    shr-long v3, v0, v3

    xor-long/2addr v3, v0

    long-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    .line 393
    .end local v0    # "lng":J
    :cond_3b
    iget v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->hashCode:I

    return v0
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 5
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 348
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 349
    return v0

    .line 351
    :cond_4
    iget-wide v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/lang/math/Range;->containsDouble(D)Z

    move-result v1

    if-nez v1, :cond_20

    iget-wide v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/lang/math/Range;->containsDouble(D)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/math/DoubleRange;->containsDouble(D)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_20

    :cond_1f
    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 404
    iget-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->toString:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 405
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 406
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    iget-wide v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->min:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 408
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 409
    iget-wide v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->max:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 410
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/DoubleRange;->toString:Ljava/lang/String;

    .line 413
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2a
    iget-object v0, p0, Lorg/apache/commons/lang/math/DoubleRange;->toString:Ljava/lang/String;

    return-object v0
.end method
