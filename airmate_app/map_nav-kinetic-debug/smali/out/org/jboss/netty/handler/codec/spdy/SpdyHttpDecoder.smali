.class public Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;
.source "SpdyHttpDecoder.java"


# instance fields
.field private final maxContentLength:I

.field private final messageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final spdyVersion:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxContentLength"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(II)V

    .line 60
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "maxContentLength"    # I

    .line 71
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    .line 72
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2e

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2e

    .line 76
    if-lez p2, :cond_17

    .line 80
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    .line 81
    iput p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->maxContentLength:I

    .line 82
    return-void

    .line 77
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxContentLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createHttpRequest(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .registers 10
    .param p0, "spdyVersion"    # I
    .param p1, "requestFrame"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    .line 253
    .local v0, "method":Lorg/jboss/netty/handler/codec/http/HttpMethod;
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "url":Ljava/lang/String;
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    .line 255
    .local v2, "httpVersion":Lorg/jboss/netty/handler/codec/http/HttpVersion;
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 256
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 257
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 259
    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;

    invoke-direct {v3, v2, v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    .line 262
    .local v3, "httpRequest":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 264
    const/4 v4, 0x3

    if-lt p0, v4, :cond_2a

    .line 266
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "host":Ljava/lang/String;
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 268
    invoke-static {v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V

    .line 271
    .end local v4    # "host":Ljava/lang/String;
    :cond_2a
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 272
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_32

    .line 276
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4c
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V

    .line 279
    const-string v4, "Transfer-Encoding"

    invoke-interface {v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->removeHeader(Ljava/lang/String;)V

    .line 281
    return-object v3
.end method

.method private static createHttpResponse(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .registers 9
    .param p0, "spdyVersion"    # I
    .param p1, "responseFrame"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 288
    .local v0, "status":Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    .line 289
    .local v1, "version":Lorg/jboss/netty/handler/codec/http/HttpVersion;
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 290
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 292
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    invoke-direct {v2, v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    .line 293
    .local v2, "httpResponse":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 294
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1b

    .line 298
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_35
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V

    .line 301
    const-string v3, "Transfer-Encoding"

    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    .line 302
    const-string v3, "Trailer"

    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    .line 304
    return-object v2
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_b5

    .line 91
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 92
    .local v0, "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v4

    .line 94
    .local v4, "streamID":I
    invoke-static {v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->isServerId(I)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 96
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getAssociatedToStreamId()I

    move-result v5

    .line 100
    .local v5, "associatedToStreamID":I
    if-nez v5, :cond_28

    .line 101
    new-instance v6, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v7, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v6, v4, v7}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 103
    .local v6, "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    invoke-static {p1, v7, v6}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 106
    .end local v6    # "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    :cond_28
    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    invoke-static {v6, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "URL":Ljava/lang/String;
    if-nez v6, :cond_3e

    .line 111
    new-instance v7, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v8, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v7, v4, v8}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 113
    .local v7, "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v8

    invoke-static {p1, v8, v7}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 117
    .end local v7    # "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    :cond_3e
    :try_start_3e
    iget v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    invoke-static {v7, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpResponse(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponse;

    move-result-object v7

    .line 120
    .local v7, "httpResponse":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    invoke-static {v7, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    .line 121
    invoke-static {v7, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    .line 122
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v8

    invoke-static {v7, v8}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setPriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;B)V

    .line 123
    invoke-static {v7, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V

    .line 125
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 126
    invoke-static {v7, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V

    .line 127
    return-object v7

    .line 130
    :cond_5e
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_68} :catch_69

    .line 136
    .end local v7    # "httpResponse":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    goto :goto_78

    .line 132
    :catch_69
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v7, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v2, v4, v7}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 135
    .local v2, "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    invoke-static {p1, v7, v2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .end local v5    # "associatedToStreamID":I
    .end local v6    # "URL":Ljava/lang/String;
    :goto_78
    goto :goto_b3

    .line 141
    :cond_79
    :try_start_79
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    invoke-static {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpRequest(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpRequest;

    move-result-object v1

    .line 144
    .local v1, "httpRequest":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    invoke-static {v1, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    .line 146
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 147
    return-object v1

    .line 150
    :cond_89
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_93} :catch_94

    .line 161
    .end local v1    # "httpRequest":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    goto :goto_b3

    .line 152
    :catch_94
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    invoke-direct {v2, v4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(I)V

    .line 157
    .local v2, "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)V

    .line 158
    iget v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    sget-object v6, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-static {v5, v2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    .line 159
    iget v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    sget-object v6, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    invoke-static {v5, v2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    .line 160
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-static {p1, v5, v2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 164
    .end local v0    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v4    # "streamID":I
    :goto_b3
    goto/16 :goto_1cd

    :cond_b5
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v0, :cond_ef

    .line 166
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 167
    .local v0, "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v4

    .line 170
    .restart local v4    # "streamID":I
    :try_start_c0
    iget v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    invoke-static {v5, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpResponse(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponse;

    move-result-object v5

    .line 173
    .local v5, "httpResponse":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    invoke-static {v5, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    .line 175
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v6

    if-eqz v6, :cond_d3

    .line 176
    invoke-static {v5, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V

    .line 177
    return-object v5

    .line 180
    :cond_d3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_dd} :catch_de

    .line 188
    .end local v5    # "httpResponse":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    goto :goto_ed

    .line 182
    :catch_de
    move-exception v1

    .line 185
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v2, v4, v5}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 187
    .local v2, "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-static {p1, v5, v2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 190
    .end local v0    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .end local v4    # "streamID":I
    :goto_ed
    goto/16 :goto_1cd

    :cond_ef
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v0, :cond_12e

    .line 192
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 193
    .local v0, "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getStreamId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 194
    .local v1, "streamID":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 198
    .local v2, "httpMessage":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    if-nez v2, :cond_10a

    .line 199
    return-object v3

    .line 202
    :cond_10a
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_112
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 203
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_112

    .line 206
    .end local v0    # "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v1    # "streamID":Ljava/lang/Integer;
    .end local v2    # "httpMessage":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_12c
    goto/16 :goto_1cd

    :cond_12e
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    if-eqz v0, :cond_1b8

    .line 208
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    .line 209
    .local v0, "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getStreamId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 210
    .restart local v1    # "streamID":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 214
    .restart local v2    # "httpMessage":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    if-nez v2, :cond_149

    .line 215
    return-object v3

    .line 218
    :cond_149
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 219
    .local v4, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->maxContentLength:I

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v7

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_195

    .line 225
    sget-object v5, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-ne v4, v5, :cond_179

    .line 226
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v5

    invoke-static {v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 227
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 228
    invoke-interface {v2, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_180

    .line 230
    :cond_179
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 233
    :goto_180
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v5

    if-eqz v5, :cond_194

    .line 234
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V

    .line 235
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-object v2

    .line 239
    .end local v0    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v1    # "streamID":Ljava/lang/Integer;
    .end local v2    # "httpMessage":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .end local v4    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_194
    goto :goto_1cd

    .line 220
    .restart local v0    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    .restart local v1    # "streamID":Ljava/lang/Integer;
    .restart local v2    # "httpMessage":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .restart local v4    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_195
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP content length exceeded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->maxContentLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    .end local v0    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v1    # "streamID":Ljava/lang/Integer;
    .end local v2    # "httpMessage":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .end local v4    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1b8
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v0, :cond_1cd

    .line 241
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    .line 242
    .local v0, "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStreamId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 243
    .restart local v1    # "streamID":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v0    # "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .end local v1    # "streamID":Ljava/lang/Integer;
    :cond_1cd
    :goto_1cd
    return-object v3
.end method
