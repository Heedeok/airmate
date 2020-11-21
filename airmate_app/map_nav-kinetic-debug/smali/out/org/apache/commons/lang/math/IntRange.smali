.class public final Lorg/apache/commons/lang/math/IntRange;
.super Lorg/apache/commons/lang/math/Range;
.source "IntRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfe9faL


# instance fields
.field private transient hashCode:I

.field private final max:I

.field private transient maxObject:Ljava/lang/Integer;

.field private final min:I

.field private transient minObject:Ljava/lang/Integer;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "number"    # I

    .line 70
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 71
    iput p1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 72
    iput p1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "number1"    # I
    .param p2, "number2"    # I

    .line 106
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 107
    if-ge p2, p1, :cond_14

    .line 108
    iput p2, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 109
    iput p1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    goto :goto_18

    .line 111
    :cond_14
    iput p1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 112
    iput p2, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 114
    :goto_18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/Number;

    .line 83
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 84
    if-eqz p1, :cond_2a

    .line 87
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 88
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 89
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_29

    .line 90
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 91
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 93
    :cond_29
    return-void

    .line 85
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 6
    .param p1, "number1"    # Ljava/lang/Number;
    .param p2, "number2"    # Ljava/lang/Number;

    .line 128
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 61
    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 129
    if-eqz p1, :cond_49

    if-eqz p2, :cond_49

    .line 132
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 133
    .local v0, "number1val":I
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 134
    .local v1, "number2val":I
    if-ge v1, v0, :cond_32

    .line 135
    iput v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 136
    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 137
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_28

    .line 138
    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 140
    :cond_28
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_48

    .line 141
    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    goto :goto_48

    .line 144
    :cond_32
    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 145
    iput v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 146
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3f

    .line 147
    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 149
    :cond_3f
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_48

    .line 150
    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 153
    :cond_48
    :goto_48
    return-void

    .line 130
    .end local v0    # "number1val":I
    .end local v1    # "number2val":I
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public containsInteger(I)Z
    .registers 3
    .param p1, "value"    # I

    .line 285
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public containsNumber(Ljava/lang/Number;)Z
    .registers 3
    .param p1, "number"    # Ljava/lang/Number;

    .line 267
    if-nez p1, :cond_4

    .line 268
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/IntRange;->containsInteger(I)Z

    move-result v0

    return v0
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 4
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 302
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 303
    return v0

    .line 305
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumInteger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/IntRange;->containsInteger(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumInteger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/IntRange;->containsInteger(I)Z

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

    .line 339
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 340
    return v0

    .line 342
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/lang/math/IntRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 343
    return v2

    .line 345
    :cond_a
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/math/IntRange;

    .line 346
    .local v1, "range":Lorg/apache/commons/lang/math/IntRange;
    iget v3, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    iget v4, v1, Lorg/apache/commons/lang/math/IntRange;->min:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    iget v4, v1, Lorg/apache/commons/lang/math/IntRange;->max:I

    if-ne v3, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public getMaximumDouble()D
    .registers 3

    .line 242
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getMaximumFloat()F
    .registers 2

    .line 251
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    int-to-float v0, v0

    return v0
.end method

.method public getMaximumInteger()I
    .registers 2

    .line 233
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    return v0
.end method

.method public getMaximumLong()J
    .registers 3

    .line 224
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .registers 3

    .line 212
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    if-nez v0, :cond_d

    .line 213
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 215
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinimumDouble()D
    .registers 3

    .line 194
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getMinimumFloat()F
    .registers 2

    .line 203
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    int-to-float v0, v0

    return v0
.end method

.method public getMinimumInteger()I
    .registers 2

    .line 185
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    return v0
.end method

.method public getMinimumLong()J
    .registers 3

    .line 176
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .registers 3

    .line 164
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    if-nez v0, :cond_d

    .line 165
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 167
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 355
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    if-nez v0, :cond_29

    .line 356
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 357
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 358
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 359
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 361
    :cond_29
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    return v0
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 4
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 319
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 320
    return v0

    .line 322
    :cond_4
    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsInteger(I)Z

    move-result v1

    if-nez v1, :cond_20

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsInteger(I)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumInteger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/IntRange;->containsInteger(I)Z

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

.method public toArray()[I
    .registers 4

    .line 391
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 392
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 393
    iget v2, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    add-int/2addr v2, v1

    aput v2, v0, v1

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 396
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 372
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 373
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 374
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 376
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 378
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 381
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2a
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    return-object v0
.end method
