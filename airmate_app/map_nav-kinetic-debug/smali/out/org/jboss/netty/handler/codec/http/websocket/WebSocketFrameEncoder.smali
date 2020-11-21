.class public Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "WebSocketFrameEncoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;

    if-eqz v0, :cond_a6

    .line 42
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;

    .line 43
    .local v0, "frame":Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;->getType()I

    move-result v1

    .line 44
    .local v1, "type":I
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;->isText()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 46
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 47
    .local v2, "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v3

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v3, v4, v5}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 50
    .local v3, "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    int-to-byte v4, v1

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 51
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    invoke-interface {v3, v2, v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 52
    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 53
    return-object v3

    .line 56
    .end local v2    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_3f
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 57
    .restart local v2    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    .line 58
    .local v3, "dataLen":I
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v4

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x5

    invoke-interface {v4, v5, v6}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 63
    .local v4, "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    int-to-byte v5, v1

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 66
    ushr-int/lit8 v5, v3, 0x1c

    and-int/lit8 v5, v5, 0x7f

    .line 67
    .local v5, "b1":I
    ushr-int/lit8 v6, v3, 0xe

    and-int/lit8 v6, v6, 0x7f

    .line 68
    .local v6, "b2":I
    ushr-int/lit8 v7, v3, 0x7

    and-int/lit8 v7, v7, 0x7f

    .line 69
    .local v7, "b3":I
    and-int/lit8 v8, v3, 0x7f

    .line 70
    .local v8, "b4":I
    if-nez v5, :cond_8c

    .line 71
    if-nez v6, :cond_7e

    .line 72
    if-nez v7, :cond_75

    .line 73
    invoke-interface {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_9e

    .line 75
    :cond_75
    or-int/lit16 v9, v7, 0x80

    invoke-interface {v4, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 76
    invoke-interface {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_9e

    .line 79
    :cond_7e
    or-int/lit16 v9, v6, 0x80

    invoke-interface {v4, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 80
    or-int/lit16 v9, v7, 0x80

    invoke-interface {v4, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 81
    invoke-interface {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_9e

    .line 84
    :cond_8c
    or-int/lit16 v9, v5, 0x80

    invoke-interface {v4, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 85
    or-int/lit16 v9, v6, 0x80

    invoke-interface {v4, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 86
    or-int/lit16 v9, v7, 0x80

    invoke-interface {v4, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 87
    invoke-interface {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 91
    :goto_9e
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v9

    invoke-interface {v4, v2, v9, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 92
    return-object v4

    .line 95
    .end local v0    # "frame":Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    .end local v1    # "type":I
    .end local v2    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "dataLen":I
    .end local v4    # "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    .end local v7    # "b3":I
    .end local v8    # "b4":I
    :cond_a6
    return-object p3
.end method
