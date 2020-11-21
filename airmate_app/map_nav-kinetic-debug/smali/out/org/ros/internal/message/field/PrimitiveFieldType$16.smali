.class final enum Lorg/ros/internal/message/field/PrimitiveFieldType$16;
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

    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;-><init>(Ljava/lang/String;ILorg/ros/internal/message/field/PrimitiveFieldType$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 2

    .line 640
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$16;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/ros/message/Duration;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/ros/message/Duration;
    .registers 5
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 667
    new-instance v0, Lorg/ros/message/Duration;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/ros/message/Duration;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 640
    invoke-virtual {p0}, Lorg/ros/internal/message/field/PrimitiveFieldType$16;->getDefaultValue()Lorg/ros/message/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lorg/ros/message/Duration;
    .registers 2

    .line 644
    new-instance v0, Lorg/ros/message/Duration;

    invoke-direct {v0}, Lorg/ros/message/Duration;-><init>()V

    return-object v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 2

    .line 678
    const-class v0, Lorg/ros/message/Duration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .line 654
    const/16 v0, 0x8

    return v0
.end method

.method public newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 649
    invoke-static {p0, p1}, Lorg/ros/internal/message/field/ListField;->newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)Lorg/ros/internal/message/field/ListField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 640
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$16;->parseFromString(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public parseFromString(Ljava/lang/String;)Ljava/lang/Void;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 673
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 659
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lorg/ros/message/Duration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 660
    move-object v0, p1

    check-cast v0, Lorg/ros/message/Duration;

    iget v0, v0, Lorg/ros/message/Duration;->secs:I

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 661
    move-object v0, p1

    check-cast v0, Lorg/ros/message/Duration;

    iget v0, v0, Lorg/ros/message/Duration;->nsecs:I

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 662
    return-void
.end method
