.class final enum Lorg/ros/internal/message/field/PrimitiveFieldType$10;
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

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;-><init>(Ljava/lang/String;ILorg/ros/internal/message/field/PrimitiveFieldType$1;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Long;
    .registers 4
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 422
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 2

    .line 396
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$10;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue()Ljava/lang/Long;
    .registers 3

    .line 400
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 396
    invoke-virtual {p0}, Lorg/ros/internal/message/field/PrimitiveFieldType$10;->getDefaultValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 2

    .line 433
    const-string v0, "long"

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .line 410
    const/16 v0, 0x8

    return v0
.end method

.method public newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 405
    invoke-static {p0, p1, p2}, Lorg/ros/internal/message/field/LongArrayField;->newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;I)Lorg/ros/internal/message/field/LongArrayField;

    move-result-object v0

    return-object v0
.end method

.method public parseFromString(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 428
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 396
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$10;->parseFromString(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
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

    .line 415
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 416
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    .line 417
    return-void
.end method
