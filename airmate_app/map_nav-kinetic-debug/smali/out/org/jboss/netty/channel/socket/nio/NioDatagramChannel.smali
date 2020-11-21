.class public final Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;
.source "NioDatagramChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
        "Ljava/nio/channels/DatagramChannel;",
        ">;",
        "Lorg/jboss/netty/channel/socket/DatagramChannel;"
    }
.end annotation


# instance fields
.field private final config:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

.field private memberships:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Ljava/util/List<",
            "Ljava/nio/channels/MembershipKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V
    .registers 13
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p4, "worker"    # Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
    .param p5, "family"    # Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    .line 59
    invoke-static {p5}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->openNonBlockingChannel(Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object v6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;Ljava/nio/channels/SelectableChannel;)V

    .line 60
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/DefaultNioDatagramChannelConfig;-><init>(Ljava/nio/channels/DatagramChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->config:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    .line 62
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 64
    return-void
.end method

.method private static openNonBlockingChannel(Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .registers 4
    .param p0, "family"    # Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    .line 71
    :try_start_0
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2e

    if-nez p0, :cond_a

    goto :goto_2e

    .line 79
    :cond_a
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel$1;->$SwitchMap$org$jboss$netty$channel$socket$InternetProtocolFamily:[I

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_2a

    .line 85
    :pswitch_18
    invoke-static {p0}, Lorg/jboss/netty/channel/socket/nio/ProtocolFamilyConverter;->convert(Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)Ljava/net/ProtocolFamily;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/DatagramChannel;->open(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 86
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    goto :goto_32

    .line 81
    .end local v0    # "channel":Ljava/nio/channels/DatagramChannel;
    :pswitch_21
    invoke-static {p0}, Lorg/jboss/netty/channel/socket/nio/ProtocolFamilyConverter;->convert(Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)Ljava/net/ProtocolFamily;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/DatagramChannel;->open(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 82
    .restart local v0    # "channel":Ljava/nio/channels/DatagramChannel;
    goto :goto_32

    .line 89
    .end local v0    # "channel":Ljava/nio/channels/DatagramChannel;
    :goto_2a
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_2e
    :goto_2e
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 93
    .restart local v0    # "channel":Ljava/nio/channels/DatagramChannel;
    :goto_32
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_37

    .line 94
    return-object v0

    .line 95
    .end local v0    # "channel":Ljava/nio/channels/DatagramChannel;
    :catch_37
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to open a DatagramChannel."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_21
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 5
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 291
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_f} :catch_15

    .line 294
    nop

    .line 295
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 292
    :catch_15
    move-exception v0

    .line 293
    .local v0, "e":Ljava/net/SocketException;
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 9
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 252
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_61

    .line 255
    if-eqz p1, :cond_59

    .line 258
    if-eqz p3, :cond_51

    .line 262
    if-eqz p2, :cond_49

    .line 265
    monitor-enter p0

    .line 266
    :try_start_e
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    if-eqz v0, :cond_40

    .line 267
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 268
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/MembershipKey;

    .line 269
    .local v2, "key":Ljava/nio/channels/MembershipKey;
    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->networkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_46

    if-eqz v3, :cond_3f

    .line 271
    :try_start_34
    invoke-virtual {v2, p3}, Ljava/nio/channels/MembershipKey;->block(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_46

    .line 274
    goto :goto_3f

    .line 272
    :catch_38
    move-exception v3

    .line 273
    .local v3, "e":Ljava/io/IOException;
    :try_start_39
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 276
    .end local v2    # "key":Ljava/nio/channels/MembershipKey;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3f
    :goto_3f
    goto :goto_1e

    .line 278
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_46

    .line 279
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 278
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0

    .line 263
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "networkInterface"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sourceToBlock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "multicastAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;
    .registers 2

    .line 122
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->config:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    return-object v0
.end method

.method getDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .line 126
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public bridge synthetic getInterestOps()I
    .registers 2

    .line 47
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getInterestOps()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 47
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 47
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getWorker()Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getWorker()Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    move-result-object v0

    return-object v0
.end method

.method public getWorker()Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
    .registers 2

    .line 104
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getWorker()Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .line 108
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 135
    :catch_12
    move-exception v0

    .line 136
    .local v0, "e":Ljava/net/SocketException;
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 7
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 150
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_64

    .line 153
    if-eqz p1, :cond_5c

    .line 157
    if-eqz p2, :cond_54

    .line 163
    if-nez p3, :cond_18

    .line 164
    :try_start_d
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/DatagramChannel;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Ljava/nio/channels/MembershipKey;

    move-result-object v0

    goto :goto_20

    .line 181
    :catch_16
    move-exception v0

    goto :goto_4e

    .line 166
    :cond_18
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/DatagramChannel;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;

    move-result-object v0

    .line 169
    .local v0, "key":Ljava/nio/channels/MembershipKey;
    :goto_20
    monitor-enter p0
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_21} :catch_16

    .line 170
    :try_start_21
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    if-nez v1, :cond_2c

    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    .line 174
    :cond_2c
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 175
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    if-nez v1, :cond_41

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 177
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_41
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_4b

    .line 183
    .end local v0    # "key":Ljava/nio/channels/MembershipKey;
    nop

    .line 185
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 180
    .restart local v0    # "key":Ljava/nio/channels/MembershipKey;
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v1
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4e} :catch_16

    .line 181
    .end local v0    # "key":Ljava/nio/channels/MembershipKey;
    :goto_4e
    nop

    .line 182
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 158
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "networkInterface"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_5c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "multicastAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 5
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 142
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 192
    :catch_12
    move-exception v0

    .line 193
    .local v0, "e":Ljava/net/SocketException;
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 8
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 208
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_73

    .line 211
    if-eqz p1, :cond_6b

    .line 215
    if-eqz p2, :cond_63

    .line 219
    monitor-enter p0

    .line 220
    :try_start_c
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    if-eqz v0, :cond_5a

    .line 221
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 222
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    if-eqz v0, :cond_5a

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 225
    .local v1, "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/MembershipKey;>;"
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/MembershipKey;

    .line 227
    .local v2, "key":Ljava/nio/channels/MembershipKey;
    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->networkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 228
    if-nez p3, :cond_3c

    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_48

    :cond_3c
    if-eqz p3, :cond_4e

    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 230
    :cond_48
    invoke-virtual {v2}, Ljava/nio/channels/MembershipKey;->drop()V

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 235
    .end local v2    # "key":Ljava/nio/channels/MembershipKey;
    :cond_4e
    goto :goto_1e

    .line 236
    :cond_4f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 237
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->memberships:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/MembershipKey;>;"
    .end local v1    # "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/MembershipKey;>;"
    :cond_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_c .. :try_end_5b} :catchall_60

    .line 242
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 241
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0

    .line 216
    :cond_63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "networkInterface"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_6b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "multicastAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 5
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 200
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected setClosed()Z
    .registers 2

    .line 117
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 310
    if-eqz p2, :cond_12

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 313
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 311
    :cond_12
    :goto_12
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
