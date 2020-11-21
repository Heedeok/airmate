.class public abstract Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "HttpContentEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acceptEncodingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 50
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 52
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    .line 60
    return-void
.end method

.method private encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 190
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->offer(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method private finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3

    .line 196
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->finish()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 197
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1f

    .line 199
    :cond_1d
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 201
    .local v0, "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    .line 202
    return-object v0
.end method


# virtual methods
.method protected abstract getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "msg":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-nez v1, :cond_c

    .line 67
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 68
    return-void

    .line 71
    :cond_c
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 72
    .local v1, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    const-string v2, "Accept-Encoding"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "acceptedEncoding":Ljava/lang/String;
    if-nez v2, :cond_19

    .line 74
    const-string v2, "identity"

    .line 76
    :cond_19
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 77
    .local v3, "offered":Z
    nop

    .line 79
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 80
    return-void
.end method

.method protected abstract newContentEncoder(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 13
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "msg":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v1, :cond_1c

    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1c

    .line 89
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_fd

    .line 90
    :cond_1c
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v1, :cond_ae

    .line 91
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 93
    .local v1, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    .line 95
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, "acceptEncoding":Ljava/lang/String;
    if-eqz v2, :cond_a6

    .line 100
    const-string v3, "Content-Encoding"

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "contentEncoding":Ljava/lang/String;
    if-eqz v3, :cond_44

    const-string v4, "identity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 104
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_a5

    .line 107
    :cond_44
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_59

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_59

    :cond_57
    const/4 v4, 0x0

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v4, 0x1

    .line 108
    .local v4, "hasContent":Z
    :goto_5a
    if-eqz v4, :cond_a2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->newContentEncoder(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    move-result-object v7

    iput-object v7, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    if-eqz v7, :cond_a2

    .line 111
    const-string v7, "Content-Encoding"

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v7

    if-nez v7, :cond_a2

    .line 116
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 118
    .local v7, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v8, 0x2

    new-array v8, v8, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v7}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v8}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    .line 122
    .end local v7    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v5, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 123
    const-string v6, "Content-Length"

    invoke-interface {v1, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 124
    const-string v6, "Content-Length"

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .end local v5    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_a2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 134
    .end local v1    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .end local v2    # "acceptEncoding":Ljava/lang/String;
    .end local v3    # "contentEncoding":Ljava/lang/String;
    .end local v4    # "hasContent":Z
    :goto_a5
    goto :goto_fd

    .line 97
    .restart local v1    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .restart local v2    # "acceptEncoding":Ljava/lang/String;
    :cond_a6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cannot send more responses than requests"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    .end local v1    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .end local v2    # "acceptEncoding":Ljava/lang/String;
    :cond_ae
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v1, :cond_fa

    .line 135
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 136
    .local v1, "c":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 139
    .local v2, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    if-eqz v3, :cond_f6

    .line 140
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v3

    if-nez v3, :cond_d4

    .line 141
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 142
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 143
    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 144
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_f9

    .line 147
    :cond_d4
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 151
    .local v3, "lastProduct":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 152
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    new-instance v5, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v5, v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 158
    :cond_f2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 159
    .end local v3    # "lastProduct":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_f9

    .line 161
    :cond_f6
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 163
    .end local v1    # "c":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_f9
    :goto_f9
    goto :goto_fd

    .line 164
    :cond_fa
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 166
    :goto_fd
    return-void
.end method
