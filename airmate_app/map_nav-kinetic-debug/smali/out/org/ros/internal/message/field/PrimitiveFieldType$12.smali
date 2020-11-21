.class final enum Lorg/ros/internal/message/field/PrimitiveFieldType$12;
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

    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;-><init>(Ljava/lang/String;ILorg/ros/internal/message/field/PrimitiveFieldType$1;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Float;
    .registers 3
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 501
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 2

    .line 475
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$12;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue()Ljava/lang/Float;
    .registers 2

    .line 479
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 475
    invoke-virtual {p0}, Lorg/ros/internal/message/field/PrimitiveFieldType$12;->getDefaultValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 2

    .line 512
    const-string v0, "float"

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .line 489
    const/4 v0, 0x4

    return v0
.end method

.method public newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 484
    invoke-static {p1, p2}, Lorg/ros/internal/message/field/FloatArrayField;->newVariable(Ljava/lang/String;I)Lorg/ros/internal/message/field/FloatArrayField;

    move-result-object v0

    return-object v0
.end method

.method public parseFromString(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 507
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 475
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$12;->parseFromString(Ljava/lang/String;)Ljava/lang/Float;

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

    .line 494
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/Float;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 495
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeFloat(F)V

    .line 496
    return-void
.end method
