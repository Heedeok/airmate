.class public Lorg/apache/commons/lang/mutable/MutableLong;
.super Ljava/lang/Number;
.source "MutableLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 67
    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 5
    .param p1, "operand"    # J

    .line 132
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 133
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 6
    .param p1, "operand"    # Ljava/lang/Number;

    .line 146
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 147
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 258
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/mutable/MutableLong;

    .line 259
    .local v0, "other":Lorg/apache/commons/lang/mutable/MutableLong;
    iget-wide v1, v0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 260
    .local v1, "anotherVal":J
    iget-wide v3, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_d

    const/4 v3, -0x1

    goto :goto_16

    :cond_d
    iget-wide v3, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_15

    const/4 v3, 0x0

    goto :goto_16

    :cond_15
    const/4 v3, 0x1

    :goto_16
    return v3
.end method

.method public decrement()V
    .registers 5

    .line 119
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 120
    return-void
.end method

.method public doubleValue()D
    .registers 3

    .line 210
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 234
    instance-of v0, p1, Lorg/apache/commons/lang/mutable/MutableLong;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 235
    iget-wide v2, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/mutable/MutableLong;

    invoke-virtual {v0}, Lorg/apache/commons/lang/mutable/MutableLong;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    return v1

    .line 237
    :cond_15
    return v1
.end method

.method public floatValue()F
    .registers 3

    .line 201
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4

    .line 76
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 246
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    iget-wide v2, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .registers 5

    .line 110
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 111
    return-void
.end method

.method public intValue()I
    .registers 3

    .line 183
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 192
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .registers 3
    .param p1, "value"    # J

    .line 86
    iput-wide p1, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 87
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/mutable/MutableLong;->setValue(J)V

    .line 101
    return-void
.end method

.method public subtract(J)V
    .registers 5
    .param p1, "operand"    # J

    .line 158
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 159
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 6
    .param p1, "operand"    # Ljava/lang/Number;

    .line 172
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 173
    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .registers 4

    .line 220
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lorg/apache/commons/lang/mutable/MutableLong;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 269
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
