.class public Lorg/ros/internal/node/topic/DefaultSubscriber;
.super Lorg/ros/internal/node/topic/DefaultTopicParticipant;
.source "DefaultSubscriber.java"

# interfaces
.implements Lorg/ros/node/topic/Subscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/internal/node/topic/DefaultTopicParticipant;",
        "Lorg/ros/node/topic/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SHUTDOWN_TIMEOUT:I = 0x5

.field private static final DEFAULT_SHUTDOWN_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/transport/queue/IncomingMessageQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final knownPublishers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Ljava/lang/Object;

.field private final nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

.field private final subscriberListeners:Lorg/ros/concurrent/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/node/topic/SubscriberListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/topic/DefaultSubscriber;->log:Lorg/apache/commons/logging/Log;

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/ros/internal/node/topic/DefaultSubscriber;->DEFAULT_SHUTDOWN_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageDeserializer;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 8
    .param p1, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p2, "topicDeclaration"    # Lorg/ros/internal/node/topic/TopicDeclaration;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/server/NodeIdentifier;",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    .local p3, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    invoke-direct {p0, p2}, Lorg/ros/internal/node/topic/DefaultTopicParticipant;-><init>(Lorg/ros/internal/node/topic/TopicDeclaration;)V

    .line 81
    iput-object p1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 82
    iput-object p4, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 83
    new-instance v0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    invoke-direct {v0, p3, p4}, Lorg/ros/internal/transport/queue/IncomingMessageQueue;-><init>(Lorg/ros/message/MessageDeserializer;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    .line 84
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->knownPublishers:Ljava/util/Set;

    .line 85
    new-instance v0, Lorg/ros/internal/transport/tcp/TcpClientManager;

    invoke-direct {v0, p4}, Lorg/ros/internal/transport/tcp/TcpClientManager;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->mutex:Ljava/lang/Object;

    .line 87
    new-instance v0, Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;

    .line 88
    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultSubscriber;->toDeclaration()Lorg/ros/internal/node/topic/SubscriberDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/SubscriberDeclaration;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    invoke-direct {v0, v1, v2, p4}, Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;-><init>(Lorg/ros/internal/transport/ConnectionHeader;Lorg/ros/internal/transport/queue/IncomingMessageQueue;Ljava/util/concurrent/ExecutorService;)V

    .line 90
    .local v0, "subscriberHandshakeHandler":Lorg/ros/internal/node/topic/SubscriberHandshakeHandler;, "Lorg/ros/internal/node/topic/SubscriberHandshakeHandler<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;

    invoke-virtual {v1, v0}, Lorg/ros/internal/transport/tcp/TcpClientManager;->addNamedChannelHandler(Lorg/ros/internal/transport/tcp/NamedChannelHandler;)V

    .line 91
    new-instance v1, Lorg/ros/concurrent/ListenerGroup;

    invoke-direct {v1, p4}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    .line 92
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultSubscriber$1;

    invoke-direct {v2, p0}, Lorg/ros/internal/node/topic/DefaultSubscriber$1;-><init>(Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 113
    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .registers 1

    .line 48
    sget-object v0, Lorg/ros/internal/node/topic/DefaultSubscriber;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method public static newDefault(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;Ljava/util/concurrent/ScheduledExecutorService;Lorg/ros/message/MessageDeserializer;)Lorg/ros/internal/node/topic/DefaultSubscriber;
    .registers 5
    .param p0, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p1, "description"    # Lorg/ros/internal/node/topic/TopicDeclaration;
    .param p2, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/internal/node/server/NodeIdentifier;",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lorg/ros/message/MessageDeserializer<",
            "TS;>;)",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "TS;>;"
        }
    .end annotation

    .line 75
    .local p3, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TS;>;"
    new-instance v0, Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/ros/internal/node/topic/DefaultSubscriber;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageDeserializer;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method private signalOnShutdown(JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 293
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    move-object v0, p0

    .line 295
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    :try_start_1
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultSubscriber$7;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultSubscriber$7;-><init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/node/topic/Subscriber;)V

    invoke-virtual {v1, v2, p1, p2, p3}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_c

    .line 304
    goto :goto_d

    .line 301
    :catch_c
    move-exception v1

    .line 305
    :goto_d
    return-void
.end method


# virtual methods
.method public addMessageListener(Lorg/ros/message/MessageListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    .local p1, "messageListener":Lorg/ros/message/MessageListener;, "Lorg/ros/message/MessageListener<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/ros/internal/node/topic/DefaultSubscriber;->addMessageListener(Lorg/ros/message/MessageListener;I)V

    .line 140
    return-void
.end method

.method public addMessageListener(Lorg/ros/message/MessageListener;I)V
    .registers 4
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;I)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    .local p1, "messageListener":Lorg/ros/message/MessageListener;, "Lorg/ros/message/MessageListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->addListener(Lorg/ros/message/MessageListener;I)V

    .line 135
    return-void
.end method

.method public addPublisher(Lorg/ros/internal/node/topic/PublisherIdentifier;Ljava/net/InetSocketAddress;)V
    .registers 6
    .param p1, "publisherIdentifier"    # Lorg/ros/internal/node/topic/PublisherIdentifier;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 154
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->knownPublishers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 158
    monitor-exit v0

    return-void

    .line 160
    :cond_d
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultSubscriber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/ros/internal/transport/tcp/TcpClientManager;->connect(Ljava/lang/String;Ljava/net/SocketAddress;)Lorg/ros/internal/transport/tcp/TcpClient;

    .line 163
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->knownPublishers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultSubscriber;->signalOnNewPublisher(Lorg/ros/internal/node/topic/PublisherIdentifier;)V

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public addSubscriberListener(Lorg/ros/node/topic/SubscriberListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/SubscriberListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    .local p1, "listener":Lorg/ros/node/topic/SubscriberListener;, "Lorg/ros/node/topic/SubscriberListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 199
    return-void
.end method

.method public getLatchMode()Z
    .registers 2

    .line 129
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->getLatchMode()Z

    move-result v0

    return v0
.end method

.method public getSupportedProtocols()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    sget-object v0, Lorg/ros/internal/transport/ProtocolNames;->SUPPORTED:Ljava/util/Collection;

    return-object v0
.end method

.method public removeAllMessageListeners()V
    .registers 2

    .line 149
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->removeAllListeners()V

    .line 150
    return-void
.end method

.method public removeMessageListener(Lorg/ros/message/MessageListener;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;)Z"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    .local p1, "messageListener":Lorg/ros/message/MessageListener;, "Lorg/ros/message/MessageListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    invoke-virtual {v0, p1}, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->removeListener(Lorg/ros/message/MessageListener;)Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .registers 4

    .line 193
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    sget-object v0, Lorg/ros/internal/node/topic/DefaultSubscriber;->DEFAULT_SHUTDOWN_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {p0, v1, v2, v0}, Lorg/ros/internal/node/topic/DefaultSubscriber;->shutdown(JLjava/util/concurrent/TimeUnit;)V

    .line 194
    return-void
.end method

.method public shutdown(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 185
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/ros/internal/node/topic/DefaultSubscriber;->signalOnShutdown(JLjava/util/concurrent/TimeUnit;)V

    .line 186
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->incomingMessageQueue:Lorg/ros/internal/transport/queue/IncomingMessageQueue;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->shutdown()V

    .line 187
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;

    invoke-virtual {v0}, Lorg/ros/internal/transport/tcp/TcpClientManager;->shutdown()V

    .line 188
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0}, Lorg/ros/concurrent/ListenerGroup;->shutdown()V

    .line 189
    return-void
.end method

.method public signalOnMasterRegistrationFailure()V
    .registers 4

    .line 227
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    move-object v0, p0

    .line 228
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultSubscriber$3;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultSubscriber$3;-><init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/node/topic/Subscriber;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 234
    return-void
.end method

.method public signalOnMasterRegistrationSuccess()V
    .registers 4

    .line 209
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    move-object v0, p0

    .line 210
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultSubscriber$2;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultSubscriber$2;-><init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/node/topic/Subscriber;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 216
    return-void
.end method

.method public signalOnMasterUnregistrationFailure()V
    .registers 4

    .line 261
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    move-object v0, p0

    .line 262
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultSubscriber$5;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultSubscriber$5;-><init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/node/topic/Subscriber;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 268
    return-void
.end method

.method public signalOnMasterUnregistrationSuccess()V
    .registers 4

    .line 244
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    move-object v0, p0

    .line 245
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultSubscriber$4;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultSubscriber$4;-><init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/node/topic/Subscriber;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 251
    return-void
.end method

.method public signalOnNewPublisher(Lorg/ros/internal/node/topic/PublisherIdentifier;)V
    .registers 5
    .param p1, "publisherIdentifier"    # Lorg/ros/internal/node/topic/PublisherIdentifier;

    .line 277
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    move-object v0, p0

    .line 278
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->subscriberListeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultSubscriber$6;

    invoke-direct {v2, p0, v0, p1}, Lorg/ros/internal/node/topic/DefaultSubscriber$6;-><init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/node/topic/Subscriber;Lorg/ros/internal/node/topic/PublisherIdentifier;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 284
    return-void
.end method

.method public toDeclaration()Lorg/ros/internal/node/topic/SubscriberDeclaration;
    .registers 4

    .line 120
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    new-instance v0, Lorg/ros/internal/node/topic/SubscriberDeclaration;

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultSubscriber;->toIdentifier()Lorg/ros/internal/node/topic/SubscriberIdentifier;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultSubscriber;->getTopicDeclaration()Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/topic/SubscriberDeclaration;-><init>(Lorg/ros/internal/node/topic/SubscriberIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;)V

    return-object v0
.end method

.method public toIdentifier()Lorg/ros/internal/node/topic/SubscriberIdentifier;
    .registers 4

    .line 116
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    new-instance v0, Lorg/ros/internal/node/topic/SubscriberIdentifier;

    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultSubscriber;->getTopicDeclaration()Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/topic/TopicDeclaration;->getIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/topic/SubscriberIdentifier;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicIdentifier;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 309
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscriber<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultSubscriber;->getTopicDeclaration()Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePublishers(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    .local p1, "publisherIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/topic/PublisherIdentifier;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/internal/node/topic/PublisherIdentifier;

    .line 178
    .local v1, "publisherIdentifier":Lorg/ros/internal/node/topic/PublisherIdentifier;
    iget-object v2, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;

    iget-object v4, p0, Lorg/ros/internal/node/topic/DefaultSubscriber;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-direct {v3, p0, v4, v1}, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;-><init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/PublisherIdentifier;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 180
    .end local v1    # "publisherIdentifier":Lorg/ros/internal/node/topic/PublisherIdentifier;
    goto :goto_4

    .line 181
    :cond_1d
    return-void
.end method
