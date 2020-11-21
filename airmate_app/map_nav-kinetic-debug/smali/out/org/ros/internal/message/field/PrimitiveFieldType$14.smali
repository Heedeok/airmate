.class final enum Lorg/ros/internal/message/field/PrimitiveFieldType$14;
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

    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/PrimitiveFieldType;-><init>(Ljava/lang/String;ILorg/ros/internal/message/field/PrimitiveFieldType$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$14;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;
    .registers 5
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 583
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    .line 584
    .local v0, "length":I
    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 585
    .local v1, "stringBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/ros/internal/message/field/PrimitiveFieldType;->access$100()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 555
    invoke-virtual {p0}, Lorg/ros/internal/message/field/PrimitiveFieldType$14;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 2

    .line 559
    const-string v0, ""

    return-object v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 2

    .line 596
    const-string v0, "java.lang.String"

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .line 569
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 564
    invoke-static {p0, p1}, Lorg/ros/internal/message/field/ListField;->newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)Lorg/ros/internal/message/field/ListField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/field/PrimitiveFieldType$14;->parseFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseFromString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 591
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

    .line 574
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 575
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lorg/ros/internal/message/field/PrimitiveFieldType;->access$100()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 576
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-interface {p2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 577
    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 578
    return-void
.end method
