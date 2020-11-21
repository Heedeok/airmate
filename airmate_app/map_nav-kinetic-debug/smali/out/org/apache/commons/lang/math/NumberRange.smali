.class public final Lorg/apache/commons/lang/math/NumberRange;
.super Lorg/apache/commons/lang/math/Range;
.source "NumberRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfe9e6L


# instance fields
.field private transient hashCode:I

.field private final max:Ljava/lang/Number;

.field private final min:Ljava/lang/Number;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1, "num"    # Ljava/lang/Number;

    .line 66
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_48

    .line 70
    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_40

    .line 73
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_25

    .line 74
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_25
    :goto_25
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_3b

    .line 77
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3b
    :goto_3b
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    .line 81
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    .line 82
    return-void

    .line 71
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must implement Comparable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 5
    .param p1, "num1"    # Ljava/lang/Number;
    .param p2, "num2"    # Ljava/lang/Number;

    .line 102
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    .line 103
    if-eqz p1, :cond_83

    if-eqz p2, :cond_83

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_7b

    .line 109
    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_73

    .line 112
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3a

    .line 113
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_32

    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_59

    .line 114
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3a
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_59

    .line 117
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_51

    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_59

    .line 118
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_59
    :goto_59
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 123
    .local v0, "compare":I
    if-nez v0, :cond_67

    .line 124
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    .line 125
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    goto :goto_72

    .line 126
    :cond_67
    if-lez v0, :cond_6e

    .line 127
    iput-object p2, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    .line 128
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    goto :goto_72

    .line 130
    :cond_6e
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    .line 131
    iput-object p2, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    .line 133
    :goto_72
    return-void

    .line 110
    .end local v0    # "compare":I
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must implement Comparable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must be of the same type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public containsNumber(Ljava/lang/Number;)Z
    .registers 5
    .param p1, "number"    # Ljava/lang/Number;

    .line 170
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 171
    return v0

    .line 173
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_27

    .line 176
    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 177
    .local v1, "compareMin":I
    iget-object v2, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 178
    .local v2, "compareMax":I
    if-gtz v1, :cond_26

    if-ltz v2, :cond_26

    const/4 v0, 0x1

    nop

    :cond_26
    return v0

    .line 174
    .end local v1    # "compareMin":I
    .end local v2    # "compareMax":I
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must be of the same type as the range numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 197
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 198
    return v0

    .line 200
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/lang/math/NumberRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 201
    return v2

    .line 203
    :cond_a
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/math/NumberRange;

    .line 204
    .local v1, "range":Lorg/apache/commons/lang/math/NumberRange;
    iget-object v3, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    iget-object v4, v1, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    iget-object v4, v1, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    return-object v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 213
    iget v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    if-nez v0, :cond_31

    .line 214
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 215
    iget v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 216
    iget v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 217
    iget v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 219
    :cond_31
    iget v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 230
    iget-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 232
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 234
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 236
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    .line 239
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2a
    iget-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    return-object v0
.end method
