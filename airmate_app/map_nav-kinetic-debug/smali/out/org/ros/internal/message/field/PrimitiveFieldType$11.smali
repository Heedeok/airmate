.class final enum Lorg/ros/internal/message/field/PrimitiveFieldType$11;
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

    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;-><init>(Ljava/lang/String;ILorg/ros/internal/message/field/PrimitiveFieldType$1;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Long;
    .registers 3
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 461
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 2

    .line 436
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue()Ljava/lang/Long;
    .registers 2

    .line 440
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 436
    invoke-virtual {p0}, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->getDefaultValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 2

    .line 472
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;->getJavaTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .line 450
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 445
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/PrimitiveFieldType;->newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;

    move-result-object v0

    return-object v0
.end method

.method public parseFromString(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 467
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType;->parseFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 436
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->parseFromString(Ljava/lang/String;)Ljava/lang/Long;

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

    .line 455
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType$11;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/message/field/PrimitiveFieldType;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 456
    return-void
.end method