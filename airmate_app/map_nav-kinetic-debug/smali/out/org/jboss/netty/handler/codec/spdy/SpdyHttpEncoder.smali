.class public Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;
.super Ljava/lang/Object;
.source "SpdyHttpEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;
    }
.end annotation


# instance fields
.field private volatile currentStreamID:I

.field private final spdyVersion:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(I)V

    .line 137
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "version"    # I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x2

    if-lt p1, v0, :cond_c

    const/4 v0, 0x3

    if-gt p1, v0, :cond_c

    .line 149
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    .line 150
    return-void

    .line 146
    :cond_c
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

.method private createSynReplyFrame(Lorg/jboss/netty/handler/codec/http/HttpResponse;)Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .registers 9
    .param p1, "httpResponse"    # Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->isChunked()Z

    move-result v0

    .line 333
    .local v0, "chunked":Z
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v1

    .line 334
    .local v1, "streamID":I
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 338
    const-string v2, "Connection"

    invoke-interface {p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    .line 339
    const-string v2, "Keep-Alive"

    invoke-interface {p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    .line 340
    const-string v2, "Proxy-Connection"

    invoke-interface {p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    .line 341
    const-string v2, "Transfer-Encoding"

    invoke-interface {p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    .line 343
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(I)V

    .line 346
    .local v2, "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    .line 347
    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    .line 350
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 351
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3e

    .line 354
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_58
    const/4 v3, 0x0

    if-eqz v0, :cond_61

    .line 355
    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamID:I

    .line 356
    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)V

    goto :goto_70

    .line 358
    :cond_61
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    if-nez v4, :cond_6d

    const/4 v3, 0x1

    nop

    :cond_6d
    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)V

    .line 361
    :goto_70
    return-object v2
.end method

.method private createSynStreamFrame(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .registers 14
    .param p1, "httpMessage"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v0

    .line 265
    .local v0, "chunked":Z
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v1

    .line 266
    .local v1, "streamID":I
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v2

    .line 267
    .local v2, "associatedToStreamID":I
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getPriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;)B

    move-result v3

    .line 268
    .local v3, "priority":B
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "URL":Ljava/lang/String;
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "scheme":Ljava/lang/String;
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 271
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 272
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removePriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 273
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 274
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 278
    const-string v6, "Connection"

    invoke-interface {p1, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 279
    const-string v6, "Keep-Alive"

    invoke-interface {p1, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 280
    const-string v6, "Proxy-Connection"

    invoke-interface {p1, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 281
    const-string v6, "Transfer-Encoding"

    invoke-interface {p1, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 283
    new-instance v6, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;

    invoke-direct {v6, v1, v2, v3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;-><init>(IIB)V

    .line 287
    .local v6, "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    instance-of v7, p1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v7, :cond_62

    .line 288
    move-object v7, p1

    check-cast v7, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 289
    .local v7, "httpRequest":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    iget v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {v7}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v9

    invoke-static {v8, v6, v9}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpMethod;)V

    .line 290
    iget v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {v7}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v6, v9}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    .line 291
    iget v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v9

    invoke-static {v8, v6, v9}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    .line 293
    .end local v7    # "httpRequest":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    :cond_62
    instance-of v7, p1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    const/4 v8, 0x1

    if-eqz v7, :cond_7b

    .line 294
    move-object v7, p1

    check-cast v7, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    .line 295
    .local v7, "httpResponse":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    iget v9, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {v7}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v10

    invoke-static {v9, v6, v10}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    .line 296
    iget v9, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-static {v9, v6, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    .line 297
    invoke-interface {v6, v8}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setUnidirectional(Z)V

    .line 301
    .end local v7    # "httpResponse":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    :cond_7b
    iget v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    const/4 v9, 0x3

    if-lt v7, v9, :cond_8c

    .line 302
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "host":Ljava/lang/String;
    const-string v9, "Host"

    invoke-interface {p1, v9}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 304
    invoke-static {v6, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    .line 308
    .end local v7    # "host":Ljava/lang/String;
    :cond_8c
    if-nez v5, :cond_90

    .line 309
    const-string v5, "https"

    .line 311
    :cond_90
    iget v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-static {v7, v6, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    .line 314
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_9d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 315
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_9d

    .line 318
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_b7
    const/4 v7, 0x0

    if-eqz v0, :cond_c0

    .line 319
    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamID:I

    .line 320
    invoke-interface {v6, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setLast(Z)V

    goto :goto_cf

    .line 322
    :cond_c0
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v9

    if-nez v9, :cond_cc

    const/4 v7, 0x1

    nop

    :cond_cc
    invoke-interface {v6, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setLast(Z)V

    .line 325
    :goto_cf
    return-object v6
.end method

.method private getContentFuture(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .param p3, "streamID"    # I
    .param p4, "httpMessage"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 221
    invoke-interface {p4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_f

    .line 222
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 226
    :cond_f
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-direct {v0, p3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    .line 227
    .local v0, "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {p4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 228
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)V

    .line 231
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 232
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 234
    return-object v1
.end method


# virtual methods
.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 14
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_8

    .line 156
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 157
    return-void

    .line 160
    :cond_8
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 161
    .local v0, "e":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 163
    .local v1, "msg":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v2, :cond_2b

    .line 165
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 166
    .local v2, "httpRequest":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->createSynStreamFrame(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object v3

    .line 167
    .local v3, "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v4

    .line 168
    .local v4, "streamID":I
    invoke-direct {p0, p1, v0, v4, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->getContentFuture(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    .line 169
    .local v5, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-static {p1, v5, v3, v6}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 171
    .end local v2    # "httpRequest":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .end local v3    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v4    # "streamID":I
    .end local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    goto/16 :goto_e8

    :cond_2b
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v2, :cond_63

    .line 173
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    .line 174
    .local v2, "httpResponse":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    const-string v3, "X-SPDY-Associated-To-Stream-ID"

    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 175
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->createSynStreamFrame(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object v3

    .line 176
    .restart local v3    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v4

    .line 177
    .restart local v4    # "streamID":I
    invoke-direct {p0, p1, v0, v4, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->getContentFuture(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    .line 178
    .restart local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-static {p1, v5, v3, v6}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 179
    .end local v3    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v4    # "streamID":I
    .end local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    goto :goto_61

    .line 180
    :cond_4e
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->createSynReplyFrame(Lorg/jboss/netty/handler/codec/http/HttpResponse;)Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    move-result-object v3

    .line 181
    .local v3, "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v4

    .line 182
    .restart local v4    # "streamID":I
    invoke-direct {p0, p1, v0, v4, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->getContentFuture(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    .line 183
    .restart local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-static {p1, v5, v3, v6}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 186
    .end local v2    # "httpResponse":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .end local v3    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v4    # "streamID":I
    .end local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :goto_61
    goto/16 :goto_e8

    :cond_63
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v2, :cond_e5

    .line 188
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 189
    .local v2, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    new-instance v3, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    iget v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamID:I

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    .line 190
    .local v3, "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 191
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)V

    .line 193
    instance-of v4, v2, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    if-eqz v4, :cond_d9

    .line 194
    move-object v4, v2

    check-cast v4, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    .line 195
    .local v4, "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders()Ljava/util/List;

    move-result-object v5

    .line 196
    .local v5, "trailers":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 197
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-static {p1, v6, v3, v7}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_d8

    .line 200
    :cond_9c
    new-instance v6, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;

    iget v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamID:I

    invoke-direct {v6, v7}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(I)V

    .line 201
    .local v6, "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_a7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 202
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_a7

    .line 206
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_c1
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v7

    invoke-static {v7}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    .line 207
    .local v7, "future":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v8, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;

    invoke-direct {v8, p0, p1, v0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 208
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-static {p1, v7, v6, v8}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 210
    .end local v4    # "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    .end local v5    # "trailers":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v7    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :goto_d8
    goto :goto_e4

    .line 211
    :cond_d9
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-static {p1, v4, v3, v5}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 213
    .end local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v3    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    :goto_e4
    goto :goto_e8

    .line 215
    :cond_e5
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 217
    :goto_e8
    return-void
.end method
