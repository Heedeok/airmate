.class public Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "WebSocketFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<",
        "Lorg/jboss/netty/handler/codec/replay/VoidEnum;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_FRAME_SIZE:I = 0x4000


# instance fields
.field private final maxFrameSize:I

.field private receivedClosingHandshake:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "maxFrameSize"    # I

    .line 54
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>()V

    .line 55
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->maxFrameSize:I

    .line 56
    return-void
.end method

.method private decodeBinaryFrame(ILorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    .registers 10
    .param p1, "type"    # I
    .param p2, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .line 80
    const-wide/16 v0, 0x0

    .line 81
    .local v0, "frameSize":J
    const/4 v2, 0x0

    .line 84
    .local v2, "lengthFieldSize":I
    :cond_3
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    .line 85
    .local v3, "b":B
    const/4 v4, 0x7

    shl-long/2addr v0, v4

    .line 86
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 87
    iget v4, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->maxFrameSize:I

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-gtz v6, :cond_3e

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    const/16 v4, 0x8

    if-gt v2, v4, :cond_38

    .line 95
    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_3

    .line 97
    const/16 v4, 0xff

    if-ne p1, v4, :cond_2d

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2d

    .line 98
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->receivedClosingHandshake:Z

    .line 101
    :cond_2d
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;

    long-to-int v5, v0

    invoke-interface {p2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;-><init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v4

    .line 93
    :cond_38
    new-instance v4, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v4

    .line 88
    :cond_3e
    new-instance v4, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v4
.end method

.method private decodeTextFrame(ILorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
    .registers 9
    .param p1, "type"    # I
    .param p2, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .line 106
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 107
    .local v0, "ridx":I
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->actualReadableBytes()I

    move-result v1

    .line 108
    .local v1, "rbytes":I
    add-int v2, v0, v1

    const/4 v3, -0x1

    invoke-interface {p2, v0, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v2

    .line 109
    .local v2, "delimPos":I
    if-ne v2, v3, :cond_1d

    .line 111
    iget v3, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->maxFrameSize:I

    if-gt v1, v3, :cond_17

    .line 116
    const/4 v3, 0x0

    return-object v3

    .line 113
    :cond_17
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v3}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v3

    .line 120
    :cond_1d
    sub-int v3, v2, v0

    .line 121
    .local v3, "frameSize":I
    iget v4, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->maxFrameSize:I

    if-gt v3, v4, :cond_31

    .line 125
    invoke-interface {p2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 126
    .local v4, "binaryData":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 127
    new-instance v5, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;

    invoke-direct {v5, p1, v4}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;-><init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v5

    .line 122
    .end local v4    # "binaryData":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_31
    new-instance v4, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v4
.end method


# virtual methods
.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .registers 6
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x1"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "x2"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "x3"    # Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    move-object v0, p4

    check-cast v0, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/replay/VoidEnum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->receivedClosingHandshake:Z

    if-eqz v0, :cond_d

    .line 64
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->actualReadableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_d
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    .line 70
    .local v0, "type":B
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1c

    .line 72
    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->decodeBinaryFrame(ILorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;

    move-result-object v1

    return-object v1

    .line 75
    :cond_1c
    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrameDecoder;->decodeTextFrame(ILorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;

    move-result-object v1

    return-object v1
.end method
