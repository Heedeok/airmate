.class public Lorg/ros/internal/message/field/ChannelBufferField;
.super Lorg/ros/internal/message/field/Field;
.source "ChannelBufferField.java"


# instance fields
.field private final size:I

.field private value:Lorg/jboss/netty/buffer/ChannelBuffer;


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
    iput p3, p0, Lorg/ros/internal/message/field/ChannelBufferField;->size:I

    .line 43
    invoke-static {}, Lorg/ros/internal/message/MessageBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 44
    return-void
.end method

.method public static newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)Lorg/ros/internal/message/field/ChannelBufferField;
    .registers 4
    .param p0, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 37
    new-instance v0, Lorg/ros/internal/message/field/ChannelBufferField;

    invoke-direct {v0, p0, p1, p2}, Lorg/ros/internal/message/field/ChannelBufferField;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 79
    iget v0, p0, Lorg/ros/internal/message/field/ChannelBufferField;->size:I

    .line 80
    .local v0, "currentSize":I
    if-gez v0, :cond_8

    .line 81
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    .line 83
    :cond_8
    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 84
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 112
    return v0

    .line 113
    :cond_4
    invoke-super {p0, p1}, Lorg/ros/internal/message/field/Field;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 114
    return v2

    .line 115
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 116
    return v2

    .line 117
    :cond_17
    move-object v1, p1

    check-cast v1, Lorg/ros/internal/message/field/ChannelBufferField;

    .line 118
    .local v1, "other":Lorg/ros/internal/message/field/ChannelBufferField;
    iget-object v3, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v3, :cond_23

    .line 119
    iget-object v3, v1, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v3, :cond_2e

    .line 120
    return v2

    .line 121
    :cond_23
    iget-object v3, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v4, v1, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 122
    return v2

    .line 123
    :cond_2e
    return v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 2

    .line 93
    const-string v0, "org.jboss.netty.buffer.ChannelBuffer"

    return-object v0
.end method

.method public getMd5String()Ljava/lang/String;
    .registers 5

    .line 88
    const-string v0, "%s %s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/internal/message/field/ChannelBufferField;->type:Lorg/ros/internal/message/field/FieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/internal/message/field/ChannelBufferField;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lorg/ros/internal/message/field/ChannelBufferField;->getValue()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 51
    iget-object v0, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 103
    const/16 v0, 0x1f

    .line 104
    .local v0, "prime":I
    invoke-super {p0}, Lorg/ros/internal/message/field/Field;->hashCode()I

    move-result v1

    .line 105
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_14

    :cond_e
    iget-object v3, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v2, v3

    .line 106
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public serialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 69
    iget v0, p0, Lorg/ros/internal/message/field/ChannelBufferField;->size:I

    if-gez v0, :cond_d

    .line 70
    iget-object v0, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 74
    :cond_d
    iget-object v0, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 75
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "channelBufferValue":Lorg/jboss/netty/buffer/ChannelBuffer;
    instance-of v1, p1, [B

    if-eqz v1, :cond_14

    .line 58
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const-class v2, [B

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_21

    .line 59
    :cond_14
    instance-of v1, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v1, :cond_21

    .line 60
    const-class v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 62
    :cond_21
    :goto_21
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 63
    iget v1, p0, Lorg/ros/internal/message/field/ChannelBufferField;->size:I

    if-ltz v1, :cond_3f

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    iget v2, p0, Lorg/ros/internal/message/field/ChannelBufferField;->size:I

    if-ne v1, v2, :cond_3e

    goto :goto_3f

    :cond_3e
    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v3, 0x1

    :goto_40
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 64
    iput-object v0, p0, Lorg/ros/internal/message/field/ChannelBufferField;->value:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelBufferField<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/ChannelBufferField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/ChannelBufferField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
