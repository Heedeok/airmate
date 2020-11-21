.class public final Lorg/apache/commons/lang/math/FloatRange;
.super Lorg/apache/commons/lang/math/Range;
.source "FloatRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfea0eL


# instance fields
.field private transient hashCode:I

.field private final max:F

.field private transient maxObject:Ljava/lang/Float;

.field private final min:F

.field private transient minObject:Ljava/lang/Float;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(F)V
    .registers 4
    .param p1, "number"    # F

    .line 71
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_18

    .line 75
    iput p1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 76
    iput p1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    .line 77
    return-void

    .line 73
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(FF)V
    .registers 5
    .param p1, "number1"    # F
    .param p2, "number2"    # F

    .line 116
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    .line 120
    cmpg-float v0, p2, p1

    if-gez v0, :cond_22

    .line 121
    iput p2, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 122
    iput p1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    goto :goto_26

    .line 124
    :cond_22
    iput p1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 125
    iput p2, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

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

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    .line 90
    if-eqz p1, :cond_42

    .line 93
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 94
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    .line 95
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3a

    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 98
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_39

    .line 99
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

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
    .registers 7
    .param p1, "number1"    # Ljava/lang/Number;
    .param p2, "number2"    # Ljava/lang/Number;

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    .line 143
    if-eqz p1, :cond_5f

    if-eqz p2, :cond_5f

    .line 146
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 147
    .local v0, "number1val":F
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 148
    .local v1, "number2val":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_57

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_57

    .line 151
    cmpg-float v2, v1, v0

    if-gez v2, :cond_40

    .line 152
    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 153
    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    .line 154
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_36

    .line 155
    move-object v2, p2

    check-cast v2, Ljava/lang/Float;

    iput-object v2, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 157
    :cond_36
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_56

    .line 158
    move-object v2, p1

    check-cast v2, Ljava/lang/Float;

    iput-object v2, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    goto :goto_56

    .line 161
    :cond_40
    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 162
    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    .line 163
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_4d

    .line 164
    move-object v2, p1

    check-cast v2, Ljava/lang/Float;

    iput-object v2, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 166
    :cond_4d
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_56

    .line 167
    move-object v2, p2

    check-cast v2, Ljava/lang/Float;

    iput-object v2, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    .line 170
    :cond_56
    :goto_56
    return-void

    .line 149
    :cond_57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The numbers must not be NaN"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v0    # "number1val":F
    .end local v1    # "number2val":F
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public containsFloat(F)Z
    .registers 3
    .param p1, "value"    # F

    .line 310
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_e

    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public containsNumber(Ljava/lang/Number;)Z
    .registers 3
    .param p1, "number"    # Ljava/lang/Number;

    .line 292
    if-nez p1, :cond_4

    .line 293
    const/4 v0, 0x0

    return v0

    .line 295
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/FloatRange;->containsFloat(F)Z

    move-result v0

    return v0
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 4
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 327
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 328
    return v0

    .line 330
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/FloatRange;->containsFloat(F)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/FloatRange;->containsFloat(F)Z

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

    .line 364
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 365
    return v0

    .line 367
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/lang/math/FloatRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 368
    return v2

    .line 370
    :cond_a
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/math/FloatRange;

    .line 371
    .local v1, "range":Lorg/apache/commons/lang/math/FloatRange;
    iget v3, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v1, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v1, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public getMaximumDouble()D
    .registers 3

    .line 267
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getMaximumFloat()F
    .registers 2

    .line 276
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    return v0
.end method

.method public getMaximumInteger()I
    .registers 2

    .line 258
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    float-to-int v0, v0

    return v0
.end method

.method public getMaximumLong()J
    .registers 3

    .line 247
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .registers 3

    .line 233
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    if-nez v0, :cond_d

    .line 234
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    .line 236
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    return-object v0
.end method

.method public getMinimumDouble()D
    .registers 3

    .line 215
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getMinimumFloat()F
    .registers 2

    .line 224
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    return v0
.end method

.method public getMinimumInteger()I
    .registers 2

    .line 206
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    float-to-int v0, v0

    return v0
.end method

.method public getMinimumLong()J
    .registers 3

    .line 195
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .registers 3

    .line 181
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    if-nez v0, :cond_d

    .line 182
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 184
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 381
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    if-nez v0, :cond_31

    .line 382
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 383
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 384
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 385
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 387
    :cond_31
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    return v0
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 4
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 344
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 345
    return v0

    .line 347
    :cond_4
    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsFloat(F)Z

    move-result v1

    if-nez v1, :cond_20

    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsFloat(F)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/FloatRange;->containsFloat(F)Z

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
    .registers 3

    .line 398
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 399
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 400
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 402
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 403
    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 404
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    .line 407
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2a
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    return-object v0
.end method
