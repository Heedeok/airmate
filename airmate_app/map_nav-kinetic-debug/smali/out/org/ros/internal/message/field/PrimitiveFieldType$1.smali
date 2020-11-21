.class final enum Lorg/ros/internal/message/field/PrimitiveFieldType$1;
.super Lorg/ros/internal/message/field/PrimitiveFieldType;
.source "PrimitiveFieldType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/internal/message/field/PrimitiveFieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;-><init>(Ljava/lang/String;ILorg/ros/internal/message/field/PrimitiveFieldType$1;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 61
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$1;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue()Ljava/lang/Boolean;
    .registers 2

    .line 39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lorg/ros/internal/message/field/PrimitiveFieldType$1;->getDefaultValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 2

    .line 72
    const-string v0, "boolean"

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/BooleanArrayField;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 44
    invoke-static {p1, p2}, Lorg/ros/internal/message/field/BooleanArrayField;->newVariable(Ljava/lang/String;I)Lorg/ros/internal/message/field/BooleanArrayField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/ros/internal/message/field/PrimitiveFieldType$1;->newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/BooleanArrayField;

    move-result-object p1

    return-object p1
.end method

.method public parseFromString(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 67
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$1;->parseFromString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p2, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ")V"
        }
    .end annotation

    .line 54
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 55
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 56
    return-void
.end method
