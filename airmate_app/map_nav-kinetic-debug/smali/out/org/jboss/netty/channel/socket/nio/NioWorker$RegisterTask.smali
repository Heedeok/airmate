.class final Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;
.super Ljava/lang/Object;
.source "NioWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisterTask"
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field private final server:Z

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioWorker;Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V
    .registers 5
    .param p2, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .param p3, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p4, "server"    # Z

    .line 154
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 157
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 158
    iput-boolean p4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->server:Z

    .line 159
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 162
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 163
    .local v0, "localAddress":Ljava/net/SocketAddress;
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 165
    .local v1, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_87

    if-nez v1, :cond_12

    goto/16 :goto_87

    .line 174
    :cond_12
    :try_start_12
    iget-boolean v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->server:Z

    if-eqz v2, :cond_20

    .line 175
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v2, Ljava/nio/channels/SocketChannel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 178
    :cond_20
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_63

    .line 179
    :try_start_25
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v3, Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v4, v4, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v5}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRawInterestOps()I

    move-result v5

    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 181
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_60

    .line 182
    :try_start_3b
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v2, :cond_49

    .line 183
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->setConnected()V

    .line 184
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 187
    :cond_49
    iget-boolean v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->server:Z

    if-nez v2, :cond_55

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    check-cast v2, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-boolean v2, v2, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->boundManually:Z

    if-nez v2, :cond_5a

    .line 188
    :cond_55
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v2, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 190
    :cond_5a
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v2, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_5f} :catch_63

    .line 200
    goto :goto_7e

    .line 181
    :catchall_60
    move-exception v3

    :try_start_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw v3
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_63} :catch_63

    .line 191
    :catch_63
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v3, :cond_6d

    .line 193
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v3, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 195
    :cond_6d
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v5}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 196
    instance-of v3, v2, Ljava/nio/channels/ClosedChannelException;

    if-eqz v3, :cond_7f

    .line 202
    .end local v2    # "e":Ljava/io/IOException;
    :goto_7e
    return-void

    .line 197
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_7f
    new-instance v3, Lorg/jboss/netty/channel/ChannelException;

    const-string v4, "Failed to register a socket to the selector."

    invoke-direct {v3, v4, v2}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 166
    .end local v2    # "e":Ljava/io/IOException;
    :cond_87
    :goto_87
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v2, :cond_95

    .line 167
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 169
    :cond_95
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 170
    return-void
.end method
