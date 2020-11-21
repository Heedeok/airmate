.class final enum Lorg/ros/internal/message/field/PrimitiveFieldType$6;
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

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;-><init>(Ljava/lang/String;ILorg/ros/internal/message/field/PrimitiveFieldType$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 2

    .line 238
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$6;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Short;
    .registers 3
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 264
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 238
    invoke-virtual {p0}, Lorg/ros/internal/message/field/PrimitiveFieldType$6;->getDefaultValue()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Short;
    .registers 2

    .line 242
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 2

    .line 275
    const-string v0, "short"

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .line 252
    const/4 v0, 0x2

    return v0
.end method

.method public newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 247
    invoke-static {p0, p1, p2}, Lorg/ros/internal/message/field/ShortArrayField;->newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)Lorg/ros/internal/message/field/ShortArrayField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 238
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$6;->parseFromString(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public parseFromString(Ljava/lang/String;)Ljava/lang/Short;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 270
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
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

    .line 257
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/Short;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 258
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 259
    return-void
.end method
