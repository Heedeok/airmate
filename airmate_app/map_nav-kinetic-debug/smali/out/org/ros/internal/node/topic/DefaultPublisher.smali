.class public Lorg/ros/internal/node/topic/DefaultPublisher;
.super Lorg/ros/internal/node/topic/DefaultTopicParticipant;
.source "DefaultPublisher.java"

# interfaces
.implements Lorg/ros/node/topic/Publisher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/internal/node/topic/DefaultTopicParticipant;",
        "Lorg/ros/node/topic/Publisher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SHUTDOWN_TIMEOUT:J = 0x5L

.field private static final DEFAULT_SHUTDOWN_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final listeners:Lorg/ros/concurrent/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/node/topic/PublisherListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final messageFactory:Lorg/ros/message/MessageFactory;

.field private final nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

.field private final outgoingMessageQueue:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/topic/DefaultPublisher;->log:Lorg/apache/commons/logging/Log;

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/ros/internal/node/topic/DefaultPublisher;->DEFAULT_SHUTDOWN_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 8
    .param p1, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p2, "topicDeclaration"    # Lorg/ros/internal/node/topic/TopicDeclaration;
    .param p4, "messageFactory"    # Lorg/ros/message/MessageFactory;
    .param p5, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/server/NodeIdentifier;",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;",
            "Lorg/ros/message/MessageFactory;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    .local p3, "serializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TT;>;"
    invoke-direct {p0, p2}, Lorg/ros/internal/node/topic/DefaultTopicParticipant;-><init>(Lorg/ros/internal/node/topic/TopicDeclaration;)V

    .line 71
    iput-object p1, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 72
    iput-object p4, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 73
    new-instance v0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-direct {v0, p3, p5}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;-><init>(Lorg/ros/message/MessageSerializer;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->outgoingMessageQueue:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    .line 74
    new-instance v0, Lorg/ros/concurrent/ListenerGroup;

    invoke-direct {v0, p5}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    .line 75
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v1, Lorg/ros/internal/node/topic/DefaultPublisher$1;

    invoke-direct {v1, p0}, Lorg/ros/internal/node/topic/DefaultPublisher$1;-><init>(Lorg/ros/internal/node/topic/DefaultPublisher;)V

    invoke-virtual {v0, v1}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 96
    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .registers 1

    .line 46
    sget-object v0, Lorg/ros/internal/node/topic/DefaultPublisher;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method private signalOnNewSubscriber(Lorg/ros/internal/node/topic/SubscriberIdentifier;)V
    .registers 5
    .param p1, "subscriberIdentifier"    # Lorg/ros/internal/node/topic/SubscriberIdentifier;

    .line 286
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    move-object v0, p0

    .line 287
    .local v0, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultPublisher$6;

    invoke-direct {v2, p0, v0, p1}, Lorg/ros/internal/node/topic/DefaultPublisher$6;-><init>(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/node/topic/Publisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 293
    return-void
.end method

.method private signalOnShutdown(JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 305
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    move-object v0, p0

    .line 307
    .local v0, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    :try_start_1
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultPublisher$7;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultPublisher$7;-><init>(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/node/topic/Publisher;)V

    invoke-virtual {v1, v2, p1, p2, p3}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_c

    .line 316
    goto :goto_d

    .line 313
    :catch_c
    move-exception v1

    .line 317
    :goto_d
    return-void
.end method


# virtual methods
.method public addListener(Lorg/ros/node/topic/PublisherListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/PublisherListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    .local p1, "listener":Lorg/ros/node/topic/PublisherListener;, "Lorg/ros/node/topic/PublisherListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 206
    return-void
.end method

.method public addSubscriber(Lorg/ros/internal/node/topic/SubscriberIdentifier;Lorg/jboss/netty/channel/Channel;)V
    .registers 4
    .param p1, "subscriberIdentifer"    # Lorg/ros/internal/node/topic/SubscriberIdentifier;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 199
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->outgoingMessageQueue:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-virtual {v0, p2}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->addChannel(Lorg/jboss/netty/channel/Channel;)V

    .line 200
    invoke-direct {p0, p1}, Lorg/ros/internal/node/topic/DefaultPublisher;->signalOnNewSubscriber(Lorg/ros/internal/node/topic/SubscriberIdentifier;)V

    .line 201
    return-void
.end method

.method public finishHandshake(Lorg/ros/internal/transport/ConnectionHeader;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 12
    .param p1, "incomingHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 159
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultPublisher;->getTopicDeclarationHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v0

    .line 165
    .local v0, "topicDefinitionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "incomingType":Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "expectedType":Ljava/lang/String;
    nop

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_24

    const-string v3, "*"

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_24

    :cond_22
    const/4 v3, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v3, 0x1

    .line 170
    .local v3, "messageTypeMatches":Z
    :goto_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected message type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " != "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 172
    const-string v6, "md5sum"

    invoke-virtual {p1, v6}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "incomingChecksum":Ljava/lang/String;
    const-string v7, "md5sum"

    invoke-virtual {v0, v7}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "expectedChecksum":Ljava/lang/String;
    nop

    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    const-string v8, "*"

    .line 176
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    goto :goto_5e

    :cond_5d
    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v4, 0x1

    .line 177
    .local v4, "checksumMatches":Z
    :goto_5f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected message MD5 "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " != "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultPublisher;->toDeclaration()Lorg/ros/internal/node/topic/PublisherDeclaration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/ros/internal/node/topic/PublisherDeclaration;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v5

    .line 182
    .local v5, "outgoingConnectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    const-string v8, "latching"

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultPublisher;->getLatchMode()Z

    move-result v9

    if-eqz v9, :cond_8e

    const-string v9, "1"

    goto :goto_90

    :cond_8e
    const-string v9, "0"

    :goto_90
    invoke-virtual {v5, v8, v9}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v5}, Lorg/ros/internal/transport/ConnectionHeader;->encode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    return-object v8
.end method

.method public getIdentifier()Lorg/ros/internal/node/topic/PublisherIdentifier;
    .registers 4

    .line 121
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    new-instance v0, Lorg/ros/internal/node/topic/PublisherIdentifier;

    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultPublisher;->getTopicDeclaration()Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/topic/TopicDeclaration;->getIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/topic/PublisherIdentifier;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicIdentifier;)V

    return-object v0
.end method

.method public getLatchMode()Z
    .registers 2

    .line 105
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->outgoingMessageQueue:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->getLatchMode()Z

    move-result v0

    return v0
.end method

.method public getNumberOfSubscribers()I
    .registers 2

    .line 135
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->outgoingMessageQueue:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->getNumberOfChannels()I

    move-result v0

    return v0
.end method

.method public hasSubscribers()Z
    .registers 2

    .line 130
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->outgoingMessageQueue:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->getNumberOfChannels()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public newMessage()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->messageFactory:Lorg/ros/message/MessageFactory;

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultPublisher;->getTopicDeclaration()Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/TopicDeclaration;->getMessageType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/message/MessageFactory;->newFromType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public publish(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->outgoingMessageQueue:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-virtual {v0, p1}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->add(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public setLatchMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 100
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->outgoingMessageQueue:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-virtual {v0, p1}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->setLatchMode(Z)V

    .line 101
    return-void
.end method

.method public shutdown()V
    .registers 4

    .line 117
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    sget-object v0, Lorg/ros/internal/node/topic/DefaultPublisher;->DEFAULT_SHUTDOWN_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {p0, v1, v2, v0}, Lorg/ros/internal/node/topic/DefaultPublisher;->shutdown(JLjava/util/concurrent/TimeUnit;)V

    .line 118
    return-void
.end method

.method public shutdown(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 110
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/ros/internal/node/topic/DefaultPublisher;->signalOnShutdown(JLjava/util/concurrent/TimeUnit;)V

    .line 111
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->outgoingMessageQueue:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->shutdown()V

    .line 112
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0}, Lorg/ros/concurrent/ListenerGroup;->shutdown()V

    .line 113
    return-void
.end method

.method public signalOnMasterRegistrationFailure()V
    .registers 4

    .line 233
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    move-object v0, p0

    .line 234
    .local v0, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultPublisher$3;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultPublisher$3;-><init>(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/node/topic/Publisher;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 240
    return-void
.end method

.method public signalOnMasterRegistrationSuccess()V
    .registers 4

    .line 216
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    move-object v0, p0

    .line 217
    .local v0, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultPublisher$2;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultPublisher$2;-><init>(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/node/topic/Publisher;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 223
    return-void
.end method

.method public signalOnMasterUnregistrationFailure()V
    .registers 4

    .line 267
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    move-object v0, p0

    .line 268
    .local v0, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultPublisher$5;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultPublisher$5;-><init>(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/node/topic/Publisher;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 274
    return-void
.end method

.method public signalOnMasterUnregistrationSuccess()V
    .registers 4

    .line 250
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    move-object v0, p0

    .line 251
    .local v0, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/topic/DefaultPublisher$4;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/topic/DefaultPublisher$4;-><init>(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/node/topic/Publisher;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 257
    return-void
.end method

.method public toDeclaration()Lorg/ros/internal/node/topic/PublisherDeclaration;
    .registers 3

    .line 125
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultPublisher;->getTopicDeclaration()Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/internal/node/topic/PublisherDeclaration;->newFromNodeIdentifier(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;)Lorg/ros/internal/node/topic/PublisherDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 321
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Publisher<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/DefaultPublisher;->toDeclaration()Lorg/ros/internal/node/topic/PublisherDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
