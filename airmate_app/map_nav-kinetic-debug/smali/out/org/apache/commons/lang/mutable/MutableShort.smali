.class public Lorg/apache/commons/lang/mutable/MutableShort;
.super Ljava/lang/Number;
.source "MutableShort.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = -0x7f4d983fL


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 67
    return-void
.end method

.method public constructor <init>(S)V
    .registers 2
    .param p1, "value"    # S

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-short p1, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 54
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 146
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 147
    return-void
.end method

.method public add(S)V
    .registers 3
    .param p1, "operand"    # S

    .line 132
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 133
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 267
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/mutable/MutableShort;

    .line 268
    .local v0, "other":Lorg/apache/commons/lang/mutable/MutableShort;
    iget-short v1, v0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 269
    .local v1, "anotherVal":S
    iget-short v2, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    if-ge v2, v1, :cond_b

    const/4 v2, -0x1

    goto :goto_12

    :cond_b
    iget-short v2, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    if-ne v2, v1, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    const/4 v2, 0x1

    :goto_12
    return v2
.end method

.method public decrement()V
    .registers 2

    .line 119
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 120
    return-void
.end method

.method public doubleValue()D
    .registers 3

    .line 219
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 243
    instance-of v0, p1, Lorg/apache/commons/lang/mutable/MutableShort;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 244
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang/mutable/MutableShort;

    invoke-virtual {v2}, Lorg/apache/commons/lang/mutable/MutableShort;->shortValue()S

    move-result v2

    if-ne v0, v2, :cond_12

    const/4 v1, 0x1

    nop

    :cond_12
    return v1

    .line 246
    :cond_13
    return v1
.end method

.method public floatValue()F
    .registers 2

    .line 210
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/Short;

    iget-short v1, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 255
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    return v0
.end method

.method public increment()V
    .registers 2

    .line 110
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 111
    return-void
.end method

.method public intValue()I
    .registers 2

    .line 192
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 201
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/mutable/MutableShort;->setValue(S)V

    .line 101
    return-void
.end method

.method public setValue(S)V
    .registers 2
    .param p1, "value"    # S

    .line 86
    iput-short p1, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 87
    return-void
.end method

.method public shortValue()S
    .registers 2

    .line 183
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    return v0
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 172
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 173
    return-void
.end method

.method public subtract(S)V
    .registers 3
    .param p1, "operand"    # S

    .line 158
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 159
    return-void
.end method

.method public toShort()Ljava/lang/Short;
    .registers 3

    .line 229
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Lorg/apache/commons/lang/mutable/MutableShort;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 278
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
