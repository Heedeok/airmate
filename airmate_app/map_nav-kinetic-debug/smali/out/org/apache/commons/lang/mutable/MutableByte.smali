.class public Lorg/apache/commons/lang/mutable/MutableByte;
.super Ljava/lang/Number;
.source "MutableByte.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = -0x5e85be21L


# instance fields
.field private value:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(B)V
    .registers 2
    .param p1, "value"    # B

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-byte p1, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 67
    return-void
.end method


# virtual methods
.method public add(B)V
    .registers 3
    .param p1, "operand"    # B

    .line 189
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 190
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 203
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 204
    return-void
.end method

.method public byteValue()B
    .registers 2

    .line 111
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 267
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/mutable/MutableByte;

    .line 268
    .local v0, "other":Lorg/apache/commons/lang/mutable/MutableByte;
    iget-byte v1, v0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 269
    .local v1, "anotherVal":B
    iget-byte v2, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    if-ge v2, v1, :cond_b

    const/4 v2, -0x1

    goto :goto_12

    :cond_b
    iget-byte v2, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

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

    .line 176
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 177
    return-void
.end method

.method public doubleValue()D
    .registers 3

    .line 147
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 243
    instance-of v0, p1, Lorg/apache/commons/lang/mutable/MutableByte;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 244
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang/mutable/MutableByte;

    invoke-virtual {v2}, Lorg/apache/commons/lang/mutable/MutableByte;->byteValue()B

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

    .line 138
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/Byte;

    iget-byte v1, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 255
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    return v0
.end method

.method public increment()V
    .registers 2

    .line 167
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 168
    return-void
.end method

.method public intValue()I
    .registers 2

    .line 120
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 129
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(B)V
    .registers 2
    .param p1, "value"    # B

    .line 86
    iput-byte p1, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 87
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/mutable/MutableByte;->setValue(B)V

    .line 101
    return-void
.end method

.method public subtract(B)V
    .registers 3
    .param p1, "operand"    # B

    .line 215
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 216
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 229
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 230
    return-void
.end method

.method public toByte()Ljava/lang/Byte;
    .registers 3

    .line 157
    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Lorg/apache/commons/lang/mutable/MutableByte;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 278
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
