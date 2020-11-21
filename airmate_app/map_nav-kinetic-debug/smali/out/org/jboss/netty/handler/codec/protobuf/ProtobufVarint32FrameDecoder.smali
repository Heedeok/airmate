.class public Lorg/jboss/netty/handler/codec/protobuf/ProtobufVarint32FrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "ProtobufVarint32FrameDecoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 10
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 57
    .local v0, "buf":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_55

    .line 58
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_16

    .line 59
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 60
    return-object v4

    .line 63
    :cond_16
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    aput-byte v3, v0, v2

    .line 64
    aget-byte v3, v0, v2

    if-ltz v3, :cond_52

    .line 65
    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v1, v3}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 66
    .local v1, "length":I
    if-ltz v1, :cond_3b

    .line 70
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    if-ge v3, v1, :cond_36

    .line 71
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 72
    return-object v4

    .line 74
    :cond_36
    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3

    .line 67
    :cond_3b
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "negative length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    .end local v1    # "length":I
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 80
    .end local v2    # "i":I
    :cond_55
    new-instance v1, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    const-string v2, "length wider than 32-bit"

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
