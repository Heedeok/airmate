.class public abstract Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "HttpContentDecoder.java"


# instance fields
.field private decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 54
    return-void
.end method

.method private decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 158
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->offer(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method private finishDecode()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3

    .line 164
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->finish()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 165
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1f

    .line 167
    :cond_1d
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 169
    .local v0, "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    .line 170
    return-object v0
.end method


# virtual methods
.method protected getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    const-string v0, "identity"

    return-object v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 59
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

    .line 61
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_de

    .line 62
    :cond_1c
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v1, :cond_97

    .line 63
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 65
    .local v1, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    .line 68
    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "contentEncoding":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    .line 72
    :cond_33
    const-string v2, "identity"

    .line 75
    :goto_35
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4a

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_4a

    :cond_48
    const/4 v3, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v3, 0x1

    .line 76
    .local v3, "hasContent":Z
    :goto_4b
    if-eqz v3, :cond_93

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->newContentDecoder(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    move-result-object v6

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    if-eqz v6, :cond_93

    .line 79
    const-string v6, "Content-Encoding"

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v6

    if-nez v6, :cond_93

    .line 84
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 86
    .local v6, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v7, 0x2

    new-array v7, v7, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v6}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->finishDecode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 90
    .end local v6    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v4, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 91
    const-string v5, "Content-Length"

    invoke-interface {v1, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 92
    const-string v5, "Content-Length"

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .end local v4    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_93
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 101
    .end local v1    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .end local v2    # "contentEncoding":Ljava/lang/String;
    .end local v3    # "hasContent":Z
    goto :goto_de

    :cond_97
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v1, :cond_db

    .line 102
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 103
    .local v1, "c":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 106
    .local v2, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decoder:Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    if-eqz v3, :cond_d7

    .line 107
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v3

    if-nez v3, :cond_bd

    .line 108
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 109
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v3

    if-eqz v3, :cond_da

    .line 110
    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 111
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_da

    .line 114
    :cond_bd
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;->finishDecode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 118
    .local v3, "lastProduct":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 119
    new-instance v4, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v4, v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 124
    :cond_d3
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 125
    .end local v3    # "lastProduct":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_da

    .line 127
    :cond_d7
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 129
    .end local v1    # "c":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v2    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_da
    :goto_da
    goto :goto_de

    .line 130
    :cond_db
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 132
    :goto_de
    return-void
.end method

.method protected abstract newContentDecoder(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder<",
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
