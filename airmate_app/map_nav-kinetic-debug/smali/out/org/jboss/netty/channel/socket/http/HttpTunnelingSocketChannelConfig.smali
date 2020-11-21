.class public final Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;
.super Ljava/lang/Object;
.source "HttpTunnelingSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannelConfig;


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

.field private volatile enableSslSessionCreation:Z

.field private volatile enabledSslCipherSuites:[Ljava/lang/String;

.field private volatile enabledSslProtocols:[Ljava/lang/String;

.field private volatile serverName:Ljava/lang/String;

.field private volatile serverPath:Ljava/lang/String;

.field private volatile sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;)V
    .registers 3
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "/netty-tunnel"

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverPath:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enableSslSessionCreation:Z

    .line 73
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    .line 74
    return-void
.end method


# virtual methods
.method public getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .registers 2

    .line 296
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .registers 2

    .line 300
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public getEnabledSslCipherSuites()[Ljava/lang/String;
    .registers 3

    .line 134
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslCipherSuites:[Ljava/lang/String;

    .line 135
    .local v0, "suites":[Ljava/lang/String;
    if-nez v0, :cond_6

    .line 136
    const/4 v1, 0x0

    return-object v1

    .line 138
    :cond_6
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getEnabledSslProtocols()[Ljava/lang/String;
    .registers 3

    .line 162
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslProtocols:[Ljava/lang/String;

    .line 163
    .local v0, "protocols":[Ljava/lang/String;
    if-nez v0, :cond_6

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_6
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;
    .registers 2

    .line 304
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .registers 2

    .line 234
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .registers 2

    .line 238
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPath()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSoLinger()I
    .registers 2

    .line 242
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .registers 2

    .line 116
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getTrafficClass()I
    .registers 2

    .line 246
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public isEnableSslSessionCreation()Z
    .registers 2

    .line 190
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enableSslSessionCreation:Z

    return v0
.end method

.method public isKeepAlive()Z
    .registers 2

    .line 250
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->isKeepAlive()Z

    move-result v0

    return v0
.end method

.method public isReuseAddress()Z
    .registers 2

    .line 254
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->isReuseAddress()Z

    move-result v0

    return v0
.end method

.method public isTcpNoDelay()Z
    .registers 2

    .line 258
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->isTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V
    .registers 3
    .param p1, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 308
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V

    .line 309
    return-void
.end method

.method public setConnectTimeoutMillis(I)V
    .registers 3
    .param p1, "connectTimeoutMillis"    # I

    .line 312
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setConnectTimeoutMillis(I)V

    .line 313
    return-void
.end method

.method public setEnableSslSessionCreation(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 200
    iput-boolean p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enableSslSessionCreation:Z

    .line 201
    return-void
.end method

.method public setEnabledSslCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 149
    if-nez p1, :cond_6

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslCipherSuites:[Ljava/lang/String;

    goto :goto_e

    .line 152
    :cond_6
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslCipherSuites:[Ljava/lang/String;

    .line 154
    :goto_e
    return-void
.end method

.method public setEnabledSslProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 176
    if-nez p1, :cond_6

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslProtocols:[Ljava/lang/String;

    goto :goto_e

    .line 179
    :cond_6
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslProtocols:[Ljava/lang/String;

    .line 181
    :goto_e
    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 3
    .param p1, "keepAlive"    # Z

    .line 262
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setKeepAlive(Z)V

    .line 263
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 211
    return v1

    .line 214
    :cond_10
    const-string v0, "serverName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 215
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setServerName(Ljava/lang/String;)V

    goto :goto_6e

    .line 216
    :cond_20
    const-string v0, "serverPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 217
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setServerPath(Ljava/lang/String;)V

    goto :goto_6e

    .line 218
    :cond_30
    const-string v0, "sslContext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 219
    move-object v0, p2

    check-cast v0, Ljavax/net/ssl/SSLContext;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    goto :goto_6e

    .line 220
    :cond_3f
    const-string v0, "enabledSslCipherSuites"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 221
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setEnabledSslCipherSuites([Ljava/lang/String;)V

    goto :goto_6e

    .line 222
    :cond_4f
    const-string v0, "enabledSslProtocols"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 223
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setEnabledSslProtocols([Ljava/lang/String;)V

    goto :goto_6e

    .line 224
    :cond_5f
    const-string v0, "enableSslSessionCreation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 225
    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setEnableSslSessionCreation(Z)V

    .line 230
    :goto_6e
    return v1

    .line 227
    :cond_6f
    const/4 v0, 0x0

    return v0
.end method

.method public setOptions(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 205
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 206
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_8

    .line 207
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_22
    return-void
.end method

.method public setPerformancePreferences(III)V
    .registers 5
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 267
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setPerformancePreferences(III)V

    .line 268
    return-void
.end method

.method public setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V
    .registers 3
    .param p1, "pipelineFactory"    # Lorg/jboss/netty/channel/ChannelPipelineFactory;

    .line 316
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    .line 317
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 3
    .param p1, "receiveBufferSize"    # I

    .line 271
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setReceiveBufferSize(I)V

    .line 272
    return-void
.end method

.method public setReuseAddress(Z)V
    .registers 3
    .param p1, "reuseAddress"    # Z

    .line 275
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setReuseAddress(Z)V

    .line 276
    return-void
.end method

.method public setSendBufferSize(I)V
    .registers 3
    .param p1, "sendBufferSize"    # I

    .line 279
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setSendBufferSize(I)V

    .line 281
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "serverName"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setServerPath(Ljava/lang/String;)V
    .registers 4
    .param p1, "serverPath"    # Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_5

    .line 108
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverPath:Ljava/lang/String;

    .line 109
    return-void

    .line 106
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serverPath"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoLinger(I)V
    .registers 3
    .param p1, "soLinger"    # I

    .line 284
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setSoLinger(I)V

    .line 285
    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .registers 2
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .line 124
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 125
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .registers 3
    .param p1, "tcpNoDelay"    # Z

    .line 288
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setTcpNoDelay(Z)V

    .line 289
    return-void
.end method

.method public setTrafficClass(I)V
    .registers 3
    .param p1, "trafficClass"    # I

    .line 292
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setTrafficClass(I)V

    .line 293
    return-void
.end method
