.class Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;
.source "NioDatagramPipelineSink.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool<",
            "Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 36
    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool<",
            "Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "workerPool":Lorg/jboss/netty/channel/socket/nio/WorkerPool;, "Lorg/jboss/netty/channel/socket/nio/WorkerPool<Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;>;"
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    .line 53
    return-void
.end method

.method private static bind(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/InetSocketAddress;)V
    .registers 7
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "address"    # Ljava/net/InetSocketAddress;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 130
    .local v1, "started":Z
    :try_start_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 131
    const/4 v0, 0x1

    .line 133
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 134
    invoke-static {p0, p2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 136
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->register(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_23
    .catchall {:try_start_2 .. :try_end_1a} :catchall_21

    .line 137
    const/4 v1, 0x1

    .line 138
    nop

    .line 146
    if-nez v1, :cond_32

    if-eqz v0, :cond_32

    goto :goto_2f

    .line 142
    :catchall_21
    move-exception v2

    goto :goto_34

    .line 138
    :catch_23
    move-exception v2

    .line 139
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_24
    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 140
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    .line 141
    .end local v2    # "t":Ljava/lang/Throwable;
    nop

    .line 143
    if-nez v1, :cond_32

    if-eqz v0, :cond_32

    :goto_2f
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 145
    :cond_32
    nop

    .line 146
    return-void

    .line 142
    :goto_34
    nop

    .line 143
    if-nez v1, :cond_3c

    if-eqz v0, :cond_3c

    invoke-static {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 142
    :cond_3c
    throw v2
.end method

.method private static close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 105
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->setClosed()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 106
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 107
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 108
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 110
    :cond_1d
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_24

    .line 112
    :cond_21
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 117
    :goto_24
    goto :goto_2c

    .line 114
    :catch_25
    move-exception v0

    .line 115
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 116
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2c
    return-void
.end method

.method private static connect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 8
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 152
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isBound()Z

    move-result v0

    .line 153
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 154
    .local v1, "connected":Z
    const/4 v2, 0x0

    .line 156
    .local v2, "workerStarted":Z
    sget-object v3, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p1, v3}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 160
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 163
    :try_start_e
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 164
    const/4 v1, 0x1

    .line 167
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 168
    if-nez v0, :cond_22

    .line 169
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 171
    :cond_22
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 173
    if-nez v0, :cond_30

    .line 174
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v3, p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->register(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_30} :catch_39
    .catchall {:try_start_e .. :try_end_30} :catchall_37

    .line 177
    :cond_30
    const/4 v2, 0x1

    .line 178
    nop

    .line 186
    if-eqz v1, :cond_4a

    if-nez v2, :cond_4a

    goto :goto_45

    .line 182
    :catchall_37
    move-exception v3

    goto :goto_4c

    .line 178
    :catch_39
    move-exception v3

    .line 179
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3a
    invoke-interface {p1, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 180
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 181
    .end local v3    # "t":Ljava/lang/Throwable;
    nop

    .line 183
    if-eqz v1, :cond_4a

    if-nez v2, :cond_4a

    :goto_45
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v3, p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 185
    :cond_4a
    nop

    .line 186
    return-void

    .line 182
    :goto_4c
    nop

    .line 183
    if-eqz v1, :cond_56

    if-nez v2, :cond_56

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v4, p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 182
    :cond_56
    throw v3
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 10
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .line 65
    .local v0, "channel":Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 66
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v2, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_5c

    .line 67
    move-object v2, p2

    check-cast v2, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 68
    .local v2, "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 69
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 70
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_70

    .end local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_5b

    .line 91
    .restart local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v4    # "value":Ljava/lang/Object;
    :pswitch_25
    iget-object v5, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v0, v1, v6}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_5b

    .line 84
    :pswitch_32
    if-eqz v4, :cond_3b

    .line 85
    move-object v5, v4

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-static {v0, v1, v5}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->connect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_5b

    .line 87
    :cond_3b
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->disconnect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 89
    goto :goto_5b

    .line 77
    :pswitch_3f
    if-eqz v4, :cond_48

    .line 78
    move-object v5, v4

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-static {v0, v1, v5}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->bind(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/InetSocketAddress;)V

    goto :goto_5b

    .line 80
    :cond_48
    iget-object v5, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v5, v0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 82
    goto :goto_5b

    .line 72
    :pswitch_4e
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 73
    iget-object v5, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v5, v0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 94
    .end local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_5b
    :goto_5b
    goto :goto_6f

    :cond_5c
    instance-of v2, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v2, :cond_6f

    .line 95
    move-object v2, p2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    .line 96
    .local v2, "event":Lorg/jboss/netty/channel/MessageEvent;
    iget-object v3, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 97
    .local v3, "offered":Z
    nop

    .line 98
    iget-object v4, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v4, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 100
    .end local v2    # "event":Lorg/jboss/netty/channel/MessageEvent;
    .end local v3    # "offered":Z
    :cond_6f
    :goto_6f
    return-void

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_3f
        :pswitch_32
        :pswitch_25
    .end packed-switch
.end method

.method nextWorker()Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
    .registers 2

    .line 189
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/WorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/Worker;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    return-object v0
.end method
