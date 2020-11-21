.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "WebSocket00FrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<",
        "Lorg/jboss/netty/handler/codec/replay/VoidEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_FRAME_SIZE:I = 0x4000


# instance fields
.field private final maxFrameSize:J

.field private receivedClosingHandshake:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxFrameSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>()V

    .line 55
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    .line 56
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .param p1, "maxFrameSize"    # J

    .line 65
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>()V

    .line 66
    iput-wide p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    .line 67
    return-void
.end method

.method private decodeBinaryFrame(BLorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
    .registers 10
    .param p1, "type"    # B
    .param p2, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .line 91
    const-wide/16 v0, 0x0

    .line 92
    .local v0, "frameSize":J
    const/4 v2, 0x0

    .line 95
    .local v2, "lengthFieldSize":I
    :cond_3
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    .line 96
    .local v3, "b":B
    const/4 v4, 0x7

    shl-long/2addr v0, v4

    .line 97
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 98
    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v6, v0, v4

    if-gtz v6, :cond_42

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    const/16 v4, 0x8

    if-gt v2, v4, :cond_3c

    .line 106
    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_3

    .line 108
    const/4 v4, -0x1

    if-ne p1, v4, :cond_31

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_31

    .line 109
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->receivedClosingHandshake:Z

    .line 110
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>()V

    return-object v4

    .line 113
    :cond_31
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    long-to-int v5, v0

    invoke-interface {p2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v4

    .line 104
    :cond_3c
    new-instance v4, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v4

    .line 99
    :cond_42
    new-instance v4, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v4
.end method

.method private decodeTextFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
    .registers 12
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 118
    .local v0, "ridx":I
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->actualReadableBytes()I

    move-result v1

    .line 119
    .local v1, "rbytes":I
    add-int v2, v0, v1

    const/4 v3, -0x1

    invoke-interface {p1, v0, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v2

    .line 120
    .local v2, "delimPos":I
    if-ne v2, v3, :cond_20

    .line 122
    int-to-long v3, v1

    iget-wide v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1a

    .line 127
    const/4 v3, 0x0

    return-object v3

    .line 124
    :cond_1a
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v3}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v3

    .line 131
    :cond_20
    sub-int v4, v2, v0

    .line 132
    .local v4, "frameSize":I
    int-to-long v5, v4

    iget-wide v7, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_4d

    .line 136
    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    .line 137
    .local v5, "binaryData":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 139
    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v7

    invoke-interface {v5, v6, v7, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v3

    .line 140
    .local v3, "ffDelimPos":I
    if-gez v3, :cond_45

    .line 144
    new-instance v6, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    invoke-direct {v6, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v6

    .line 141
    :cond_45
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "a text frame should not contain 0xFF."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    .end local v3    # "ffDelimPos":I
    .end local v5    # "binaryData":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_4d
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v3}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v3
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

    .line 34
    move-object v0, p4

    check-cast v0, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

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

    .line 74
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->receivedClosingHandshake:Z

    if-eqz v0, :cond_d

    .line 75
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->actualReadableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_d
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    .line 81
    .local v0, "type":B
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1c

    .line 83
    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decodeBinaryFrame(BLorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v1

    return-object v1

    .line 86
    :cond_1c
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decodeTextFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v1

    return-object v1
.end method
