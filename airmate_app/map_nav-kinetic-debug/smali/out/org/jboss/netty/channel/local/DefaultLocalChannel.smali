.class final Lorg/jboss/netty/channel/local/DefaultLocalChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "DefaultLocalChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/local/LocalChannel;


# static fields
.field private static final ST_BOUND:I = 0x1

.field private static final ST_CLOSED:I = -0x1

.field private static final ST_CONNECTED:I = 0x2

.field private static final ST_OPEN:I


# instance fields
.field private final config:Lorg/jboss/netty/channel/ChannelConfig;

.field private final delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

.field volatile localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

.field volatile pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

.field volatile remoteAddress:Lorg/jboss/netty/channel/local/LocalAddress;

.field final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field final writeBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/local/LocalServerChannel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/local/DefaultLocalChannel;)V
    .registers 8
    .param p1, "parent"    # Lorg/jboss/netty/channel/local/LocalServerChannel;
    .param p2, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p3, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p4, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p5, "pairedChannel"    # Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    .line 52
    const-class v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    .line 62
    iput-object p5, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 63
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelConfig;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->config:Lorg/jboss/netty/channel/ChannelConfig;

    .line 67
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel$1;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel$1;-><init>(Lorg/jboss/netty/channel/local/DefaultLocalChannel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 73
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 74
    return-void
.end method


# virtual methods
.method closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 6
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 124
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 127
    .local v0, "localAddress":Lorg/jboss/netty/channel/local/LocalAddress;
    :try_start_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->setClosed()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_61

    if-nez v1, :cond_18

    .line 128
    nop

    .line 157
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 153
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    if-nez v1, :cond_17

    .line 154
    invoke-static {v0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 128
    :cond_17
    return-void

    .line 131
    :cond_18
    :try_start_18
    iget-object v1, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 132
    .local v1, "pairedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 133
    iput-object v2, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 134
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    .line 135
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 137
    :cond_25
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 140
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->setClosed()Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_51

    .line 144
    :cond_31
    iget-object v3, v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 145
    .local v3, "me":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    if-eqz v3, :cond_3d

    .line 146
    iput-object v2, v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 147
    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    .line 148
    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 150
    :cond_3d
    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_61

    .line 151
    .end local v1    # "pairedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v3    # "me":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    nop

    .line 154
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 153
    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 154
    invoke-static {v0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 156
    :cond_4f
    nop

    .line 157
    return-void

    .line 141
    .restart local v1    # "pairedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    :cond_51
    :goto_51
    nop

    .line 154
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 153
    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    if-nez v2, :cond_60

    .line 154
    invoke-static {v0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 141
    :cond_60
    return-void

    .line 152
    .end local v1    # "pairedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    :catchall_61
    move-exception v1

    .line 154
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 153
    if-eqz v0, :cond_71

    invoke-virtual {v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    if-nez v3, :cond_71

    .line 154
    invoke-static {v0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 152
    :cond_71
    throw v1
.end method

.method flushWriteBuffer()V
    .registers 6

    .line 160
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 161
    .local v0, "pairedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    if-eqz v0, :cond_5a

    .line 162
    invoke-virtual {v0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 165
    iget-object v1, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_76

    .line 166
    iget-object v1, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    .line 169
    :goto_22
    const/4 v1, 0x0

    :try_start_23
    iget-object v2, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_4e

    .line 170
    .local v2, "e":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v2, :cond_3a

    .line 171
    nop

    .line 178
    .end local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    nop

    .line 205
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    iget-object v3, v2, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    .line 180
    goto :goto_77

    .line 174
    .local v2, "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_3a
    :try_start_3a
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 175
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    .line 176
    const-wide/16 v3, 0x1

    invoke-static {p0, v3, v4}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_4e

    .line 177
    .end local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    goto :goto_22

    .line 179
    :catchall_4e
    move-exception v2

    .line 205
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    iget-object v4, v3, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->delivering:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    .line 179
    throw v2

    .line 189
    .end local v3    # "this":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    :cond_5a
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 190
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    goto :goto_6b

    .line 192
    :cond_66
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 196
    .local v1, "cause":Ljava/lang/Exception;
    :goto_6b
    iget-object v2, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    .line 197
    .restart local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v2, :cond_78

    .line 198
    nop

    .line 205
    .end local v1    # "cause":Ljava/lang/Exception;
    .end local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_76
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    :goto_77
    return-void

    .line 201
    .restart local v1    # "cause":Ljava/lang/Exception;
    .local v2, "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_78
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 202
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 203
    .end local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    goto :goto_6b
.end method

.method public getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->config:Lorg/jboss/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .registers 2

    .line 116
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .registers 2

    .line 120
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->remoteAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    return-object v0
.end method

.method public isBound()Z
    .registers 3

    .line 86
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isConnected()Z
    .registers 3

    .line 90
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 82
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method setBound()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_21

    .line 95
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 99
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    const-string v1, "already bound"

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1b
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 102
    :cond_21
    return-void
.end method

.method protected setClosed()Z
    .registers 2

    .line 112
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method setConnected()V
    .registers 3

    .line 105
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 106
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 108
    :cond_f
    return-void
.end method
