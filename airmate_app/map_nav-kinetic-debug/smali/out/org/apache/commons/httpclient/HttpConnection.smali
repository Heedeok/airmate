.class public Lorg/apache/commons/httpclient/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# static fields
.field private static final CRLF:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$HttpConnection:Ljava/lang/Class;


# instance fields
.field private hostName:Ljava/lang/String;

.field private httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private inputStream:Ljava/io/InputStream;

.field protected isOpen:Z

.field private lastResponseInputStream:Ljava/io/InputStream;

.field private localAddress:Ljava/net/InetAddress;

.field private locked:Z

.field private outputStream:Ljava/io/OutputStream;

.field private params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

.field private portNumber:I

.field private protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

.field private proxyHostName:Ljava/lang/String;

.field private proxyPortNumber:I

.field private socket:Ljava/net/Socket;

.field private tunnelEstablished:Z

.field private usingSecureSocket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1318
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lorg/apache/commons/httpclient/HttpConnection;->CRLF:[B

    .line 1321
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->class$org$apache$commons$httpclient$HttpConnection:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string v0, "org.apache.commons.httpclient.HttpConnection"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpConnection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConnection;->class$org$apache$commons$httpclient$HttpConnection:Ljava/lang/Class;

    goto :goto_17

    :cond_15
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->class$org$apache$commons$httpclient$HttpConnection:Ljava/lang/Class;

    :goto_17
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :array_1e
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 104
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 13
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .line 146
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v7

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 8
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    .line 1329
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    .line 1332
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    .line 1335
    iput v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    .line 1338
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 1341
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 1344
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 1347
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    .line 1350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    .line 1356
    new-instance v1, Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    .line 1360
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    .line 1363
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    .line 1366
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    .line 205
    if-eqz p3, :cond_40

    .line 208
    if-eqz p5, :cond_38

    .line 212
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    .line 213
    iput p2, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    .line 214
    iput-object p3, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    .line 215
    invoke-virtual {p5, p4}, Lorg/apache/commons/httpclient/protocol/Protocol;->resolvePort(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    .line 216
    iput-object p5, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 217
    return-void

    .line 209
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 13
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "virtualHost"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 184
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 11
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 116
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 12
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "virtualHost"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 129
    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 8
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .line 155
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getPort()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 160
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->localAddress:Ljava/net/InetAddress;

    .line 161
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 1321
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected assertNotOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1265
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-nez v0, :cond_5

    .line 1268
    return-void

    .line 1266
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected assertOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1276
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-eqz v0, :cond_5

    .line 1279
    return-void

    .line 1277
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 3

    .line 1148
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.close()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1149
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->closeSocketAndStreams()V

    .line 1150
    return-void
.end method

.method public closeIfStale()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isStale()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 432
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection is stale, closing..."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 434
    const/4 v0, 0x1

    return v0

    .line 436
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method protected closeSocketAndStreams()V
    .registers 7

    .line 1215
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.closeSockedAndStreams()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    .line 1220
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    .line 1222
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_21

    .line 1223
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 1224
    .local v2, "temp":Ljava/io/OutputStream;
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 1226
    :try_start_15
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    .line 1230
    goto :goto_21

    .line 1227
    :catch_19
    move-exception v3

    .line 1228
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Exception caught when closing output"

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1233
    .end local v2    # "temp":Ljava/io/OutputStream;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_21
    :goto_21
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_35

    .line 1234
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 1235
    .local v2, "temp":Ljava/io/InputStream;
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 1237
    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 1241
    goto :goto_35

    .line 1238
    :catch_2d
    move-exception v3

    .line 1239
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Exception caught when closing input"

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1244
    .end local v2    # "temp":Ljava/io/InputStream;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_35
    :goto_35
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_49

    .line 1245
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 1246
    .local v2, "temp":Ljava/net/Socket;
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 1248
    :try_start_3d
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 1252
    goto :goto_49

    .line 1249
    :catch_41
    move-exception v1

    .line 1250
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Exception caught when closing socket"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1255
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "temp":Ljava/net/Socket;
    :cond_49
    :goto_49
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    .line 1256
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    .line 1257
    return-void
.end method

.method public flushRequestOutputStream()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.flushRequestOutputStream()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 827
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 828
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 829
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;
    .registers 2

    .line 1157
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    return-object v0
.end method

.method public getLastResponseInputStream()Ljava/io/InputStream;
    .registers 2

    .line 575
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 397
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;
    .registers 2

    .line 588
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 293
    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    if-gez v0, :cond_10

    .line 294
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x1bb

    goto :goto_f

    :cond_d
    const/16 v0, 0x50

    :goto_f
    return v0

    .line 296
    :cond_10
    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    return v0
.end method

.method public getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    .registers 2

    .line 369
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .registers 2

    .line 339
    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    return v0
.end method

.method public getRequestOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 840
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.getRequestOutputStream()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 841
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 842
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 843
    .local v0, "out":Ljava/io/OutputStream;
    sget-object v1, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 844
    new-instance v1, Lorg/apache/commons/httpclient/WireLogOutputStream;

    sget-object v2, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/httpclient/WireLogOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/httpclient/Wire;)V

    move-object v0, v1

    .line 846
    :cond_1c
    return-object v0
.end method

.method public getResponseInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 857
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.getResponseInputStream()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 858
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 859
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getSendBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1292
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_6

    .line 1293
    const/4 v0, -0x1

    return v0

    .line 1295
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .registers 2

    .line 229
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getVirtualHost()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method protected isLocked()Z
    .registers 2

    .line 1194
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 417
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    return v0
.end method

.method public isProxied()Z
    .registers 2

    .line 544
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isResponseAvailable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 874
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.isResponseAvailable()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 875
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 876
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v1, 0x1

    nop

    :cond_16
    return v1

    .line 878
    :cond_17
    return v1
.end method

.method public isResponseAvailable(I)Z
    .registers 7
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.isResponseAvailable(int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 895
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, "result":Z
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_16

    .line 898
    const/4 v0, 0x1

    goto/16 :goto_8d

    .line 901
    :cond_16
    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 902
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 903
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 904
    .local v1, "byteRead":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    .line 905
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 906
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Input data available"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 907
    const/4 v0, 0x1

    goto :goto_3f

    .line 909
    :cond_38
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Input data not available"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/io/InterruptedIOException; {:try_start_16 .. :try_end_3f} :catch_4d
    .catchall {:try_start_16 .. :try_end_3f} :catchall_4b

    .line 920
    .end local v1    # "byteRead":I
    :goto_3f
    :try_start_3f
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4a} :catch_83

    goto :goto_82

    .line 919
    :catchall_4b
    move-exception v1

    goto :goto_8f

    .line 911
    :catch_4d
    move-exception v1

    .line 912
    .local v1, "e":Ljava/io/InterruptedIOException;
    :try_start_4e
    invoke-static {v1}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 915
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 916
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Input data not available after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_77
    .catchall {:try_start_4e .. :try_end_77} :catchall_4b

    .line 920
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :cond_77
    :try_start_77
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_82} :catch_83

    .line 926
    :goto_82
    goto :goto_8d

    .line 921
    :catch_83
    move-exception v1

    .line 922
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "An error ocurred while resetting soTimeout, we will assume that no response is available."

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 925
    const/4 v0, 0x0

    .line 927
    .end local v1    # "ioe":Ljava/io/IOException;
    nop

    .line 929
    :goto_8d
    return v0

    .line 913
    .local v1, "e":Ljava/io/InterruptedIOException;
    :cond_8e
    :try_start_8e
    throw v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_4b

    .line 919
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :goto_8f
    nop

    .line 920
    :try_start_90
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9b} :catch_9c

    .line 926
    goto :goto_a5

    .line 921
    :catch_9c
    move-exception v2

    .line 922
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "An error ocurred while resetting soTimeout, we will assume that no response is available."

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 925
    const/4 v0, 0x0

    .line 926
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_a5
    throw v1
