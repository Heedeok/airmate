.class public Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;
.super Lorg/jboss/netty/channel/DefaultChannelFuture;
.source "ChannelRunnableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private started:Z

.field private final task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "task"    # Ljava/lang/Runnable;

    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    .line 28
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->task:Ljava/lang/Runnable;

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()Z
    .registers 2

    monitor-enter p0

    .line 50
    :try_start_1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->started:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-eqz v0, :cond_8

    .line 51
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 53
    :cond_8
    :try_start_8
    invoke-super {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->cancel()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 49
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 2

    .line 33
    monitor-enter p0

    .line 34
    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->started:Z

    .line 39
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b

    .line 41
    :try_start_b
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 42
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->setSuccess()Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_13} :catch_14

    .line 45
    goto :goto_18

    .line 43
    :catch_14
    move-exception v0

    .line 44
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->setFailure(Ljava/lang/Throwable;)Z

    .line 46
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_18
    return-void

    .line 37
    :cond_19
    :try_start_19
    monitor-exit p0

    return-void

    .line 39
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1b

    throw v0
.end method
