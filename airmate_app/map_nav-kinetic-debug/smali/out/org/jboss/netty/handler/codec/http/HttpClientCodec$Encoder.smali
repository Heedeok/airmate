.class final Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;
.super Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;
.source "HttpClientCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/HttpClientCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Encoder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    .line 103
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;-><init>()V

    .line 104
    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-boolean v0, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->done:Z

    if-nez v0, :cond_18

    .line 110
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    move-object v1, p3

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 113
    :cond_18
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;->encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$000(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 117
    instance-of v1, p3, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v1, :cond_3b

    move-object v1, p3

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->isChunked()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 118
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_51

    .line 119
    :cond_3b
    instance-of v1, p3, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v1, :cond_51

    move-object v1, p3

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 121
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 124
    :cond_51
    :goto_51
    return-object v0
.end method
