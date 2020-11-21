.class Lorg/ros/internal/node/service/ServiceResponseHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "ServiceResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jboss/netty/channel/SimpleChannelHandler;"
    }
.end annotation


# instance fields
.field private final deserializer:Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageDeserializer<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final responseListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "TResponseType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;Lorg/ros/message/MessageDeserializer;Ljava/util/concurrent/ExecutorService;)V
    .registers 4
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "TResponseType;>;>;",
            "Lorg/ros/message/MessageDeserializer<",
            "TResponseType;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/ros/internal/node/service/ServiceResponseHandler;, "Lorg/ros/internal/node/service/ServiceResponseHandler<TResponseType;>;"
    .local p1, "messageListeners":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/ros/node/service/ServiceResponseListener<TResponseType;>;>;"
    .local p2, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TResponseType;>;"
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/ros/internal/node/service/ServiceResponseHandler;->responseListeners:Ljava/util/Queue;

    .line 48
    iput-object p2, p0, Lorg/ros/internal/node/service/ServiceResponseHandler;->deserializer:Lorg/ros/message/MessageDeserializer;

    .line 49
    iput-object p3, p0, Lorg/ros/internal/node/service/ServiceResponseHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/node/service/ServiceResponseHandler;)Lorg/ros/message/MessageDeserializer;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/service/ServiceResponseHandler;

    .line 39
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceResponseHandler;->deserializer:Lorg/ros/message/MessageDeserializer;

    return-object v0
.end method


# virtual methods
.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/ros/internal/node/service/ServiceResponseHandler;, "Lorg/ros/internal/node/service/ServiceResponseHandler<TResponseType;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceResponseHandler;->responseListeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/node/service/ServiceResponseListener;

    .line 55
    .local v0, "listener":Lorg/ros/node/service/ServiceResponseListener;, "Lorg/ros/node/service/ServiceResponseListener<TResponseType;>;"
    const-string v1, "No listener for incoming service response."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/internal/node/service/ServiceServerResponse;

    .line 57
    .local v1, "response":Lorg/ros/internal/node/service/ServiceServerResponse;
    invoke-virtual {v1}, Lorg/ros/internal/node/service/ServiceServerResponse;->getMessage()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 58
    .local v2, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceResponseHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lorg/ros/internal/node/service/ServiceResponseHandler$1;

    invoke-direct {v4, p0, v1, v0, v2}, Lorg/ros/internal/node/service/ServiceResponseHandler$1;-><init>(Lorg/ros/internal/node/service/ServiceResponseHandler;Lorg/ros/internal/node/service/ServiceServerResponse;Lorg/ros/node/service/ServiceResponseListener;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
