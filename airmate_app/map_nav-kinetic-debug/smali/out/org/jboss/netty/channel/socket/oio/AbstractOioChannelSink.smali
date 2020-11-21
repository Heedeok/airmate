.class public abstract Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "AbstractOioChannelSink.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 8
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "task"    # Ljava/lang/Runnable;

    .line 31
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 32
    .local v0, "ch":Lorg/jboss/netty/channel/Channel;
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    if-eqz v1, :cond_1e

    .line 33
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    .line 34
    .local v1, "channel":Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->worker:Lorg/jboss/netty/channel/socket/Worker;

    .line 35
    .local v2, "worker":Lorg/jboss/netty/channel/socket/Worker;
    if-eqz v2, :cond_1e

    .line 36
    new-instance v3, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Runnable;)V

    .line 37
    .local v3, "wrapper":Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;
    iget-object v4, v1, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->worker:Lorg/jboss/netty/channel/socket/Worker;

    invoke-interface {v4, v3}, Lorg/jboss/netty/channel/socket/Worker;->executeInIoThread(Ljava/lang/Runnable;)V

    .line 38
    return-object v3

    .line 42
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;
    .end local v2    # "worker":Lorg/jboss/netty/channel/socket/Worker;
    .end local v3    # "wrapper":Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;
    :cond_1e
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/AbstractChannelSink;->execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method

.method protected isFireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)Z
    .registers 6
    .param p1, "event"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p2, "actualCause"    # Ljava/lang/Throwable;

    .line 49
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 50
    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    const/4 v1, 0x0

    .line 51
    .local v1, "fireLater":Z
    instance-of v2, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    if-eqz v2, :cond_13

    .line 52
    move-object v2, v0

    check-cast v2, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-static {v2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 54
    :cond_13
    return v1
.end method
