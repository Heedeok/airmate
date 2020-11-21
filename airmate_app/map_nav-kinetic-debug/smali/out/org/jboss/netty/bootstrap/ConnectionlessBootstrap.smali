.class public Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;
.super Lorg/jboss/netty/bootstrap/Bootstrap;
.source "ConnectionlessBootstrap.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>()V

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;)V
    .registers 2
    .param p1, "channelFactory"    # Lorg/jboss/netty/channel/ChannelFactory;

    .line 132
    invoke-direct {p0, p1}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    .line 133
    return-void
.end method


# virtual methods
.method public bind()Lorg/jboss/netty/channel/Channel;
    .registers 4

    .line 157
    const-string v0, "localAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 158
    .local v0, "localAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_f

    .line 161
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    return-object v1

    .line 159
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "localAddress option is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;
    .registers 9
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 174
    if-eqz p1, :cond_6c

    .line 180
    :try_start_2
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_63

    .line 183
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    nop

    .line 185
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    .line 188
    .local v1, "ch":Lorg/jboss/netty/channel/Channel;
    const/4 v2, 0x0

    .line 190
    .local v2, "success":Z
    :try_start_14
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOptions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_5b

    .line 191
    const/4 v2, 0x1

    .line 192
    nop

    .line 208
    if-nez v2, :cond_26

    .line 194
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 196
    :cond_26
    nop

    .line 199
    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/Channel;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    .line 202
    .local v3, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 203
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 208
    return-object v1

    .line 204
    :cond_35
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 205
    new-instance v4, Lorg/jboss/netty/channel/ChannelException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to bind to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 193
    .end local v3    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :catchall_5b
    move-exception v3

    .line 194
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;
    if-nez v2, :cond_62

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 193
    :cond_62
    throw v3

    .line 181
    .end local v0    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    .end local v1    # "ch":Lorg/jboss/netty/channel/Channel;
    .end local v2    # "success":Z
    .end local v4    # "this":Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;
    :catch_63
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    const-string v2, "Failed to initialize a pipeline."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4

    .line 235
    const-string v0, "remoteAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 236
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_f

    .line 239
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 237
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "remoteAddress option is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 265
    if-eqz p1, :cond_f

    .line 268
    const-string v0, "localAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 269
    .local v0, "localAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 266
    .end local v0    # "localAddress":Ljava/net/SocketAddress;
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remotedAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 8
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 287
    if-eqz p1, :cond_42

    .line 293
    :try_start_2
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_39

    .line 296
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    nop

    .line 299
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    .line 300
    .local v1, "ch":Lorg/jboss/netty/channel/Channel;
    const/4 v2, 0x0

    .line 302
    .local v2, "success":Z
    :try_start_14
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOptions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_31

    .line 303
    const/4 v2, 0x1

    .line 304
    nop

    .line 316
    if-nez v2, :cond_26

    .line 306
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 308
    :cond_26
    nop

    .line 311
    if-eqz p2, :cond_2c

    .line 312
    invoke-interface {v1, p2}, Lorg/jboss/netty/channel/Channel;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 316
    :cond_2c
    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/Channel;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    return-object v3

    .line 305
    :catchall_31
    move-exception v3

    .line 306
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;
    if-nez v2, :cond_38

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    .line 305
    :cond_38
    throw v3

    .line 294
    .end local v0    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    .end local v1    # "ch":Lorg/jboss/netty/channel/Channel;
    .end local v2    # "success":Z
    .end local v4    # "this":Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;
    :catch_39
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    const-string v2, "Failed to initialize a pipeline."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
