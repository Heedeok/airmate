.class public Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "HttpChunkAggregator.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field private static final CONTINUE:Lorg/jboss/netty/buffer/ChannelBuffer;

.field public static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

.field private final maxContentLength:I

.field private maxCumulationBufferComponents:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-string v0, "HTTP/1.1 100 Continue\r\n\r\n"

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->CONTINUE:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "maxContentLength"    # I

    .line 76
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 66
    const/16 v0, 0x400

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxCumulationBufferComponents:I

    .line 77
    if-lez p1, :cond_c

    .line 82
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxContentLength:I

    .line 83
    return-void

    .line 78
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxContentLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    return-void
.end method

.method protected appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 9
    .param p1, "input"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 202
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 203
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    instance-of v1, v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4f

    .line 205
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    .line 206
    .local v1, "composite":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    invoke-virtual {v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->numComponents()I

    move-result v5

    iget v6, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxCumulationBufferComponents:I

    if-lt v5, v6, :cond_2c

    .line 207
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->copy()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_4e

    .line 209
    :cond_2c
    invoke-virtual {v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v2

    .line 210
    .local v2, "decomposed":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v4

    new-array v3, v3, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 211
    .local v3, "buffers":[Lorg/jboss/netty/buffer/ChannelBuffer;
    array-length v5, v3

    sub-int/2addr v5, v4

    aput-object p1, v3, v5

    .line 213
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 215
    .end local v1    # "composite":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    .end local v2    # "decomposed":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    .end local v3    # "buffers":[Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_4e
    goto :goto_5e

    .line 216
    :cond_4f
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 219
    :goto_5e
    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 223
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    return-void
.end method

.method public final getMaxCumulationBufferComponents()I
    .registers 2

    .line 92
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxCumulationBufferComponents:I

    return v0
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

    .line 121
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "msg":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 124
    .local v1, "currentMessage":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    instance-of v2, v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    .line 125
    move-object v2, v0

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 132
    .local v2, "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->is100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 133
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    sget-object v5, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->CONTINUE:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 136
    :cond_25
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 139
    const-string v3, "Transfer-Encoding"

    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 140
    .local v3, "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "chunked"

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 142
    const-string v4, "Transfer-Encoding"

    invoke-interface {v2, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 144
    :cond_41
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 145
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 146
    .end local v3    # "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4d

    .line 148
    :cond_48
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 149
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 151
    .end local v2    # "m":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :goto_4d
    goto/16 :goto_106

    :cond_4f
    instance-of v2, v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v2, :cond_103

    .line 153
    if-eqz v1, :cond_d8

    .line 160
    move-object v2, v0

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    .line 161
    .local v2, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 163
    .local v4, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    iget v6, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxContentLength:I

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v7

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_ba

    .line 174
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 176
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 177
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 180
    instance-of v3, v2, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    if-eqz v3, :cond_a5

    .line 181
    move-object v3, v2

    check-cast v3, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    .line 182
    .local v3, "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_8b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 183
    .local v6, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    .end local v6    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8b

    .line 188
    .end local v3    # "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_a5
    const-string v3, "Content-Length"

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 195
    .end local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v4    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_b9
    goto :goto_106

    .line 168
    .restart local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .restart local v4    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_ba
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP content length exceeded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxContentLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    .end local v2    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .end local v4    # "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_d8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " without "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_103
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 199
    :goto_106
    return-void
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .registers 5
    .param p1, "maxCumulationBufferComponents"    # I

    .line 103
    const/4 v0, 0x2

    if-lt p1, v0, :cond_12

    .line 109
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_a

    .line 110
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxCumulationBufferComponents:I

    .line 115
    return-void

    .line 112
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCumulationBufferComponents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: >= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
