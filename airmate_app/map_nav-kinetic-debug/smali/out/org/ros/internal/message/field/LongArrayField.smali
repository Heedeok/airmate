.class public Lorg/ros/internal/message/field/LongArrayField;
.super Lorg/ros/internal/message/field/Field;
.source "LongArrayField.java"


# instance fields
.field private final size:I

.field private value:[J


# direct methods
.method private constructor <init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)V
    .registers 5
    .param p1, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "size"    # I

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/Field;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Z)V

    .line 42
    iput p3, p0, Lorg/ros/internal/message/field/LongArrayField;->size:I

    .line 43
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    invoke-virtual {p0, v0}, Lorg/ros/internal/message/field/LongArrayField;->setValue(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)Lorg/ros/internal/message/field/LongArrayField;
    .registers 4
    .param p0, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 35
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 35
    :goto_1c
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 37
    new-instance v0, Lorg/ros/internal/message/field/LongArrayField;

    invoke-direct {v0, p0, p1, p2}, Lorg/ros/internal/message/field/LongArrayField;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 7
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 70
    iget v0, p0, Lorg/ros/internal/message/field/LongArrayField;->size:I

    .line 71
    .local v0, "currentSize":I
    if-gez v0, :cond_8

    .line 72
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    .line 74
    :cond_8
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1a

    .line 76
    iget-object v2, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 78
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 106
    return v0

    .line 107
    :cond_4
    invoke-super {p0, p1}, Lorg/ros/internal/message/field/Field;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 108
    return v2

    .line 109
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 110
    return v2

    .line 111
    :cond_17
    move-object v1, p1

    check-cast v1, Lorg/ros/internal/message/field/LongArrayField;

    .line 112
    .local v1, "other":Lorg/ros/internal/message/field/LongArrayField;
    iget-object v3, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    if-nez v3, :cond_23

    .line 113
    iget-object v3, v1, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    if-eqz v3, :cond_2e

    .line 114
    return v2

    .line 115
    :cond_23
    iget-object v3, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    iget-object v4, v1, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 116
    return v2

    .line 117
    :cond_2e
    return v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ros/internal/message/field/LongArrayField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-interface {v1}, Lorg/ros/internal/message/field/FieldType;->getJavaTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5String()Ljava/lang/String;
    .registers 5

    .line 82
    const-string v0, "%s %s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/internal/message/field/LongArrayField;->type:Lorg/ros/internal/message/field/FieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/internal/message/field/LongArrayField;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lorg/ros/internal/message/field/LongArrayField;->getValue()[J

    move-result-object v0

    return-object v0
.end method

.method public getValue()[J
    .registers 2

    .line 49
    iget-object v0, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 97
    const/16 v0, 0x1f

    .line 98
    .local v0, "prime":I
    invoke-super {p0}, Lorg/ros/internal/message/field/Field;->hashCode()I

    move-result v1

    .line 99
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_14

    :cond_e
    iget-object v3, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([J)I

    move-result v3

    :goto_14
    add-int/2addr v2, v3

    .line 100
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public serialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 9
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 60
    iget v0, p0, Lorg/ros/internal/message/field/LongArrayField;->size:I

    if-gez v0, :cond_a

    .line 61
    iget-object v0, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 63
    :cond_a
    iget-object v0, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    aget-wide v3, v0, v2

    .line 64
    .local v3, "v":J
    iget-object v5, p0, Lorg/ros/internal/message/field/LongArrayField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Lorg/ros/internal/message/field/FieldType;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 63
    .end local v3    # "v":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 66
    :cond_1e
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 54
    iget v0, p0, Lorg/ros/internal/message/field/LongArrayField;->size:I

    if-ltz v0, :cond_f

    move-object v0, p1

    check-cast v0, [J

    array-length v0, v0

    iget v1, p0, Lorg/ros/internal/message/field/LongArrayField;->size:I

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 55
    move-object v0, p1

    check-cast v0, [J

    iput-object v0, p0, Lorg/ros/internal/message/field/LongArrayField;->value:[J

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongArrayField<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/LongArrayField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/LongArrayField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
