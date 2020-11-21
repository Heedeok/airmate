.class final Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;
.super Ljava/lang/Object;
.source "NioClientSocketPipelineSink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegisterTask"
.end annotation


# instance fields
.field private final boss:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V
    .registers 3
    .param p1, "boss"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
    .param p2, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->boss:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    .line 428
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 429
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 433
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->boss:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    const/16 v2, 0x8

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_11
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_11} :catch_12

    .line 437
    goto :goto_22

    .line 435
    :catch_12
    move-exception v0

    .line 436
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 439
    .end local v0    # "e":Ljava/nio/channels/ClosedChannelException;
    :goto_22
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v0

    .line 440
    .local v0, "connectTimeout":I
    if-lez v0, :cond_3d

    .line 441
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    int-to-long v4, v0

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectDeadlineNanos:J

    .line 443
    :cond_3d
    return-void
.end method
