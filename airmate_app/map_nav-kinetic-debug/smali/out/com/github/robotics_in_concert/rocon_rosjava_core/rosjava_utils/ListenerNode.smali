.class public Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;
.super Ljava/lang/Object;
.source "ListenerNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MsgType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field errorMessage:Ljava/lang/String;

.field private listener:Lorg/ros/message/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageListener<",
            "TMsgType;>;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMsgType;"
        }
    .end annotation
.end field

.field private subscriber:Lorg/ros/node/topic/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Subscriber<",
            "TMsgType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode<TMsgType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->msg:Ljava/lang/Object;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->errorMessage:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$002(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->msg:Ljava/lang/Object;

    return-object p1
.end method

.method private setupListener()V
    .registers 3

    .line 88
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode<TMsgType;>;"
    new-instance v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode$1;

    invoke-direct {v0, p0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode$1;-><init>(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;)V

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->listener:Lorg/ros/message/MessageListener;

    .line 94
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->subscriber:Lorg/ros/node/topic/Subscriber;

    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->listener:Lorg/ros/message/MessageListener;

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method public connect(Lorg/ros/node/ConnectedNode;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;
    .param p2, "topicName"    # Ljava/lang/String;
    .param p3, "topicType"    # Ljava/lang/String;

    .line 32
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode<TMsgType;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->msg:Ljava/lang/Object;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->errorMessage:Ljava/lang/String;

    .line 34
    invoke-static {}, Lorg/ros/namespace/NodeNameResolver;->newRoot()Lorg/ros/namespace/NameResolver;

    move-result-object v0

    .line 35
    .local v0, "resolver":Lorg/ros/namespace/NameResolver;
    invoke-virtual {v0, p2}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "resolvedTopicName":Ljava/lang/String;
    invoke-interface {p1, v1, p3}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v2

    iput-object v2, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->subscriber:Lorg/ros/node/topic/Subscriber;

    .line 40
    invoke-direct {p0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->setupListener()V

    .line 41
    return-void
.end method

.method public getMessage()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMsgType;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode<TMsgType;>;"
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->msg:Ljava/lang/Object;

    return-object v0
.end method

.method public waitForNextResponse()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode<TMsgType;>;"
    const-string v0, ""

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->errorMessage:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->msg:Ljava/lang/Object;

    .line 78
    :try_start_7
    invoke-virtual {p0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->waitForResponse()V
    :try_end_a
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException; {:try_start_7 .. :try_end_a} :catch_e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_a} :catch_c

    .line 83
    nop

    .line 84
    return-void

    .line 81
    :catch_c
    move-exception v0

    .line 82
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    throw v0

    .line 79
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_e
    move-exception v0

    .line 80
    .local v0, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;
    throw v0
.end method

.method public waitForResponse()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode<TMsgType;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "count":I
    :goto_1
    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->msg:Ljava/lang/Object;

    if-nez v1, :cond_4d

    .line 57
    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->errorMessage:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_45

    .line 61
    const-wide/16 v1, 0xc8

    :try_start_d
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_3e

    .line 64
    nop

    .line 66
    const/16 v1, 0x14

    if-eq v0, v1, :cond_18

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timed out waiting for a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->subscriber:Lorg/ros/node/topic/Subscriber;

    invoke-interface {v2}, Lorg/ros/node/topic/Subscriber;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "publication"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->errorMessage:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-object v2, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->errorMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :catch_3e
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;

    invoke-direct {v2, v1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_45
    new-instance v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;

    iget-object v2, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerNode;->errorMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ListenerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_4d
    return-void
.end method