.end method

.method public isSecure()Z
    .registers 2

    .line 361
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->isSecure()Z

    move-result v0

    return v0
.end method

.method protected isStale()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    const/4 v0, 0x1

    .line 497
    .local v0, "isStale":Z
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-eqz v1, :cond_55

    .line 500
    const/4 v0, 0x0

    .line 502
    :try_start_6
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_c
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_c} :catch_4c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_42

    if-gtz v1, :cond_53

    .line 504
    :try_start_e
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 505
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 506
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 507
    .local v1, "byteRead":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 510
    const/4 v0, 0x1

    goto :goto_29

    .line 512
    :cond_24
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_35

    .line 515
    .end local v1    # "byteRead":I
    :goto_29
    :try_start_29
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 516
    goto :goto_53

    .line 515
    :catchall_35
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v1
    :try_end_42
    .catch Ljava/io/InterruptedIOException; {:try_start_29 .. :try_end_42} :catch_4c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_42} :catch_42

    .line 523
    :catch_42
    move-exception v1

    .line 525
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "An error occurred while reading from the socket, is appears to be stale"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 529
    const/4 v0, 0x1

    goto :goto_55

    .line 518
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4c
    move-exception v1

    .line 519
    .local v1, "e":Ljava/io/InterruptedIOException;
    invoke-static {v1}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 530
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :cond_53
    :goto_53
    goto :goto_55

    .line 520
    .restart local v1    # "e":Ljava/io/InterruptedIOException;
    :cond_54
    throw v1

    .line 533
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :cond_55
    :goto_55
    return v0
