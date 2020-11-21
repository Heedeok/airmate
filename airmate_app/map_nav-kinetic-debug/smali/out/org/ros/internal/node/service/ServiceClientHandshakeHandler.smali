.class Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;
.super Lorg/ros/internal/transport/BaseClientHandshakeHandler;
.source "ServiceClientHandshakeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/internal/transport/BaseClientHandshakeHandler;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final deserializer:Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageDeserializer<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final responseListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/transport/ConnectionHeader;Ljava/util/Queue;Lorg/ros/message/MessageDeserializer;Ljava/util/concurrent/ExecutorService;)V
    .registers 6
    .param p1, "outgoingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;
    .param p4, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/transport/ConnectionHeader;",
            "Ljava/util/Queue<",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "TS;>;>;",
            "Lorg/ros/message/MessageDeserializer<",
            "TS;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;, "Lorg/ros/internal/node/service/ServiceClientHandshakeHandler<TT;TS;>;"
    .local p2, "responseListeners":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/ros/node/service/ServiceResponseListener<TS;>;>;"
    .local p3, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TS;>;"
    new-instance v0, Lorg/ros/internal/node/service/ServiceClientHandshake;

    invoke-direct {v0, p1}, Lorg/ros/internal/node/service/ServiceClientHandshake;-><init>(Lorg/ros/internal/transport/ConnectionHeader;)V

    invoke-direct {p0, v0, p4}, Lorg/ros/internal/transport/BaseClientHandshakeHandler;-><init>(Lorg/ros/internal/transport/ClientHandshake;Ljava/util/concurrent/ExecutorService;)V

    .line 57
    iput-object p2, p0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;->responseListeners:Ljava/util/Queue;

    .line 58
    iput-object p3, p0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;->deserializer:Lorg/ros/message/MessageDeserializer;

    .line 59
    iput-object p4, p0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 60
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 81
    .local p0, "this":Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;, "Lorg/ros/internal/node/service/ServiceClientHandshakeHandler<TT;TS;>;"
    const-string v0, "ServiceClientHandshakeHandler"

    return-object v0
.end method

.method protected onFailure(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 7
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p3, "e"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 75
    .local p0, "this":Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;, "Lorg/ros/internal/node/service/ServiceClientHandshakeHandler<TT;TS;>;"
    sget-object v0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service client handshake failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 76
    invoke-interface {p3}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 77
    return-void
.end method

.method protected onSuccess(Lorg/ros/internal/transport/ConnectionHeader;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 10
    .param p1, "incommingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p3, "e"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 65
    .local p0, "this":Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;, "Lorg/ros/internal/node/service/ServiceClientHandshakeHandler<TT;TS;>;"
    invoke-interface {p3}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 66
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    const-string v1, "LengthFieldBasedFrameDecoder"

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 67
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 68
    const-string v1, "ResponseDecoder"

    new-instance v2, Lorg/ros/internal/node/service/ServiceResponseDecoder;

    invoke-direct {v2}, Lorg/ros/internal/node/service/ServiceResponseDecoder;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 69
    const-string v1, "ResponseHandler"

    new-instance v2, Lorg/ros/internal/node/service/ServiceResponseHandler;

    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;->responseListeners:Ljava/util/Queue;

    iget-object v4, p0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;->deserializer:Lorg/ros/message/MessageDeserializer;

    iget-object v5, p0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v3, v4, v5}, Lorg/ros/internal/node/service/ServiceResponseHandler;-><init>(Ljava/util/Queue;Lorg/ros/message/MessageDeserializer;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 71
    return-void
.end method
