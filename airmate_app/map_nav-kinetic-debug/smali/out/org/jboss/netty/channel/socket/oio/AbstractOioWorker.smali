.class abstract Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;
.super Ljava/lang/Object;
.source "AbstractOioWorker.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/Worker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/channel/socket/Worker;"
    }
.end annotation


# instance fields
.field protected final channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private volatile done:Z

.field private final eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;, "Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker<TC;>;"
    .local p1, "channel":Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;, "TC;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->eventQueue:Ljava/util/Queue;

    .line 49
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    .line 50
    iput-object p0, p1, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->worker:Lorg/jboss/netty/channel/socket/Worker;

    .line 51
    return-void
.end method

.method static close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 195
    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V

    .line 196
    return-void
.end method

.method private static close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V
    .registers 7
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "iothread"    # Z

    .line 199
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isConnected()Z

    move-result v0

    .line 200
    .local v0, "connected":Z
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isBound()Z

    move-result v1

    .line 203
    .local v1, "bound":Z
    :try_start_8
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->closeSocket()V

    .line 204
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->setClosed()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 205
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 206
    if-eqz v0, :cond_2c

    .line 208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 209
    .local v2, "currentThread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    .line 210
    .local v3, "workerThread":Ljava/lang/Thread;
    if-eqz v3, :cond_23

    if-eq v2, v3, :cond_23

    .line 211
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 213
    :cond_23
    if-eqz p2, :cond_29

    .line 214
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_2c

    .line 216
    :cond_29
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 219
    .end local v2    # "currentThread":Ljava/lang/Thread;
    .end local v3    # "workerThread":Ljava/lang/Thread;
    :cond_2c
    :goto_2c
    if-eqz v1, :cond_37

    .line 220
    if-eqz p2, :cond_34

    .line 221
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_37

    .line 223
    :cond_34
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnboundLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 226
    :cond_37
    :goto_37
    if-eqz p2, :cond_3d

    .line 227
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_44

    .line 229
    :cond_3d
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_44

    .line 232
    :cond_41
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_44} :catch_45

    .line 241
    :goto_44
    goto :goto_52

    .line 234
    :catch_45
    move-exception v2

    .line 235
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 236
    if-eqz p2, :cond_4f

    .line 237
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_52

    .line 239
    :cond_4f
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 242
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_52
    return-void
.end method

.method static isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private processEventQueue()V
    .registers 2

    .line 127
    .local p0, "this":Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;, "Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker<TC;>;"
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 128
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_c

    .line 129
    nop

    .line 133
    .end local v0    # "task":Ljava/lang/Runnable;
    return-void

    .line 131
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 132
    .end local v0    # "task":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method static setInterestOps(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .registers 8
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "interestOps"    # I

    .line 149
    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v0

    .line 152
    .local v0, "iothread":Z
    and-int/lit8 p2, p2, -0x5

    .line 153
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->getInterestOps()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    or-int/2addr p2, v1

    .line 155
    const/4 v1, 0x0

    move v2, v1

    .line 157
    .local v2, "changed":Z
    :try_start_f
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->getInterestOps()I

    move-result v3

    if-eq v3, p2, :cond_22

    .line 158
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1e

    .line 159
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->setInterestOpsNow(I)V

    goto :goto_21

    .line 161
    :cond_1e
    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->setInterestOpsNow(I)V

    .line 163
    :goto_21
    const/4 v2, 0x1

    .line 166
    :cond_22
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 167
    if-eqz v2, :cond_48

    .line 168
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_2a} :catch_49

    .line 169
    :try_start_2a
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->setInterestOpsNow(I)V

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 173
    .local v3, "currentThread":Ljava/lang/Thread;
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    .line 174
    .local v4, "workerThread":Ljava/lang/Thread;
    if-eqz v4, :cond_3a

    if-eq v3, v4, :cond_3a

    .line 175
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 177
    .end local v3    # "currentThread":Ljava/lang/Thread;
    .end local v4    # "workerThread":Ljava/lang/Thread;
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_45

    .line 178
    if-eqz v0, :cond_41

    .line 179
    :try_start_3d
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_48

    .line 181
    :cond_41
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_44} :catch_49

    goto :goto_48

    .line 177
    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw v3
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_48} :catch_49

    .line 191
    :cond_48
    :goto_48
    goto :goto_56

    .line 184
    :catch_49
    move-exception v1

    .line 185
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 186
    if-eqz v0, :cond_53

    .line 187
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_56

    .line 189
    :cond_53
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 192
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_56
    return-void
.end method


# virtual methods
.method public executeInIoThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 114
    .local p0, "this":Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;, "Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker<TC;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_14

    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->done:Z

    if-eqz v0, :cond_d

    goto :goto_14

    .line 117
    :cond_d
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    .local v0, "added":Z
    goto :goto_17

    .line 115
    .end local v0    # "added":Z
    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 123
    :goto_17
    return-void
.end method

.method abstract process()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run()V
    .registers 5

    .line 55
    .local p0, "this":Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;, "Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker<TC;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->thread:Ljava/lang/Thread;

    .line 57
    move-object v0, p0

    .local v0, "this":Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;, "Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker<TC;>;"
    :goto_b
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 58
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :goto_18
    :try_start_18
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isReadable()Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_61

    if-nez v2, :cond_32

    .line 63
    :try_start_20
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->interestOpsLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_61

    .line 68
    :cond_27
    goto :goto_18

    .line 64
    :catch_28
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_29
    iget-object v3, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_27

    .line 66
    nop

    .line 70
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_61

    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "cont":Z
    :try_start_34
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->process()Z

    move-result v2
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_38} :catch_43
    .catchall {:try_start_34 .. :try_end_38} :catchall_41

    move v1, v2

    .line 75
    nop

    .line 102
    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->processEventQueue()V

    .line 82
    if-nez v1, :cond_40

    .line 83
    :goto_3f
    goto :goto_64

    .line 85
    :cond_40
    goto :goto_58

    .line 80
    :catchall_41
    move-exception v2

    goto :goto_59

    .line 75
    :catch_43
    move-exception v2

    .line 76
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_44
    iget-object v3, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isSocketClosed()Z

    move-result v3

    if-nez v3, :cond_51

    .line 77
    iget-object v3, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-static {v3, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_41

    .line 79
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_51
    nop

    .line 83
    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->processEventQueue()V

    .line 82
    if-nez v1, :cond_40

    goto :goto_3f

    .line 86
    .end local v1    # "cont":Z
    :goto_58
    goto :goto_b

    .line 80
    .restart local v1    # "cont":Z
    :goto_59
    nop

    .line 83
    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->processEventQueue()V

    .line 82
    if-nez v1, :cond_60

    goto :goto_3f

    .line 80
    :cond_60
    throw v2

    .line 70
    .end local v1    # "cont":Z
    :catchall_61
    move-exception v2

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v2

    .line 90
    :cond_64
    :goto_64
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    .line 93
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V

    .line 97
    iput-boolean v3, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->done:Z

    .line 100
    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->processEventQueue()V

    .line 102
    return-void
.end method
