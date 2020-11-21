.class public Lorg/jboss/netty/handler/codec/http/HttpClientCodec;
.super Ljava/lang/Object;
.source "HttpClientCodec.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;,
        Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;
    }
.end annotation


# instance fields
.field private final decoder:Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

.field volatile done:Z

.field private final encoder:Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;

.field private final failOnMissingResponse:Z

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/handler/codec/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 70
    const/16 v0, 0x2000

    const/16 v1, 0x1000

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v0, v2}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZ)V

    .line 71
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZ)V

    .line 79
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 8
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "failOnMissingResponse"    # Z

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    .line 57
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;-><init>(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->encoder:Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Decoder;-><init>(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;III)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->decoder:Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

    .line 87
    iput-boolean p4, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->failOnMissingResponse:Z

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Z
    .registers 2
    .param p0, "x0"    # Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    .line 48
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->failOnMissingResponse:Z

    return v0
.end method

.method static synthetic access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .param p0, "x0"    # Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    .line 48
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->encoder:Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 98
    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->decoder:Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 93
    return-void
.end method
