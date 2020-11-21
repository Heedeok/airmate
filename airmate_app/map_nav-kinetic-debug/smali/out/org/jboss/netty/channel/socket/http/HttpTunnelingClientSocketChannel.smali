.class Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "HttpTunnelingClientSocketChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$ServletChannelHandler;
    }
.end annotation


# instance fields
.field final config:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

.field private final handler:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$ServletChannelHandler;

.field final interestOpsLock:Ljava/lang/Object;

.field final realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

.field volatile requestHeaderWritten:Z


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;)V
    .registers 8
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "sink"    # Lorg/jboss/netty/channel/ChannelSink;
    .param p4, "clientSocketChannelFactory"    # Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->interestOpsLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$ServletChannelHandler;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$ServletChannelHandler;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->handler:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$ServletChannelHandler;

    .line 79
    new-instance v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->config:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    .line 80
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;-><init>()V

    .line 81
    .local v0, "channelPipeline":Lorg/jboss/netty/channel/DefaultChannelPipeline;
    const-string v1, "decoder"

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

    invoke-direct {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 82
    const-string v1, "encoder"

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;

    invoke-direct {v2}, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 83
    const-string v1, "handler"

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->handler:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$ServletChannelHandler;

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 84
    invoke-interface {p4, v0}, Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/SocketChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    .line 86
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 87
    return-void
.end method

.method private writeLastChunk()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3

    .line 251
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->requestHeaderWritten:Z

    if-nez v0, :cond_e

    .line 252
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 254
    :cond_e
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/socket/SocketChannel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bindReal(Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 5
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 134
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannel;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$1;

    invoke-direct {v1, p0, p2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$1;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 143
    return-void
.end method

.method closeReal(Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 4
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 303
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->writeLastChunk()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$7;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$7;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 324
    return-void
.end method

.method connectReal(Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 6
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 146
    move-object v0, p0

    .line 147
    .local v0, "virtualChannel":Lorg/jboss/netty/channel/socket/SocketChannel;
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/socket/SocketChannel;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/socket/SocketChannel;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 220
    return-void
.end method

.method disconnectReal(Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 4
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 271
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->writeLastChunk()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$5;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$5;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 284
    return-void
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;
    .registers 2

    .line 90
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->config:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    return-object v0
.end method

.method public getInterestOps()I
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getInterestOps()I

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->isBound()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 106
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .registers 2

    .line 116
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->isWritable()Z

    move-result v0

    return v0
.end method

.method protected setClosed()Z
    .registers 2

    .line 121
    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method setInterestOpsReal(ILorg/jboss/netty/channel/ChannelFuture;)V
    .registers 5
    .param p1, "interestOps"    # I
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 259
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannel;->setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$4;

    invoke-direct {v1, p0, p2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$4;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 268
    return-void
.end method

.method unbindReal(Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 4
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 287
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->writeLastChunk()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 300
    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 126
    if-eqz p2, :cond_12

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 129
    :cond_d
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 127
    :cond_12
    :goto_12
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/jboss/netty/channel/AbstractChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method writeReal(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 6
    .param p1, "a"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 223
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->requestHeaderWritten:Z

    if-eqz v0, :cond_27

    .line 227
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 230
    .local v0, "size":I
    if-nez v0, :cond_13

    .line 231
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    sget-object v2, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/socket/SocketChannel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    goto :goto_1e

    .line 233
    :cond_13
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v2, p1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/socket/SocketChannel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 236
    .local v1, "f":Lorg/jboss/netty/channel/ChannelFuture;
    :goto_1e
    new-instance v2, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$3;

    invoke-direct {v2, p0, p2, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$3;-><init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 248
    return-void

    .line 224
    .end local v0    # "size":I
    .end local v1    # "f":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_27
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
.end method
