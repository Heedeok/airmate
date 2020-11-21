.class Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;
.super Lorg/ros/internal/transport/BaseClientHandshakeHandler;
.source "SubscriberHandshakeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/internal/transport/BaseClientHandshakeHandler;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/transport/queue/IncomingMessageQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/transport/ConnectionHeader;Lorg/ros/internal/transport/queue/IncomingMessageQueue;Ljava/util/concurrent/ExecutorService;)V
    .registers 5
    .param p1, "outgoingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/transport/ConnectionHeader;",
            "Lorg/ros/internal/transport/queue/IncomingMessageQueue<",
            "TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;, "Lorg/ros/internal/node/topic/SubscriberHandshakeHandler<TT;>;"
    .local p2, "incomingMessageQueue":Lorg/ros/internal/transport/queue/IncomingMessageQueue;, "Lorg/ros/internal/transport/queue/IncomingMessageQueue<TT;>;"
    new-instance v0, Lorg/ros/internal/node/topic/SubscriberHandshake;

    invoke-direct {v0, p1}, Lorg/ros/internal/node/topic/SubscriberHandshake;-><init>(Lorg/ros/internal/transport/ConnectionHeader;)V

    invoke-direct {p0, v0, p3}, Lorg/ros/internal/transport/BaseClientHandshakeHandler;-><init>(Lorg/ros/internal/transport/ClientHandshake;Ljava/util/concurrent/ExecutorService;)V

    .line 52
    iput-object p2, p0, Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    .line 53
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 76
    .local p0, "this":Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;, "Lorg/ros/internal/node/topic/SubscriberHandshakeHandler<TT;>;"
    const-string v0, "SubscriberHandshakeHandler"

    return-object v0
.end method

.method protected onFailure(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 7
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p3, "e"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 70
    .local p0, "this":Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;, "Lorg/ros/internal/node/topic/SubscriberHandshakeHandler<TT;>;"
    sget-object v0, Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber handshake failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 71
    invoke-interface {p3}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 72
    return-void
.end method

.method protected onSuccess(Lorg/ros/internal/transport/ConnectionHeader;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 9
    .param p1, "incomingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p3, "e"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 58
    .local p0, "this":Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;, "Lorg/ros/internal/node/topic/SubscriberHandshakeHandler<TT;>;"
    invoke-interface {p3}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 59
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 60
    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    invoke-virtual {v1}, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->getMessageReceiver()Lorg/ros/internal/transport/tcp/NamedChannelHandler;

    move-result-object v1

    .line 61
    .local v1, "namedChannelHandler":Lorg/ros/internal/transport/tcp/NamedChannelHandler;
    invoke-interface {v1}, Lorg/ros/internal/transport/tcp/NamedChannelHandler;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 62
    const-string v2, "latching"

    invoke-virtual {p1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "latching":Ljava/lang/String;
    if-eqz v2, :cond_2e

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 64
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->setLatchMode(Z)V

    .line 66
    :cond_2e
    return-void
.end method
