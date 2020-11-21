.class public Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "HttpTunnelingServlet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ENDPOINT:Ljava/lang/String; = "endpoint"

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final serialVersionUID:J = 0x3b1e3dd3720a8e26L


# instance fields
.field private volatile channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

.field private volatile remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    nop

    .line 61
    const-class v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 223
    return-void
.end method

.method private static read(Ljava/io/PushbackInputStream;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "in"    # Ljava/io/PushbackInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    .line 195
    .local v0, "bytesToRead":I
    if-lez v0, :cond_d

    .line 196
    new-array v1, v0, [B

    .line 197
    .local v1, "buf":[B
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    goto :goto_2b

    .line 198
    .end local v1    # "buf":[B
    :cond_d
    const/4 v1, 0x0

    if-nez v0, :cond_3c

    .line 199
    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    .line 200
    .local v2, "b":I
    if-ltz v2, :cond_3b

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result v3

    if-gez v3, :cond_1d

    goto :goto_3b

    .line 203
    :cond_1d
    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 204
    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    .line 205
    new-array v1, v0, [B

    .line 206
    .restart local v1    # "buf":[B
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    .line 207
    .local v2, "readBytes":I
    nop

    .line 208
    :goto_2b
    nop

    .line 211
    nop

    .line 214
    array-length v3, v1

    if-ne v2, v3, :cond_35

    .line 215
    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    goto :goto_3a

    .line 218
    :cond_35
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 220
    .local v3, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_3a
    return-object v3

    .line 201
    .end local v1    # "buf":[B
    .end local v3    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v2, "b":I
    :cond_3b
    :goto_3b
    return-object v1

    .line 208
    .end local v2    # "b":I
    :cond_3c
    return-object v1
.end method


# virtual methods
.method protected createChannelFactory(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFactory;
    .registers 5
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    instance-of v0, p1, Lorg/jboss/netty/channel/local/LocalAddress;

    if-eqz v0, :cond_a

    .line 108
    new-instance v0, Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;

    invoke-direct {v0}, Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;-><init>()V

    return-object v0

    .line 110
    :cond_a
    new-instance v0, Ljavax/servlet/ServletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported remote address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .registers 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->destroyChannelFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 124
    goto :goto_16

    .line 120
    :catch_6
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 122
    sget-object v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to destroy a channel factory."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    :goto_16
    return-void
.end method

.method protected destroyChannelFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    .registers 2
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFactory;->releaseExternalResources()V

    .line 129
    return-void
.end method

.method public init()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 69
    .local v0, "config":Ljavax/servlet/ServletConfig;
    const-string v1, "endpoint"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "endpoint":Ljava/lang/String;
    if-eqz v1, :cond_37

    .line 75
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->parseEndpoint(Ljava/lang/String;)Ljava/net/SocketAddress;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->remoteAddress:Ljava/net/SocketAddress;
    :try_end_16
    .catch Ljavax/servlet/ServletException; {:try_start_c .. :try_end_16} :catch_35
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_2c

    .line 80
    nop

    .line 83
    :try_start_17
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->remoteAddress:Ljava/net/SocketAddress;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->createChannelFactory(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;
    :try_end_1f
    .catch Ljavax/servlet/ServletException; {:try_start_17 .. :try_end_1f} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_21

    .line 88
    nop

    .line 95
    return-void

    .line 86
    :catch_21
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljavax/servlet/ServletException;

    const-string v4, "Failed to create a channel factory."

    invoke-direct {v3, v4, v2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2a
    move-exception v2

    .line 85
    .local v2, "e":Ljavax/servlet/ServletException;
    throw v2

    .line 78
    .end local v2    # "e":Ljavax/servlet/ServletException;
    :catch_2c
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljavax/servlet/ServletException;

    const-string v4, "Failed to parse an endpoint."

    invoke-direct {v3, v4, v2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_35
    move-exception v2

    .line 77
    .local v2, "e":Ljavax/servlet/ServletException;
    throw v2

    .line 71
    .end local v2    # "e":Ljavax/servlet/ServletException;
    :cond_37
    new-instance v2, Ljavax/servlet/ServletException;

    const-string v3, "init-param \'endpoint\' must be specified."

    invoke-direct {v2, v3}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected parseEndpoint(Ljava/lang/String;)Ljava/net/SocketAddress;
    .registers 5
    .param p1, "endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    const-string v0, "local:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 99
    new-instance v0, Lorg/jboss/netty/channel/local/LocalAddress;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_17
    new-instance v0, Ljavax/servlet/ServletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 12
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "res"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const-string v0, "POST"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 135
    sget-object v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 136
    sget-object v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unallowed method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 138
    :cond_2e
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 139
    return-void

    .line 142
    :cond_34
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 143
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    .line 144
    .local v1, "out":Ljavax/servlet/ServletOutputStream;
    new-instance v2, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;

    invoke-direct {v2, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;-><init>(Ljavax/servlet/ServletOutputStream;)V

    .line 145
    .local v2, "handler":Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;
    const-string v3, "handler"

    invoke-interface {v0, v3, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 147
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-interface {v3, v0}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    .line 148
    .local v3, "channel":Lorg/jboss/netty/channel/Channel;
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->remoteAddress:Ljava/net/SocketAddress;

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/Channel;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    .line 149
    .local v4, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_88

    .line 150
    sget-object v5, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v5}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 151
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 152
    .local v5, "cause":Ljava/lang/Throwable;
    sget-object v6, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Endpoint unavailable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v5    # "cause":Ljava/lang/Throwable;
    :cond_82
    const/16 v5, 0x1f7

    invoke-interface {p2, v5}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 155
    return-void

    .line 158
    :cond_88
    const/4 v5, 0x0

    move-object v6, v5

    .line 160
    .local v6, "lastWriteFuture":Lorg/jboss/netty/channel/ChannelFuture;
    const/16 v7, 0xc8

    :try_start_8c
    invoke-interface {p2, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 161
    const-string v7, "Content-Type"

    const-string v8, "application/octet-stream"

    invoke-interface {p2, v7, v8}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v7, "Content-Transfer-Encoding"

    const-string v8, "binary"

    invoke-interface {p2, v7, v8}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljavax/servlet/ServletOutputStream;->flush()V

    .line 167
    new-instance v7, Ljava/io/PushbackInputStream;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 169
    .local v5, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v7, "in":Ljava/io/PushbackInputStream;
    :goto_a9
    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v8
    :try_end_ad
    .catchall {:try_start_8c .. :try_end_ad} :catchall_cf

    if-eqz v8, :cond_c0

    .line 172
    :try_start_af
    invoke-static {v7}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->read(Ljava/io/PushbackInputStream;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8
    :try_end_b3
    .catch Ljava/io/EOFException; {:try_start_af .. :try_end_b3} :catch_be
    .catchall {:try_start_af .. :try_end_b3} :catchall_cf

    .end local v5    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    move-object v5, v8

    .line 175
    .restart local v5    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    nop

    .line 176
    if-nez v5, :cond_b8

    .line 177
    goto :goto_c0

    .line 179
    :cond_b8
    :try_start_b8
    invoke-interface {v3, v5}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v8
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_cf

    move-object v6, v8

    .line 180
    .end local v5    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_a9

    .line 173
    .restart local v5    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catch_be
    move-exception v8

    .line 174
    .local v8, "e":Ljava/io/EOFException;
    nop

    .line 181
    .end local v5    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v7    # "in":Ljava/io/PushbackInputStream;
    .end local v8    # "e":Ljava/io/EOFException;
    :cond_c0
    :goto_c0
    nop

    .line 188
    move-object v5, p0

    .local v5, "this":Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;
    if-nez v6, :cond_c8

    .line 183
    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_cd

    .line 185
    :cond_c8
    sget-object v7, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v6, v7}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 187
    :goto_cd
    nop

    .line 188
    return-void

    .line 182
    .end local v5    # "this":Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;
    :catchall_cf
    move-exception v5

    .line 185
    move-object v7, p0

    .local v7, "this":Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;
    if-nez v6, :cond_d7

    .line 183
    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_dc

    .line 185
    :cond_d7
    sget-object v8, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v6, v8}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 182
    :goto_dc
    throw v5
.end method
