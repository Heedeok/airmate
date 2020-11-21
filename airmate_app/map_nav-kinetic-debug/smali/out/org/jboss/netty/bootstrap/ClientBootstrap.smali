.class public Lorg/jboss/netty/bootstrap/ClientBootstrap;
.super Lorg/jboss/netty/bootstrap/Bootstrap;
.source "ClientBootstrap.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>()V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;)V
    .registers 2
    .param p1, "channelFactory"    # Lorg/jboss/netty/channel/ChannelFactory;

    .line 123
    invoke-direct {p0, p1}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    .line 124
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 7
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 272
    if-eqz p1, :cond_3d

    .line 278
    :try_start_2
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_34

    .line 281
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    nop

    .line 284
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    .line 285
    .local v1, "ch":Lorg/jboss/netty/channel/Channel;
    const/4 v2, 0x0

    .line 287
    .local v2, "success":Z
    :try_start_14
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->getOptions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2c

    .line 288
    const/4 v2, 0x1

    .line 289
    nop

    .line 296
    if-nez v2, :cond_26

    .line 291
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 293
    :cond_26
    nop

    .line 296
    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/Channel;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    return-object v3

    .line 290
    :catchall_2c
    move-exception v3

    .line 291
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/bootstrap/ClientBootstrap;
    if-nez v2, :cond_33

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 290
    :cond_33
    throw v3

    .line 279
    .end local v0    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    .end local v1    # "ch":Lorg/jboss/netty/channel/Channel;
    .end local v2    # "success":Z
    .end local v4    # "this":Lorg/jboss/netty/bootstrap/ClientBootstrap;
    :catch_34
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    const-string v2, "Failed to initialize a pipeline."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4

    .line 150
    const-string v0, "remoteAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 151
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_f

    .line 154
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 152
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "remoteAddress option is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 179
    if-eqz p1, :cond_f

    .line 182
    const-string v0, "localAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 183
    .local v0, "localAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 180
    .end local v0    # "localAddress":Ljava/net/SocketAddress;
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 8
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 201
    if-eqz p1, :cond_42

    .line 207
    :try_start_2
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_39

    .line 210
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    nop

    .line 213
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    .line 214
    .local v1, "ch":Lorg/jboss/netty/channel/Channel;
    const/4 v2, 0x0

    .line 216
    .local v2, "success":Z
    :try_start_14
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->getOptions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_31

    .line 217
    const/4 v2, 0x1

    .line 218
    nop

    .line 230
    if-nez v2, :cond_26

    .line 220
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 222
    :cond_26
    nop

    .line 225
    if-eqz p2, :cond_2c

    .line 226
    invoke-interface {v1, p2}, Lorg/jboss/netty/channel/Channel;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 230
    :cond_2c
    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/Channel;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    return-object v3

    .line 219
    :catchall_31
    move-exception v3

    .line 220
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/bootstrap/ClientBootstrap;
    if-nez v2, :cond_38

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 219
    :cond_38
    throw v3

    .line 208
    .end local v0    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    .end local v1    # "ch":Lorg/jboss/netty/channel/Channel;
    .end local v2    # "success":Z
    .end local v4    # "this":Lorg/jboss/netty/bootstrap/ClientBootstrap;
    :catch_39
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    const-string v2, "Failed to initialize a pipeline."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
