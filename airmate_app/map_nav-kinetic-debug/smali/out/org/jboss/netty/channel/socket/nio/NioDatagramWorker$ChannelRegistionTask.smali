.class final Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;
.super Ljava/lang/Object;
.source "NioDatagramWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChannelRegistionTask"
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 4
    .param p2, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
    .param p3, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 173
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    .line 175
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 176
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 183
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 184
    .local v0, "localAddress":Ljava/net/SocketAddress;
    if-nez v0, :cond_24

    .line 185
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v1, :cond_16

    .line 186
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 188
    :cond_16
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 189
    return-void

    .line 193
    :cond_24
    :try_start_24
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_4c

    .line 194
    :try_start_29
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRawInterestOps()I

    move-result v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 196
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_49

    .line 197
    :try_start_3f
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v1, :cond_48

    .line 198
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_48} :catch_4c

    .line 210
    :cond_48
    goto :goto_67

    .line 196
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v2
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4c} :catch_4c

    .line 200
    :catch_4c
    move-exception v1

    .line 201
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v2, :cond_56

    .line 202
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 204
    :cond_56
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 206
    instance-of v2, v1, Ljava/nio/channels/ClosedChannelException;

    if-eqz v2, :cond_68

    .line 211
    .end local v1    # "e":Ljava/io/IOException;
    :goto_67
    return-void

    .line 207
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_68
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    const-string v3, "Failed to register a socket to the selector."

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
