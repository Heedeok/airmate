.class final Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;
.super Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;
.source "HttpClientCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/HttpClientCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Decoder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;III)V
    .registers 5
    .param p2, "maxInitialLineLength"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "maxChunkSize"    # I

    .line 130
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    .line 131
    invoke-direct {p0, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;-><init>(III)V

    .line 132
    return-void
.end method

.method private decrement(Ljava/lang/Object;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/Object;

    .line 149
    if-nez p1, :cond_3

    .line 150
    return-void

    .line 154
    :cond_3
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 155
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_3e

    .line 156
    :cond_1a
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v0, :cond_31

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 157
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_3e

    .line 158
    :cond_31
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_3e

    .line 161
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 163
    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 219
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$000(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 220
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 221
    .local v0, "missingResponses":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1c

    .end local v0    # "missingResponses":J
    goto :goto_38

    .line 222
    .restart local v0    # "missingResponses":J
    :cond_1c
    new-instance v2, Lorg/jboss/netty/handler/codec/PrematureChannelClosureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel closed but still missing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " response(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/PrematureChannelClosureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    .end local v0    # "missingResponses":J
    :cond_38
    :goto_38
    return-void
.end method

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

    .line 128
    move-object v0, p4

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-boolean v0, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->done:Z

    if-eqz v0, :cond_f

    .line 138
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->actualReadableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 140
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "msg":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$000(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 142
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->decrement(Ljava/lang/Object;)V

    .line 144
    :cond_1e
    return-object v0
.end method

.method protected isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .registers 7
    .param p1, "msg"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 166
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    .line 167
    .local v0, "statusCode":I
    const/4 v1, 0x1

    const/16 v2, 0x64

    if-ne v0, v2, :cond_11

    .line 169
    return v1

    .line 174
    :cond_11
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-object v2, v2, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 176
    .local v2, "method":Lorg/jboss/netty/handler/codec/http/HttpMethod;
    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 177
    .local v3, "firstChar":C
    const/16 v4, 0x43

    if-eq v3, v4, :cond_36

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2d

    goto :goto_4e

    .line 183
    :cond_2d
    sget-object v4, Lorg/jboss/netty/handler/codec/http/HttpMethod;->HEAD:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v4, v2}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 184
    return v1

    .line 202
    :cond_36
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_4e

    .line 203
    sget-object v4, Lorg/jboss/netty/handler/codec/http/HttpMethod;->CONNECT:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v4, v2}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 205
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iput-boolean v1, v4, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->done:Z

    .line 206
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-object v4, v4, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->clear()V

    .line 207
    return v1

    .line 213
    :cond_4e
    :goto_4e
    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    return v1
.end method
