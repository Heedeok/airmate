.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "WebSocket00FrameEncoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    if-eqz v0, :cond_c0

    .line 39
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 40
    .local v0, "frame":Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_39

    .line 42
    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 43
    .local v1, "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v5

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v7

    add-int/2addr v7, v4

    invoke-interface {v5, v6, v7}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 45
    .local v4, "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 46
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    invoke-interface {v4, v1, v3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 47
    invoke-interface {v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 48
    return-object v4

    .line 49
    .end local v1    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_39
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v1, :cond_58

    .line 51
    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 52
    .restart local v1    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v5

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 53
    .restart local v4    # "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 54
    invoke-interface {v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 55
    return-object v4

    .line 58
    .end local v1    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_58
    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 59
    .restart local v1    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    .line 60
    .local v2, "dataLen":I
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v3

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x5

    invoke-interface {v3, v4, v5}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 63
    .local v3, "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/16 v4, -0x80

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 66
    ushr-int/lit8 v4, v2, 0x1c

    and-int/lit8 v4, v4, 0x7f

    .line 67
    .local v4, "b1":I
    ushr-int/lit8 v5, v2, 0xe

    and-int/lit8 v5, v5, 0x7f

    .line 68
    .local v5, "b2":I
    ushr-int/lit8 v6, v2, 0x7

    and-int/lit8 v6, v6, 0x7f

    .line 69
    .local v6, "b3":I
    and-int/lit8 v7, v2, 0x7f

    .line 70
    .local v7, "b4":I
    if-nez v4, :cond_a6

    .line 71
    if-nez v5, :cond_98

    .line 72
    if-nez v6, :cond_8f

    .line 73
    invoke-interface {v3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_b8

    .line 75
    :cond_8f
    or-int/lit16 v8, v6, 0x80

    invoke-interface {v3, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 76
    invoke-interface {v3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_b8

    .line 79
    :cond_98
    or-int/lit16 v8, v5, 0x80

    invoke-interface {v3, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 80
    or-int/lit16 v8, v6, 0x80

    invoke-interface {v3, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 81
    invoke-interface {v3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_b8

    .line 84
    :cond_a6
    or-int/lit16 v8, v4, 0x80

    invoke-interface {v3, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 85
    or-int/lit16 v8, v5, 0x80

    invoke-interface {v3, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 86
    or-int/lit16 v8, v6, 0x80

    invoke-interface {v3, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 87
    invoke-interface {v3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 91
    :goto_b8
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v8

    invoke-interface {v3, v1, v8, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 92
    return-object v3

    .line 95
    .end local v0    # "frame":Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
    .end local v1    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v2    # "dataLen":I
    .end local v3    # "encoded":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v6    # "b3":I
    .end local v7    # "b4":I
    :cond_c0
    return-object p3
.end method
