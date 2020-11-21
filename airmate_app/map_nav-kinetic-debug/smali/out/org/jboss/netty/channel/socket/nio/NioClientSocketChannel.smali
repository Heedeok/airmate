.class final Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
.super Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
.source "NioClientSocketChannel.java"


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field volatile boundManually:Z

.field connectDeadlineNanos:J

.field volatile connectFuture:Lorg/jboss/netty/channel/ChannelFuture;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/NioWorker;)V
    .registers 12
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p4, "worker"    # Lorg/jboss/netty/channel/socket/nio/NioWorker;

    .line 78
    invoke-static {}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->newSocket()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/NioWorker;)V

    .line 79
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 80
    return-void
.end method

.method private static newSocket()Ljava/nio/channels/SocketChannel;
    .registers 6

    .line 39
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_49

    .line 42
    .local v0, "socket":Ljava/nio/channels/SocketChannel;
    nop

    .line 44
    const/4 v1, 0x0

    move v2, v1

    .line 46
    .local v2, "success":Z
    :try_start_7
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_27
    .catchall {:try_start_7 .. :try_end_a} :catchall_25

    .line 47
    const/4 v1, 0x1

    .line 48
    .end local v2    # "success":Z
    .local v1, "success":Z
    nop

    .line 65
    if-nez v1, :cond_22

    .line 53
    :try_start_e
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    .line 61
    goto :goto_22

    .line 54
    :catch_12
    move-exception v2

    .line 55
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 56
    sget-object v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Failed to close a partially initialized socket."

    invoke-interface {v3, v4, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v2    # "e":Ljava/io/IOException;
    :cond_22
    :goto_22
    nop

    .line 63
    nop

    .line 65
    return-object v0

    .line 51
    .end local v1    # "success":Z
    .local v2, "success":Z
    :catchall_25
    move-exception v1

    goto :goto_30

    .line 48
    :catch_27
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/IOException;
    :try_start_28
    new-instance v3, Lorg/jboss/netty/channel/ChannelException;

    const-string v4, "Failed to enter non-blocking mode."

    invoke-direct {v3, v4, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    :goto_30
    nop

    .line 61
    if-nez v2, :cond_47

    .line 53
    :try_start_33
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 61
    goto :goto_47

    .line 54
    :catch_37
    move-exception v3

    .line 55
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v4}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 56
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v5, "Failed to close a partially initialized socket."

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v3    # "e":Ljava/io/IOException;
    :cond_47
    :goto_47
    nop

    .line 51
    throw v1

    .line 40
    .end local v0    # "socket":Ljava/nio/channels/SocketChannel;
    .end local v2    # "success":Z
    :catch_49
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to open a socket."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
