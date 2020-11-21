.class public Lorg/ros/internal/message/field/IntegerArrayField;
.super Lorg/ros/internal/message/field/Field;
.source "IntegerArrayField.java"


# instance fields
.field private final size:I

.field private value:[I


# direct methods
.method private constructor <init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)V
    .registers 5
    .param p1, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "size"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/Field;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Z)V

    .line 40
    iput p3, p0, Lorg/ros/internal/message/field/IntegerArrayField;->size:I

    .line 41
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lorg/ros/internal/message/field/IntegerArrayField;->setValue(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public static newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)Lorg/ros/internal/message/field/IntegerArrayField;
    .registers 4
    .param p0, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 35
    new-instance v0, Lorg/ros/internal/message/field/IntegerArrayField;

    invoke-direct {v0, p0, p1, p2}, Lorg/ros/internal/message/field/IntegerArrayField;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 68
    iget v0, p0, Lorg/ros/internal/message/field/IntegerArrayField;->size:I

    .line 69
    .local v0, "currentSize":I
    if-gez v0, :cond_8

    .line 70
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    .line 72
    :cond_8
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1a

    .line 74
    iget-object v2, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 76
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 104
    return v0

    .line 105
    :cond_4
    invoke-super {p0, p1}, Lorg/ros/internal/message/field/Field;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 106
    return v2

    .line 107
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 108
    return v2

    .line 109
    :cond_17
    move-object v1, p1

    check-cast v1, Lorg/ros/internal/message/field/IntegerArrayField;

    .line 110
    .local v1, "other":Lorg/ros/internal/message/field/IntegerArrayField;
    iget-object v3, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    if-nez v3, :cond_23

    .line 111
    iget-object v3, v1, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    if-eqz v3, :cond_2e

    .line 112
    return v2

    .line 113
    :cond_23
    iget-object v3, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    iget-object v4, v1, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 114
    return v2

    .line 115
    :cond_2e
    return v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ros/internal/message/field/IntegerArrayField;->type:Lorg/ros/internal/message/field/FieldType;

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

    .line 80
    const-string v0, "%s %s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/internal/message/field/IntegerArrayField;->type:Lorg/ros/internal/message/field/FieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/internal/message/field/IntegerArrayField;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lorg/ros/internal/message/field/IntegerArrayField;->getValue()[I

    move-result-object v0

    return-object v0
.end method

.method public getValue()[I
    .registers 2

    .line 47
    iget-object v0, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 95
    const/16 v0, 0x1f

    .line 96
    .local v0, "prime":I
    invoke-super {p0}, Lorg/ros/internal/message/field/Field;->hashCode()I

    move-result v1

    .line 97
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_14

    :cond_e
    iget-object v3, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    :goto_14
    add-int/2addr v2, v3

    .line 98
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public serialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 8
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 58
    iget v0, p0, Lorg/ros/internal/message/field/IntegerArrayField;->size:I

    if-gez v0, :cond_a

    .line 59
    iget-object v0, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 61
    :cond_a
    iget-object v0, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    aget v3, v0, v2

    .line 62
    .local v3, "v":I
    iget-object v4, p0, Lorg/ros/internal/message/field/IntegerArrayField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Lorg/ros/internal/message/field/FieldType;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 61
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 64
    :cond_1e
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 52
    iget v0, p0, Lorg/ros/internal/message/field/IntegerArrayField;->size:I

    if-ltz v0, :cond_f

    move-object v0, p1

    check-cast v0, [I

    array-length v0, v0

    iget v1, p0, Lorg/ros/internal/message/field/IntegerArrayField;->size:I

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

    .line 53
    move-object v0, p1

    check-cast v0, [I

    iput-object v0, p0, Lorg/ros/internal/message/field/IntegerArrayField;->value:[I

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntegerArrayField<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/IntegerArrayField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/IntegerArrayField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
