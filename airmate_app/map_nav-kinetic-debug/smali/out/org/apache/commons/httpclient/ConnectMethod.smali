.class public Lorg/apache/commons/httpclient/ConnectMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "ConnectMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final NAME:Ljava/lang/String; = "CONNECT"

.field static synthetic class$org$apache$commons$httpclient$ConnectMethod:Ljava/lang/Class;


# instance fields
.field private final targethost:Lorg/apache/commons/httpclient/HostConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 258
    sget-object v0, Lorg/apache/commons/httpclient/ConnectMethod;->class$org$apache$commons$httpclient$ConnectMethod:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.ConnectMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/ConnectMethod;->class$org$apache$commons$httpclient$ConnectMethod:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/ConnectMethod;->class$org$apache$commons$httpclient$ConnectMethod:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ConnectMethod;->targethost:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 4
    .param p1, "targethost"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .line 86
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 87
    if-eqz p1, :cond_8

    .line 90
    iput-object p1, p0, Lorg/apache/commons/httpclient/ConnectMethod;->targethost:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 91
    return-void

    .line 88
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 3
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ConnectMethod;->targethost:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 78
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 258
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
.method protected addCookieRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 3
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 5
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 161
    sget-object v0, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter ConnectMethod.addRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/ConnectMethod;->addUserAgentRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/ConnectMethod;->addHostRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 165
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/ConnectMethod;->addProxyConnectionHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 166
    return-void
.end method

.method public execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I
    .registers 7
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 184
    sget-object v0, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter ConnectMethod.execute(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 185
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I

    move-result v0

    .line 186
    .local v0, "code":I
    sget-object v1, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 187
    sget-object v1, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "CONNECT status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 189
    :cond_29
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 99
    const-string v0, "CONNECT"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 4

    .line 103
    iget-object v0, p0, Lorg/apache/commons/httpclient/ConnectMethod;->targethost:Lorg/apache/commons/httpclient/HostConfiguration;

    if-eqz v0, :cond_32

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/ConnectMethod;->targethost:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v1, p0, Lorg/apache/commons/httpclient/ConnectMethod;->targethost:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HostConfiguration;->getPort()I

    move-result v1

    .line 107
    .local v1, "port":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    .line 108
    iget-object v2, p0, Lorg/apache/commons/httpclient/ConnectMethod;->targethost:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HostConfiguration;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v1

    .line 110
    :cond_25
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 114
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "port":I
    :cond_32
    const-string v0, "/"

    return-object v0
.end method

.method public getURI()Lorg/apache/commons/httpclient/URI;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getUriCharset()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "charset":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/httpclient/URI;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1
.end method

.method protected shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .registers 6
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .line 235
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5f

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "connectionHeader":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v1

    if-nez v1, :cond_15

    .line 238
    const-string v1, "proxy-connection"

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 240
    :cond_15
    if-nez v0, :cond_1d

    .line 241
    const-string v1, "connection"

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 243
    :cond_1d
    if-eqz v0, :cond_5d

    .line 244
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 245
    sget-object v1, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 246
    sget-object v1, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid header encountered \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' in response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/StatusLine;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 251
    :cond_5d
    const/4 v1, 0x0

    return v1

    .line 253
    .end local v0    # "connectionHeader":Lorg/apache/commons/httpclient/Header;
    :cond_5f
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;->shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v0

    return v0
.end method

.method protected writeRequestLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 6
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 203
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    iget-object v1, p0, Lorg/apache/commons/httpclient/ConnectMethod;->targethost:Lorg/apache/commons/httpclient/HostConfiguration;

    if-eqz v1, :cond_1d

    .line 206
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 208
    :cond_1d
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v1

    .line 209
    .local v1, "port":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2c

    .line 210
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v1

    .line 212
    :cond_2c
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 216
    .end local v1    # "port":I
    :goto_3b
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/apache/commons/httpclient/HttpConnection;->printLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v2, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 221
    sget-object v2, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/Wire;->output(Ljava/lang/String;)V

    .line 223
    :cond_63
    return-void
.end method