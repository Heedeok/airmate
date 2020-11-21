.class public Lorg/ros/internal/transport/queue/MessageReceiver;
.super Lorg/ros/internal/transport/tcp/AbstractNamedChannelHandler;
.source "MessageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/internal/transport/tcp/AbstractNamedChannelHandler;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final deserializer:Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final lazyMessages:Lorg/ros/concurrent/CircularBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/CircularBlockingDeque<",
            "Lorg/ros/internal/transport/queue/LazyMessage<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lorg/ros/internal/transport/queue/MessageReceiver;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/transport/queue/MessageReceiver;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/concurrent/CircularBlockingDeque;Lorg/ros/message/MessageDeserializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/concurrent/CircularBlockingDeque<",
            "Lorg/ros/internal/transport/queue/LazyMessage<",
            "TT;>;>;",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageReceiver;, "Lorg/ros/internal/transport/queue/MessageReceiver<TT;>;"
    .local p1, "lazyMessages":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<Lorg/ros/internal/transport/queue/LazyMessage<TT;>;>;"
    .local p2, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    invoke-direct {p0}, Lorg/ros/internal/transport/tcp/AbstractNamedChannelHandler;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/ros/internal/transport/queue/MessageReceiver;->lazyMessages:Lorg/ros/concurrent/CircularBlockingDeque;

    .line 46
    iput-object p2, p0, Lorg/ros/internal/transport/queue/MessageReceiver;->deserializer:Lorg/ros/message/MessageDeserializer;

    .line 47
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 51
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageReceiver;, "Lorg/ros/internal/transport/queue/MessageReceiver<TT;>;"
    const-string v0, "IncomingMessageQueueChannelHandler"

    return-object v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageReceiver;, "Lorg/ros/internal/transport/queue/MessageReceiver<TT;>;"
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 62
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v1, p0, Lorg/ros/internal/transport/queue/MessageReceiver;->lazyMessages:Lorg/ros/concurrent/CircularBlockingDeque;

    new-instance v2, Lorg/ros/internal/transport/queue/LazyMessage;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/ros/internal/transport/queue/MessageReceiver;->deserializer:Lorg/ros/message/MessageDeserializer;

    invoke-direct {v2, v3, v4}, Lorg/ros/internal/transport/queue/LazyMessage;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/ros/message/MessageDeserializer;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/CircularBlockingDeque;->addLast(Ljava/lang/Object;)Z

    .line 63
    invoke-super {p0, p1, p2}, Lorg/ros/internal/transport/tcp/AbstractNamedChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    .line 64
    return-void
.end method
