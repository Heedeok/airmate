.class public Lorg/jboss/netty/bootstrap/ServerBootstrap;
.super Lorg/jboss/netty/bootstrap/Bootstrap;
.source "ServerBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;
    }
.end annotation


# instance fields
.field private volatile parentHandler:Lorg/jboss/netty/channel/ChannelHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>()V

    .line 169
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;)V
    .registers 2
    .param p1, "channelFactory"    # Lorg/jboss/netty/channel/ChannelFactory;

    .line 175
    invoke-direct {p0, p1}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    .line 176
    return-void
.end method


# virtual methods
.method public bind()Lorg/jboss/netty/channel/Channel;
    .registers 4

    .line 244
    const-string v0, "localAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 245
    .local v0, "localAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_f

    .line 248
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    return-object v1

    .line 246
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "localAddress option is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;
    .registers 12
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 261
    if-eqz p1, :cond_74

    .line 265
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 268
    .local v0, "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lorg/jboss/netty/channel/ChannelFuture;>;"
    new-instance v1, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;

    invoke-direct {v1, p0, p1, v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;-><init>(Lorg/jboss/netty/bootstrap/ServerBootstrap;Ljava/net/SocketAddress;Ljava/util/concurrent/BlockingQueue;)V

    .line 269
    .local v1, "binder":Lorg/jboss/netty/channel/ChannelHandler;
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getParentHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    .line 271
    .local v2, "parentHandler":Lorg/jboss/netty/channel/ChannelHandler;
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v3

    .line 272
    .local v3, "bossPipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    const-string v4, "binder"

    invoke-interface {v3, v4, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 273
    if-eqz v2, :cond_20

    .line 274
    const-string v4, "userHandler"

    invoke-interface {v3, v4, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 277
    :cond_20
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    .line 280
    .local v4, "channel":Lorg/jboss/netty/channel/Channel;
    const/4 v5, 0x0

    .line 281
    .local v5, "future":Lorg/jboss/netty/channel/ChannelFuture;
    const/4 v6, 0x0

    .line 284
    .local v6, "interrupted":Z
    :cond_2a
    const-wide/32 v7, 0x7fffffff

    :try_start_2d
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v7, v8, v9}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_35} :catch_37

    move-object v5, v7

    .line 287
    goto :goto_39

    .line 285
    :catch_37
    move-exception v7

    .line 286
    .local v7, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x1

    .line 288
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_39
    if-eqz v5, :cond_2a

    .line 290
    if-eqz v6, :cond_44

    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 295
    :cond_44
    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 296
    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 301
    return-object v4

    .line 297
    :cond_4e
    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 298
    new-instance v7, Lorg/jboss/netty/channel/ChannelException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to bind to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 262
    .end local v0    # "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lorg/jboss/netty/channel/ChannelFuture;>;"
    .end local v1    # "binder":Lorg/jboss/netty/channel/ChannelHandler;
    .end local v2    # "parentHandler":Lorg/jboss/netty/channel/ChannelHandler;
    .end local v3    # "bossPipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    .end local v4    # "channel":Lorg/jboss/netty/channel/Channel;
    .end local v5    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v6    # "interrupted":Z
    :cond_74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 2

    .line 207
    iget-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap;->parentHandler:Lorg/jboss/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public setFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    .registers 5
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;

    .line 187
    if-eqz p1, :cond_33

    .line 190
    instance-of v0, p1, Lorg/jboss/netty/channel/ServerChannelFactory;

    if-eqz v0, :cond_a

    .line 196
    invoke-super {p0, p1}, Lorg/jboss/netty/bootstrap/Bootstrap;->setFactory(Lorg/jboss/netty/channel/ChannelFactory;)V

    .line 197
    return-void

    .line 191
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/jboss/netty/channel/ServerChannelFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParentHandler(Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 2
    .param p1, "parentHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 219
    iput-object p1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap;->parentHandler:Lorg/jboss/netty/channel/ChannelHandler;

    .line 220
    return-void
.end method
