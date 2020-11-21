.class public Lorg/apache/xmlrpc/webserver/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;
.implements Lorg/apache/xmlrpc/common/ServerStreamConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/webserver/Connection$BadRequestException;,
        Lorg/apache/xmlrpc/webserver/Connection$BadEncodingException;,
        Lorg/apache/xmlrpc/webserver/Connection$RequestException;
    }
.end annotation


# static fields
.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final clength:[B

.field private static final conclose:[B

.field private static final conkeep:[B

.field private static final ctype:[B

.field private static final doubleNewline:[B

.field private static final newline:[B

.field private static final ok:[B

.field private static final serverName:[B

.field private static final wwwAuthenticate:[B


# instance fields
.field private buffer:[B

.field private firstByte:Z

.field private headers:Ljava/util/Map;

.field private final input:Ljava/io/InputStream;

.field private final output:Ljava/io/OutputStream;

.field private requestData:Lorg/apache/xmlrpc/webserver/RequestData;

.field private final server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

.field private shuttingDown:Z

.field private final socket:Ljava/net/Socket;

.field private final webServer:Lorg/apache/xmlrpc/webserver/WebServer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-string v0, "Content-Type: text/xml\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->ctype:[B

    .line 52
    const-string v0, "Content-Length: "

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->clength:[B

    .line 53
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    .line 54
    const-string v0, "\r\n\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->doubleNewline:[B

    .line 55
    const-string v0, "Connection: Keep-Alive\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->conkeep:[B

    .line 56
    const-string v0, "Connection: close\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->conclose:[B

    .line 57
    const-string v0, " 200 OK\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->ok:[B

    .line 58
    const-string v0, "Server: Apache XML-RPC 1.0\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    .line 59
    const-string v0, "WWW-Authenticate: Basic realm=XML-RPC\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->wwwAuthenticate:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)V
    .registers 6
    .param p1, "pWebServer"    # Lorg/apache/xmlrpc/webserver/WebServer;
    .param p2, "pServer"    # Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
    .param p3, "pSocket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->webServer:Lorg/apache/xmlrpc/webserver/WebServer;

    .line 119
    iput-object p2, p0, Lorg/apache/xmlrpc/webserver/Connection;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    .line 120
    iput-object p3, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    .line 121
    new-instance v0, Lorg/apache/xmlrpc/webserver/Connection$1;

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/xmlrpc/webserver/Connection$1;-><init>(Lorg/apache/xmlrpc/webserver/Connection;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    .line 129
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    .line 130
    return-void
.end method

.method private getRequestConfig()Lorg/apache/xmlrpc/webserver/RequestData;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/webserver/RequestData;-><init>(Lorg/apache/xmlrpc/webserver/Connection;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    .line 139
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 140
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->firstByte:Z

    .line 143
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;

    .line 144
    .local v1, "serverConfig":Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->getBasicEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setBasicEncoding(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isContentLengthOptional()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setContentLengthOptional(Z)V

    .line 146
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isEnabledForExtensions()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setEnabledForExtensions(Z)V

    .line 147
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isEnabledForExceptions()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setEnabledForExceptions(Z)V

    .line 150
    invoke-direct {p0}, Lorg/apache/xmlrpc/webserver/Connection;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_4b

    iget-boolean v4, p0, Lorg/apache/xmlrpc/webserver/Connection;->firstByte:Z

    if-eqz v4, :cond_4b

    .line 152
    return-object v3

    .line 155
    :cond_4b
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_60

    .line 156
    invoke-direct {p0}, Lorg/apache/xmlrpc/webserver/Connection;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_60

    .line 158
    :cond_5f
    return-object v3

    .line 163
    :cond_60
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "method":Ljava/lang/String;
    const-string v5, "POST"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 168
    iget-object v5, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v5, v4}, Lorg/apache/xmlrpc/webserver/RequestData;->setMethod(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 170
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "httpVersion":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v6, v5}, Lorg/apache/xmlrpc/webserver/RequestData;->setHttpVersion(Ljava/lang/String;)V

    .line 172
    iget-object v6, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isKeepAliveEnabled()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_95

    const-string v7, "HTTP/1.1"

    .line 173
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 172
    const/4 v7, 0x1

    goto :goto_97

    .line 173
    :cond_95
    nop

    .line 172
    const/4 v7, 0x0

    :goto_97
    invoke-virtual {v6, v7}, Lorg/apache/xmlrpc/webserver/RequestData;->setKeepAlive(Z)V

    .line 175
    :cond_9a
    invoke-direct {p0}, Lorg/apache/xmlrpc/webserver/Connection;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_11e

    .line 177
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "lineLower":Ljava/lang/String;
    const-string v7, "content-length:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 179
    const-string v7, "content-length:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "cLength":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/apache/xmlrpc/webserver/RequestData;->setContentLength(I)V

    .line 181
    .end local v7    # "cLength":Ljava/lang/String;
    goto :goto_11e

    :cond_c4
    const-string v7, "connection:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 182
    iget-object v7, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isKeepAliveEnabled()Z

    move-result v9

    if-eqz v9, :cond_df

    const-string v9, "keep-alive"

    .line 183
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_df

    .line 182
    const/4 v9, 0x1

    goto :goto_e1

    .line 183
    :cond_df
    nop

    .line 182
    const/4 v9, 0x0

    :goto_e1
    invoke-virtual {v7, v9}, Lorg/apache/xmlrpc/webserver/RequestData;->setKeepAlive(Z)V

    goto :goto_11e

    .line 184
    :cond_e5
    const-string v7, "authorization:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 185
    const-string v7, "authorization:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "credentials":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-static {v9, v7}, Lorg/apache/xmlrpc/util/HttpUtil;->parseAuthorization(Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;Ljava/lang/String;)V

    .line 187
    .end local v7    # "credentials":Ljava/lang/String;
    goto :goto_11e

    :cond_fd
    const-string v7, "transfer-encoding:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11e

    .line 188
    const-string v7, "transfer-encoding:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "transferEncoding":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/xmlrpc/util/HttpUtil;->getNonIdentityTransferEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "nonIdentityEncoding":Ljava/lang/String;
    if-nez v9, :cond_116

    .end local v6    # "lineLower":Ljava/lang/String;
    .end local v7    # "transferEncoding":Ljava/lang/String;
    .end local v9    # "nonIdentityEncoding":Ljava/lang/String;
    goto :goto_11e

    .line 191
    .restart local v6    # "lineLower":Ljava/lang/String;
    .restart local v7    # "transferEncoding":Ljava/lang/String;
    .restart local v9    # "nonIdentityEncoding":Ljava/lang/String;
    :cond_116
    new-instance v0, Lorg/apache/xmlrpc/webserver/Connection$BadEncodingException;

    iget-object v8, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-direct {v0, v8, v9}, Lorg/apache/xmlrpc/webserver/Connection$BadEncodingException;-><init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V

    throw v0

    .line 196
    .end local v6    # "lineLower":Ljava/lang/String;
    .end local v7    # "transferEncoding":Ljava/lang/String;
    .end local v9    # "nonIdentityEncoding":Ljava/lang/String;
    :cond_11e
    :goto_11e
    if-eqz v2, :cond_126

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9a

    .line 198
    :cond_126
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    return-object v0

    .line 166
    .end local v5    # "httpVersion":Ljava/lang/String;
    :cond_129
    new-instance v0, Lorg/apache/xmlrpc/webserver/Connection$BadRequestException;

    iget-object v5, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-direct {v0, v5, v4}, Lorg/apache/xmlrpc/webserver/Connection$BadRequestException;-><init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V

    throw v0
.end method

.method private readLine()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    if-nez v0, :cond_a

    .line 235
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    .line 238
    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 241
    .local v1, "count":I
    :goto_c
    :try_start_c
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 242
    .local v2, "next":I
    iput-boolean v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->firstByte:Z
    :try_end_14
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_14} :catch_41

    .line 249
    nop

    .line 247
    nop

    .line 250
    if-ltz v2, :cond_37

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1d

    .line 251
    goto :goto_37

    .line 253
    :cond_1d
    const/16 v3, 0xd

    if-eq v2, v3, :cond_29

    .line 254
    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    add-int/lit8 v4, v1, 0x1

    .local v4, "count":I
    int-to-byte v5, v2

    aput-byte v5, v3, v1

    .line 256
    move v1, v4

    .end local v4    # "count":I
    :cond_29
    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    array-length v3, v3

    if-ge v1, v3, :cond_2f

    .end local v2    # "next":I
    goto :goto_c

    .line 257
    .restart local v2    # "next":I
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    const-string v3, "HTTP Header too long"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_37
    :goto_37
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    const-string v5, "US-ASCII"

    invoke-direct {v3, v4, v0, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v3

    .line 243
    .end local v2    # "next":I
    :catch_41
    move-exception v0

    .line 244
    .local v0, "e":Ljava/net/SocketException;
    iget-boolean v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->firstByte:Z

    if-eqz v2, :cond_48

    .line 245
    const/4 v2, 0x0

    return-object v2

    .line 247
    :cond_48
    throw v0
.end method

.method private static final toHTTPBytes(Ljava/lang/String;)[B
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .line 91
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 92
    :catch_7
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": HTTP requires US-ASCII encoding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeContentLengthHeader(I)V
    .registers 4
    .param p1, "pContentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 371
    return-void

    .line 373
    :cond_4
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->clength:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 374
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 375
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 376
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    return-void
.end method

.method public newInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getContentLength()I

    move-result v0

    .line 398
    .local v0, "contentLength":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 399
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    return-object v1

    .line 401
    :cond_c
    new-instance v1, Lorg/apache/xmlrpc/util/LimitedInputStream;

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/util/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v1
.end method

.method public newOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    .line 388
    invoke-interface {v0}, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfig;->isContentLengthOptional()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 389
    .local v0, "useContentLength":Z
    :goto_14
    if-eqz v0, :cond_1c

    .line 390
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v1

    .line 392
    :cond_1c
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    return-object v1
.end method

.method public run()V
    .registers 5

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/xmlrpc/webserver/Connection;->getRequestConfig()Lorg/apache/xmlrpc/webserver/RequestData;

    move-result-object v1

    .line 205
    .local v1, "data":Lorg/apache/xmlrpc/webserver/RequestData;
    if-nez v1, :cond_8

    .line 206
    goto :goto_22

    .line 208
    :cond_8
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v2, v1, p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->execute(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)V

    .line 209
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 210
    invoke-virtual {v1}, Lorg/apache/xmlrpc/webserver/RequestData;->isKeepAlive()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Lorg/apache/xmlrpc/webserver/RequestData;->isSuccess()Z

    move-result v2
    :try_end_1c
    .catch Lorg/apache/xmlrpc/webserver/Connection$RequestException; {:try_start_1 .. :try_end_1c} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_3a
    .catchall {:try_start_1 .. :try_end_1c} :catchall_38

    if-nez v2, :cond_1f

    .line 211
    goto :goto_22

    .line 203
    .end local v1    # "data":Lorg/apache/xmlrpc/webserver/RequestData;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "i":I
    :cond_22
    :goto_22
    :try_start_22
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    move-exception v0

    .line 228
    :goto_29
    :try_start_29
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    .line 229
    :goto_30
    :try_start_30
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_a0

    :catch_36
    move-exception v0

    .line 230
    goto :goto_a0

    .line 227
    :catchall_38
    move-exception v0

    goto :goto_a1

    .line 222
    :catch_3a
    move-exception v0

    .line 223
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3b
    iget-boolean v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->shuttingDown:Z

    if-nez v1, :cond_44

    .line 224
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->webServer:Lorg/apache/xmlrpc/webserver/WebServer;

    invoke-virtual {v1, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_38

    .line 227
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_44
    :try_start_44
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_4b

    :catch_4a
    move-exception v0

    .line 228
    :goto_4b
    :try_start_4b
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v0

    .line 229
    :goto_52
    :try_start_52
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_57} :catch_36

    goto :goto_a0

    .line 214
    :catch_58
    move-exception v0

    .line 215
    .local v0, "e":Lorg/apache/xmlrpc/webserver/Connection$RequestException;
    :try_start_59
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->webServer:Lorg/apache/xmlrpc/webserver/WebServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_59 .. :try_end_7e} :catchall_38

    .line 217
    :try_start_7e
    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->access$000(Lorg/apache/xmlrpc/webserver/Connection$RequestException;)Lorg/apache/xmlrpc/webserver/RequestData;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/xmlrpc/webserver/Connection;->writeErrorHeader(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;I)V

    .line 218
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_8b} :catch_8c
    .catchall {:try_start_7e .. :try_end_8b} :catchall_38

    .line 221
    goto :goto_8d

    .line 219
    :catch_8c
    move-exception v1

    .line 227
    .end local v0    # "e":Lorg/apache/xmlrpc/webserver/Connection$RequestException;
    :goto_8d
    :try_start_8d
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_92} :catch_93

    goto :goto_94

    :catch_93
    move-exception v0

    .line 228
    :goto_94
    :try_start_94
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_99} :catch_9a

    goto :goto_9b

    :catch_9a
    move-exception v0

    .line 229
    :goto_9b
    :try_start_9b
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_a0} :catch_36

    .line 231
    :goto_a0
    return-void

    .line 227
    :goto_a1
    :try_start_a1
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v1

    .line 228
    :goto_a8
    :try_start_a8
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_ad} :catch_ae

    goto :goto_af

    :catch_ae
    move-exception v1

    .line 229
    :goto_af
    :try_start_af
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v1

    .line 230
    :goto_b6
    throw v0
.end method

.method public setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pHeader"    # Ljava/lang/String;
    .param p2, "pValue"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-void
.end method

.method public shutdown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->shuttingDown:Z

    .line 410
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 411
    return-void
.end method

.method public writeError(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;Ljava/io/ByteArrayOutputStream;)V
    .registers 5
    .param p1, "pData"    # Lorg/apache/xmlrpc/webserver/RequestData;
    .param p2, "pError"    # Ljava/lang/Throwable;
    .param p3, "pStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlrpc/webserver/Connection;->writeErrorHeader(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;I)V

    .line 315
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p3, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 316
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 317
    return-void
.end method

.method public writeErrorHeader(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;I)V
    .registers 7
    .param p1, "pData"    # Lorg/apache/xmlrpc/webserver/RequestData;
    .param p2, "pError"    # Ljava/lang/Throwable;
    .param p3, "pContentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    instance-of v0, p2, Lorg/apache/xmlrpc/webserver/Connection$BadRequestException;

    if-eqz v0, :cond_5a

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not implemented (try POST)\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 330
    .local v0, "content":[B
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 331
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    const-string v2, " 400 Bad Request"

    invoke-static {v2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 332
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 333
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 334
    array-length v1, v0

    invoke-direct {p0, v1}, Lorg/apache/xmlrpc/webserver/Connection;->writeContentLengthHeader(I)V

    .line 335
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 336
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 337
    .end local v0    # "content":[B
    goto/16 :goto_147

    :cond_5a
    instance-of v0, p2, Lorg/apache/xmlrpc/webserver/Connection$BadEncodingException;

    if-eqz v0, :cond_b4

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Transfer-Encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not implemented.\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 340
    .restart local v0    # "content":[B
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 341
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    const-string v2, " 501 Not Implemented"

    invoke-static {v2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 342
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 343
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 344
    array-length v1, v0

    invoke-direct {p0, v1}, Lorg/apache/xmlrpc/webserver/Connection;->writeContentLengthHeader(I)V

    .line 345
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 346
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 347
    .end local v0    # "content":[B
    goto/16 :goto_147

    :cond_b4
    instance-of v0, p2, Lorg/apache/xmlrpc/common/XmlRpcNotAuthorizedException;

    if-eqz v0, :cond_114

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires a valid user name and password.\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 350
    .restart local v0    # "content":[B
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 351
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    const-string v2, " 401 Unauthorized"

    invoke-static {v2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 352
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 353
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 354
    array-length v1, v0

    invoke-direct {p0, v1}, Lorg/apache/xmlrpc/webserver/Connection;->writeContentLengthHeader(I)V

    .line 355
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->wwwAuthenticate:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 356
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 357
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 358
    .end local v0    # "content":[B
    goto :goto_147

    .line 359
    :cond_114
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 360
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->ok:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 361
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 362
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->conclose:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 363
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->ctype:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 364
    invoke-direct {p0, p3}, Lorg/apache/xmlrpc/webserver/Connection;->writeContentLengthHeader(I)V

    .line 365
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 367
    :goto_147
    return-void
.end method

.method public writeResponse(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "pData"    # Lorg/apache/xmlrpc/webserver/RequestData;
    .param p2, "pBuffer"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    move-object v0, p2

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 272
    .local v0, "response":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlrpc/webserver/Connection;->writeResponseHeader(Lorg/apache/xmlrpc/webserver/RequestData;I)V

    .line 273
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 274
    return-void
.end method

.method public writeResponseHeader(Lorg/apache/xmlrpc/webserver/RequestData;I)V
    .registers 10
    .param p1, "pData"    # Lorg/apache/xmlrpc/webserver/RequestData;
    .param p2, "pContentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 284
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->ok:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 285
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 286
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->isKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->conkeep:[B

    goto :goto_28

    :cond_26
    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->conclose:[B

    :goto_28
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 287
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->ctype:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 288
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    if-eqz v0, :cond_7b

    .line 289
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 291
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, "header":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 293
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 294
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "header":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_40

    .line 296
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_7b
    const/4 v0, -0x1

    if-eq p2, v0, :cond_9a

    .line 297
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->clength:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 298
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 299
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->doubleNewline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_a1

    .line 301
    :cond_9a
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 303
    :goto_a1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xmlrpc/webserver/RequestData;->setSuccess(Z)V

    .line 304
    return-void
.end method