.end method

.method public isStaleCheckingEnabled()Z
    .registers 2

    .line 450
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->isStaleCheckingEnabled()Z

    move-result v0

    return v0
.end method

.method public isTransparent()Z
    .registers 2

    .line 816
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public open()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.open()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    .line 688
    .local v0, "host":Ljava/lang/String;
    :goto_10
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    if-nez v1, :cond_17

    iget v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    goto :goto_19

    :cond_17
    iget v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    :goto_19
    move v7, v1

    .line 689
    .local v7, "port":I
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 691
    sget-object v1, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 692
    sget-object v1, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Open connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 696
    :cond_43
    :try_start_43
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_89

    .line 697
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v1

    if-nez v1, :cond_57

    const/4 v1, 0x1

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, "socketFactory":Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 702
    const-string v2, "http"

    invoke-static {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    .line 703
    .local v2, "defaultprotocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    move-result-object v3

    move-object v1, v3

    .line 704
    .end local v2    # "defaultprotocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    goto :goto_7a

    .line 705
    :cond_73
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    move-result-object v2

    move-object v1, v2

    .line 707
    .end local v1    # "socketFactory":Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    .local v10, "socketFactory":Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    :goto_7a
    move-object v10, v1

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->localAddress:Ljava/net/InetAddress;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-object v1, v10

    move-object v2, v0

    move v3, v7

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/commons/httpclient/params/HttpConnectionParams;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 721
    .end local v10    # "socketFactory":Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    :cond_89
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getTcpNoDelay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 722
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 724
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getLinger()I

    move-result v1

    .line 725
    .local v1, "linger":I
    if-ltz v1, :cond_b0

    .line 726
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-lez v1, :cond_ad

    const/4 v8, 0x1

    nop

    :cond_ad
    invoke-virtual {v2, v8, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 729
    :cond_b0
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSendBufferSize()I

    move-result v2

    .line 730
    .local v2, "sndBufSize":I
    if-ltz v2, :cond_bd

    .line 731
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 733
    :cond_bd
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getReceiveBufferSize()I

    move-result v3

    .line 734
    .local v3, "rcvBufSize":I
    if-ltz v3, :cond_ca

    .line 735
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 737
    :cond_ca
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v4

    .line 738
    .local v4, "outbuffersize":I
    const/16 v5, 0x800

    if-gt v4, v5, :cond_d6

    if-gtz v4, :cond_d8

    .line 739
    :cond_d6
    const/16 v4, 0x800

    .line 741
    :cond_d8
    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v6

    .line 742
    .local v6, "inbuffersize":I
    if-gt v6, v5, :cond_e2

    if-gtz v6, :cond_e4

    .line 743
    :cond_e2
    const/16 v6, 0x800

    .line 745
    :cond_e4
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 746
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v5, v8, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 747
    iput-boolean v9, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_100} :catch_102

    .line 753
    .end local v1    # "linger":I
    .end local v2    # "sndBufSize":I
    .end local v3    # "rcvBufSize":I
    .end local v4    # "outbuffersize":I
    .end local v6    # "inbuffersize":I
    nop

    .line 754
    return-void

    .line 748
    :catch_102
    move-exception v1

    .line 751
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->closeSocketAndStreams()V

    .line 752
    throw v1
.end method

.method public print(Ljava/lang/String;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1016
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.print(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1017
    const-string v0, "ISO-8859-1"

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->write([B)V

    .line 1018
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1032
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.print(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1033
    invoke-static {p1, p2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->write([B)V

    .line 1034
    return-void
.end method

.method public printLine()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1077
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.printLine()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine()V

    .line 1079
    return-void
.end method

.method public printLine(Ljava/lang/String;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1048
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.printLine(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1049
    const-string v0, "ISO-8859-1"

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine([B)V

    .line 1050
    return-void
.end method

.method public printLine(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1065
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.printLine(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1066
    invoke-static {p1, p2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine([B)V

    .line 1067
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1093
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.readLine()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 1096
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1113
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.readLine()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1115
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 1116
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/HttpParser;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnection()V
    .registers 3

    .line 1174
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.releaseConnection()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1175
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    if-eqz v0, :cond_13

    .line 1176
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection is locked.  Call to releaseConnection() ignored."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2b

    .line 1177
    :cond_13
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-eqz v0, :cond_24

    .line 1178
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Releasing connection back to connection manager."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1179
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_2b

    .line 1181
    :cond_24
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "HttpConnectionManager is null.  Connection cannot be released."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1183
    :goto_2b
    return-void
.end method

.method public setConnectionTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 673
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setConnectionTimeout(I)V

    .line 674
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 248
    if-eqz p1, :cond_8

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 252
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    .line 253
    return-void

    .line 249
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 2
    .param p1, "httpConnectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 1165
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 1166
    return-void
.end method

.method public setLastResponseInputStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inStream"    # Ljava/io/InputStream;

    .line 558
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    .line 559
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "localAddress"    # Ljava/net/InetAddress;

    .line 407
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 408
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->localAddress:Ljava/net/InetAddress;

    .line 409
    return-void
.end method

.method protected setLocked(Z)V
    .registers 2
    .param p1, "locked"    # Z

    .line 1207
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    .line 1208
    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpConnectionParams;)V
    .registers 4
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    .line 599
    if-eqz p1, :cond_5

    .line 602
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    .line 603
    return-void

    .line 600
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPort(I)V
    .registers 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 309
    iput p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    .line 310
    return-void
.end method

.method public setProtocol(Lorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 4
    .param p1, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 380
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 382
    if-eqz p1, :cond_8

    .line 386
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 388
    return-void

    .line 383
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .registers 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 330
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setProxyPort(I)V
    .registers 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 351
    iput p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    .line 352
    return-void
.end method

.method public setSendBufferSize(I)V
    .registers 3
    .param p1, "sendBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1312
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setSendBufferSize(I)V

    .line 1313
    return-void
.end method

.method public setSoTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setSoTimeout(I)V

    .line 622
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_e

    .line 623
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 625
    :cond_e
    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 641
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 642
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 643
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 645
    :cond_c
    return-void
.end method

.method public setStaleCheckingEnabled(Z)V
    .registers 3
    .param p1, "staleCheckEnabled"    # Z

    .line 470
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setStaleCheckingEnabled(Z)V

    .line 471
    return-void
.end method

.method public setVirtualHost(Ljava/lang/String;)V
    .registers 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 282
    return-void
.end method

.method public shutdownOutput()V
    .registers 5

    .line 1126
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.shutdownOutput()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1132
    const/4 v0, 0x0

    :try_start_8
    new-array v1, v0, [Ljava/lang/Class;

    .line 1133
    .local v1, "paramsClasses":[Ljava/lang/Class;
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "shutdownOutput"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1135
    .local v2, "shutdownOutput":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    .line 1136
    .local v0, "params":[Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 1140
    .end local v0    # "params":[Ljava/lang/Object;
    .end local v1    # "paramsClasses":[Ljava/lang/Class;
    .end local v2    # "shutdownOutput":Ljava/lang/reflect/Method;
    goto :goto_26

    .line 1137
    :catch_1e
    move-exception v0

    .line 1138
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unexpected Exception caught"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1142
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_26
    return-void
.end method

.method public tunnelCreated()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.tunnelCreated()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 769
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 775
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    if-nez v0, :cond_a5

    .line 779
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 780
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Secure tunnel to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 783
    :cond_41
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;

    .line 786
    .local v0, "socketFactory":Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    iget v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 787
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSendBufferSize()I

    move-result v1

    .line 788
    .local v1, "sndBufSize":I
    if-ltz v1, :cond_63

    .line 789
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 791
    :cond_63
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getReceiveBufferSize()I

    move-result v2

    .line 792
    .local v2, "rcvBufSize":I
    if-ltz v2, :cond_70

    .line 793
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 795
    :cond_70
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v3

    .line 796
    .local v3, "outbuffersize":I
    const/16 v5, 0x800

    if-le v3, v5, :cond_7c

    .line 797
    const/16 v3, 0x800

    .line 799
    :cond_7c
    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v6

    .line 800
    .local v6, "inbuffersize":I
    if-le v6, v5, :cond_86

    .line 801
    const/16 v6, 0x800

    .line 803
    :cond_86
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 804
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 805
    iput-boolean v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    .line 806
    iput-boolean v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    .line 807
    return-void

    .line 776
    .end local v0    # "socketFactory":Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;
    .end local v1    # "sndBufSize":I
    .end local v2    # "rcvBufSize":I
    .end local v3    # "outbuffersize":I
    .end local v6    # "inbuffersize":I
    :cond_a5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already using a secure socket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_ad
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection must be secure and proxied to use this feature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 942
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.write(byte[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 943
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/httpclient/HttpConnection;->write([BII)V

    .line 944
    return-void
.end method

.method public write([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 963
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.write(byte[], int, int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 965
    if-ltz p2, :cond_29

    .line 968
    if-ltz p3, :cond_21

    .line 971
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_19

    .line 974
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 975
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 976
    return-void

    .line 972
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given offset and length exceed the array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array offset may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeLine()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1001
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.writeLine()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1002
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->CRLF:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->write([B)V

    .line 1003
    return-void
.end method

.method public writeLine([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 988
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.writeLine(byte[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 989
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->write([B)V

    .line 990
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine()V

    .line 991
    return-void
.end method
