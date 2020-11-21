.class public Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;
.source "XmlRpcLiteHttpTransport.java"


# static fields
.field private static final userAgent:Ljava/lang/String;


# instance fields
.field private config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

.field private final headers:Ljava/util/Map;

.field private host:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private port:I

.field private responseGzipCompressed:Z

.field private socket:Ljava/net/Socket;

.field private ssl:Z

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Lite HTTP Transport)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 3
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 68
    sget-object v0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->userAgent:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->responseGzipCompressed:Z

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;)Ljava/net/Socket;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;

    .line 49
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x3

    .line 137
    .local v0, "retries":I
    const/16 v1, 0x64

    .line 139
    .local v1, "delayMillis":I
    const/4 v2, 0x0

    .line 141
    .local v2, "tries":I
    :goto_4
    :try_start_4
    iget-boolean v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->ssl:Z

    iget-object v4, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    iget v5, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->newSocket(ZLjava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    .line 142
    new-instance v3, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport$1;

    iget-object v4, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport$1;-><init>(Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;Ljava/io/OutputStream;)V

    iput-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;
    :try_end_1d
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_1d} :catch_28
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1d} :catch_26

    .line 153
    nop

    .line 166
    .end local v2    # "tries":I
    :try_start_1e
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;

    invoke-direct {p0, v2}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->sendRequestHeaders(Ljava/io/OutputStream;)V

    .line 167
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_25} :catch_26

    return-object v2

    .line 168
    .end local v0    # "retries":I
    .end local v1    # "delayMillis":I
    :catch_26
    move-exception v0

    goto :goto_65

    .line 154
    .restart local v0    # "retries":I
    .restart local v1    # "delayMillis":I
    .restart local v2    # "tries":I
    :catch_28
    move-exception v3

    .line 155
    .local v3, "e":Ljava/net/ConnectException;
    const/4 v4, 0x3

    if-ge v2, v4, :cond_36

    .line 160
    const-wide/16 v4, 0x64

    :try_start_2e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_26

    .line 162
    goto :goto_33

    .line 161
    :catch_32
    move-exception v4

    .line 139
    .end local v3    # "e":Ljava/net/ConnectException;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 156
    .restart local v3    # "e":Ljava/net/ConnectException;
    :cond_36
    :try_start_36
    new-instance v4, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_65} :catch_26

    .line 168
    .end local v0    # "retries":I
    .end local v1    # "delayMillis":I
    .end local v2    # "tries":I
    .end local v3    # "e":Ljava/net/ConnectException;
    :goto_65
    nop

    .line 169
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private sendHeader(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pOut"    # Ljava/io/OutputStream;
    .param p2, "pKey"    # Ljava/lang/String;
    .param p3, "pValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 187
    return-void
.end method

.method private sendRequestHeaders(Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "pOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 191
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 193
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 195
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4c

    .line 196
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v4}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->sendHeader(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 198
    :cond_4c
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 199
    .local v4, "list":Ljava/util/List;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_50
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_62

    .line 200
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v6}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->sendHeader(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 203
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "list":Ljava/util/List;
    .end local v5    # "i":I
    :cond_62
    :goto_62
    goto :goto_2b

    .line 204
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_63
    const-string v0, "\r\n"

    invoke-direct {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 205
    return-void
.end method

.method private toHTTPBytes(Ljava/lang/String;)[B
    .registers 3
    .param p1, "pValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 182
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_d

    .line 106
    :try_start_5
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    .line 109
    goto :goto_d

    .line 107
    :catch_b
    move-exception v1

    .line 108
    .local v1, "ex":Ljava/io/IOException;
    move-object v0, v1

    .line 111
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_d
    :goto_d
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_1b

    .line 113
    :try_start_11
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    .line 118
    goto :goto_1b

    .line 114
    :catch_17
    move-exception v1

    .line 115
    .restart local v1    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_1b

    .line 116
    move-object v0, v1

    .line 120
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_29

    .line 122
    :try_start_1f
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_25

    .line 127
    goto :goto_29

    .line 123
    :catch_25
    move-exception v1

    .line 124
    .restart local v1    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_29

    .line 125
    move-object v0, v1

    .line 129
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_29
    :goto_29
    if-nez v0, :cond_2c

    .line 132
    return-void

    .line 130
    :cond_2c
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 212
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 215
    .local v0, "buffer":[B
    :try_start_4
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result v1

    if-eqz v1, :cond_17

    .line 216
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v2}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 217
    :cond_17
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    .line 219
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/xmlrpc/util/HttpUtil;->readLine(Ljava/io/InputStream;[B)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "line":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 221
    .local v2, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 222
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "statusCode":Ljava/lang/String;
    const-string v4, "\n\r"

    invoke-virtual {v2, v4}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3c} :catch_cd

    .line 226
    .local v4, "statusMsg":Ljava/lang/String;
    :try_start_3c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_40} :catch_ac
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_cd

    .line 230
    .local v5, "code":I
    nop

    .line 228
    nop

    .line 231
    const/16 v6, 0xc8

    if-lt v5, v6, :cond_a6

    const/16 v6, 0x12b

    if-gt v5, v6, :cond_a6

    .line 234
    const/4 v6, -0x1

    move-object v7, v1

    const/4 v1, -0x1

    .line 236
    .local v1, "contentLength":I
    .local v7, "line":Ljava/lang/String;
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v8, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    invoke-static {v8, v0}, Lorg/apache/xmlrpc/util/HttpUtil;->readLine(Ljava/io/InputStream;[B)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 237
    if-eqz v7, :cond_99

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 238
    goto :goto_99

    .line 240
    :cond_5f
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 241
    const-string v8, "content-length:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 242
    const-string v8, "content-length:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v1, v8

    goto :goto_4d

    .line 243
    :cond_80
    const-string v8, "content-encoding:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 244
    const-string v8, "content-encoding:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xmlrpc/util/HttpUtil;->isUsingGzipEncoding(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->responseGzipCompressed:Z

    goto :goto_4d

    .line 248
    :cond_99
    :goto_99
    if-ne v1, v6, :cond_9e

    .line 249
    iget-object v6, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    goto :goto_a5

    .line 251
    :cond_9e
    new-instance v6, Lorg/apache/xmlrpc/util/LimitedInputStream;

    iget-object v8, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    invoke-direct {v6, v8, v1}, Lorg/apache/xmlrpc/util/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 253
    .local v6, "result":Ljava/io/InputStream;
    :goto_a5
    return-object v6

    .line 232
    .end local v6    # "result":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    :cond_a6
    new-instance v6, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;

    invoke-direct {v6, v5, v4}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 227
    .end local v5    # "code":I
    :catch_ac
    move-exception v5

    .line 228
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server returned invalid status code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_cd} :catch_cd

    .line 254
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "tokens":Ljava/util/StringTokenizer;
    .end local v3    # "statusCode":Ljava/lang/String;
    .end local v4    # "statusMsg":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :catch_cd
    move-exception v1

    .line 255
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read server response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .registers 3
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 208
    iget-boolean v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->responseGzipCompressed:Z

    return v0
.end method

.method protected isUsingByteArrayOutput(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Z
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 260
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->isUsingByteArrayOutput(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Z

    move-result v0

    .line 261
    .local v0, "result":Z
    if-eqz v0, :cond_7

    .line 264
    return v0

    .line 262
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Content-Length header is required with HTTP/1.0, and HTTP/1.1 is unsupported by the Lite HTTP Transport."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected newSocket(ZLjava/lang/String;I)Ljava/net/Socket;
    .registers 6
    .param p1, "pSSL"    # Z
    .param p2, "pHostName"    # Ljava/lang/String;
    .param p3, "pPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    if-nez p1, :cond_8

    .line 178
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p2, p3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 176
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create SSL connections, use the XmlRpcLite14HttpTransportFactory."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 8
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 73
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getServerURL()Ljava/net/URL;

    move-result-object v0

    .line 74
    .local v0, "url":Ljava/net/URL;
    const-string v1, "https"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->ssl:Z

    .line 75
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    .line 76
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 77
    .local v1, "p":I
    const/16 v2, 0x50

    const/4 v3, 0x1

    if-ge v1, v3, :cond_2c

    const/16 v3, 0x50

    goto :goto_2d

    :cond_2c
    move v3, v1

    :goto_2d
    iput v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    .line 78
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "u":Ljava/lang/String;
    if-eqz v3, :cond_40

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_40

    :cond_3e
    move-object v4, v3

    goto :goto_42

    :cond_40
    :goto_40
    const-string v4, "/"

    :goto_42
    iput-object v4, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->uri:Ljava/lang/String;

    .line 80
    iget v4, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    if-ne v4, v2, :cond_4b

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    goto :goto_63

    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_63
    iput-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->host:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    const-string v4, "Host"

    iget-object v5, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->host:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pHeader"    # Ljava/lang/String;
    .param p2, "pValue"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 88
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 91
    :cond_e
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 96
    .end local v1    # "list":Ljava/util/List;
    :cond_20
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 98
    .restart local v1    # "list":Ljava/util/List;
    :goto_23
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v1    # "list":Ljava/util/List;
    :goto_26
    return-void
.end method

.method protected writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .registers 3
    .param p1, "pWriter"    # Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;->write(Ljava/io/OutputStream;)V

    .line 269
    return-void
.end method
