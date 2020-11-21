.class public Lorg/ros/time/ClockTopicTimeProvider;
.super Ljava/lang/Object;
.source "ClockTopicTimeProvider.java"

# interfaces
.implements Lorg/ros/time/TimeProvider;


# instance fields
.field private clock:Lrosgraph_msgs/Clock;

.field private mutex:Ljava/lang/Object;

.field private final subscriber:Lorg/ros/node/topic/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Subscriber<",
            "Lrosgraph_msgs/Clock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/DefaultNode;)V
    .registers 4
    .param p1, "defaultNode"    # Lorg/ros/internal/node/DefaultNode;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lorg/ros/Topics;->CLOCK:Lorg/ros/namespace/GraphName;

    const-string v1, "rosgraph_msgs/Clock"

    invoke-virtual {p1, v0, v1}, Lorg/ros/internal/node/DefaultNode;->newSubscriber(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/time/ClockTopicTimeProvider;->subscriber:Lorg/ros/node/topic/Subscriber;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/time/ClockTopicTimeProvider;->mutex:Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lorg/ros/time/ClockTopicTimeProvider;->subscriber:Lorg/ros/node/topic/Subscriber;

    new-instance v1, Lorg/ros/time/ClockTopicTimeProvider$1;

    invoke-direct {v1, p0}, Lorg/ros/time/ClockTopicTimeProvider$1;-><init>(Lorg/ros/time/ClockTopicTimeProvider;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/ros/time/ClockTopicTimeProvider;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/ros/time/ClockTopicTimeProvider;

    .line 34
    iget-object v0, p0, Lorg/ros/time/ClockTopicTimeProvider;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lorg/ros/time/ClockTopicTimeProvider;Lrosgraph_msgs/Clock;)Lrosgraph_msgs/Clock;
    .registers 2
    .param p0, "x0"    # Lorg/ros/time/ClockTopicTimeProvider;
    .param p1, "x1"    # Lrosgraph_msgs/Clock;

    .line 34
    iput-object p1, p0, Lorg/ros/time/ClockTopicTimeProvider;->clock:Lrosgraph_msgs/Clock;

    return-object p1
.end method


# virtual methods
.method public getCurrentTime()Lorg/ros/message/Time;
    .registers 4

    .line 62
    iget-object v0, p0, Lorg/ros/time/ClockTopicTimeProvider;->clock:Lrosgraph_msgs/Clock;

    if-nez v0, :cond_a

    .line 63
    new-instance v0, Lorg/ros/message/Time;

    invoke-direct {v0}, Lorg/ros/message/Time;-><init>()V

    return-object v0

    .line 66
    :cond_a
    iget-object v0, p0, Lorg/ros/time/ClockTopicTimeProvider;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_d
    new-instance v1, Lorg/ros/message/Time;

    iget-object v2, p0, Lorg/ros/time/ClockTopicTimeProvider;->clock:Lrosgraph_msgs/Clock;

    invoke-interface {v2}, Lrosgraph_msgs/Clock;->getClock()Lorg/ros/message/Time;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/message/Time;-><init>(Lorg/ros/message/Time;)V

    monitor-exit v0

    return-object v1

    .line 68
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getSubscriber()Lorg/ros/node/topic/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/node/topic/Subscriber<",
            "Lrosgraph_msgs/Clock;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/ros/time/ClockTopicTimeProvider;->subscriber:Lorg/ros/node/topic/Subscriber;

    return-object v0
.end method
