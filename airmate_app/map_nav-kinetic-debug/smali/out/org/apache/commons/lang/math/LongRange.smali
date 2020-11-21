.class public final Lorg/apache/commons/lang/math/LongRange;
.super Lorg/apache/commons/lang/math/Range;
.source "LongRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfe9f0L


# instance fields
.field private transient hashCode:I

.field private final max:J

.field private transient maxObject:Ljava/lang/Long;

.field private final min:J

.field private transient minObject:Ljava/lang/Long;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .param p1, "number"    # J

    .line 70
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 71
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 72
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 73
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 7
    .param p1, "number1"    # J
    .param p3, "number2"    # J

    .line 107
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 108
    cmp-long v0, p3, p1

    if-gez v0, :cond_16

    .line 109
    iput-wide p3, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 110
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    goto :goto_1a

    .line 112
    :cond_16
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 113
    iput-wide p3, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 115
    :goto_1a
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/Number;

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 85
    if-eqz p1, :cond_2a

    .line 88
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 89
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 90
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_29

    .line 91
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 92
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 94
    :cond_29
    return-void

    .line 86
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 8
    .param p1, "number1"    # Ljava/lang/Number;
    .param p2, "number2"    # Ljava/lang/Number;

    .line 129
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 130
    if-eqz p1, :cond_4b

    if-eqz p2, :cond_4b

    .line 133
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 134
    .local v0, "number1val":J
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 135
    .local v2, "number2val":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_34

    .line 136
    iput-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 137
    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 138
    instance-of v4, p2, Ljava/lang/Long;

    if-eqz v4, :cond_2a

    .line 139
    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 141
    :cond_2a
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_4a

    .line 142
    move-object v4, p1

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    goto :goto_4a

    .line 145
    :cond_34
    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 146
    iput-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 147
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_41

    .line 148
    move-object v4, p1

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 150
    :cond_41
    instance-of v4, p2, Ljava/lang/Long;

    if-eqz v4, :cond_4a

    .line 151
    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 154
    :cond_4a
    :goto_4a
    return-void

    .line 131
    .end local v0    # "number1val":J
    .end local v2    # "number2val":J
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public containsLong(J)Z
    .registers 6
    .param p1, "value"    # J

    .line 298
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_e

    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    cmp-long v2, p1, v0

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

    .line 280
    if-nez p1, :cond_4

    .line 281
    const/4 v0, 0x0

    return v0

    .line 283
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v0

    return v0
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 5
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 315
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 316
    return v0

    .line 318
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

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

    .line 352
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 353
    return v0

    .line 355
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/lang/math/LongRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 356
    return v2

    .line 358
    :cond_a
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/math/LongRange;

    .line 359
    .local v1, "range":Lorg/apache/commons/lang/math/LongRange;
    iget-wide v3, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    iget-wide v5, v1, Lorg/apache/commons/lang/math/LongRange;->min:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1e

    iget-wide v3, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    iget-wide v5, v1, Lorg/apache/commons/lang/math/LongRange;->max:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public getMaximumDouble()D
    .registers 3

    .line 253
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getMaximumFloat()F
    .registers 3

    .line 264
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    long-to-float v0, v0

    return v0
.end method

.method public getMaximumInteger()I
    .registers 3

    .line 242
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    long-to-int v0, v0

    return v0
.end method

.method public getMaximumLong()J
    .registers 3

    .line 231
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    return-wide v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .registers 4

    .line 219
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    if-nez v0, :cond_d

    .line 220
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 222
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinimumDouble()D
    .registers 3

    .line 199
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getMinimumFloat()F
    .registers 3

    .line 210
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    long-to-float v0, v0

    return v0
.end method

.method public getMinimumInteger()I
    .registers 3

    .line 188
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    long-to-int v0, v0

    return v0
.end method

.method public getMinimumLong()J
    .registers 3

    .line 177
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    return-wide v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .registers 4

    .line 165
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    if-nez v0, :cond_d

    .line 166
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 168
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .line 368
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    if-nez v0, :cond_35

    .line 369
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 370
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 371
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    iget-wide v3, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 372
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    iget-wide v3, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    shr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 374
    :cond_35
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    return v0
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 5
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 332
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 333
    return v0

    .line 335
    :cond_4
    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/lang/math/Range;->containsLong(J)Z

    move-result v1

    if-nez v1, :cond_20

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/lang/math/Range;->containsLong(J)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

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

.method public toArray()[J
    .registers 7

    .line 404
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 405
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 406
    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 408
    .end local v1    # "i":I
    :cond_18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 385
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 386
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 387
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 389
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 391
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 394
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2a
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    return-object v0
.end method
