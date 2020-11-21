.class public Lorg/apache/commons/httpclient/methods/HeadMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "HeadMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$methods$HeadMethod:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    sget-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->class$org$apache$commons$httpclient$methods$HeadMethod:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.HeadMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->class$org$apache$commons$httpclient$methods$HeadMethod:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->class$org$apache$commons$httpclient$methods$HeadMethod:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->setFollowRedirects(Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->setFollowRedirects(Z)V

    .line 96
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 73
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
.method public getBodyCheckTimeout()I
    .registers 4

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.head-body-timeout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 108
    const-string v0, "HEAD"

    return-object v0
.end method

.method protected readResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 8
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sget-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeadMethod.readResponseBody(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.head-body-timeout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "bodyCheckTimeout":I
    if-gez v0, :cond_18

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->responseBodyConsumed()V

    goto :goto_6c

    .line 159
    :cond_18
    sget-object v1, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 160
    sget-object v1, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Check for non-compliant response body. Timeout in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 163
    :cond_3b
    const/4 v1, 0x0

    .line 165
    .local v1, "responseAvailable":Z
    :try_start_3c
    invoke-virtual {p2, v0}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable(I)Z

    move-result v2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_42

    move v1, v2

    .line 171
    goto :goto_4b

    .line 166
    :catch_42
    move-exception v2

    .line 167
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "An IOException occurred while testing if a response was available, we will assume one is not."

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 170
    const/4 v1, 0x0

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4b
    if-eqz v1, :cond_6c

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    const-string v3, "http.protocol.reject-head-body"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 177
    sget-object v2, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Body content returned in response to HTTP HEAD"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 179
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_6c

    .line 174
    :cond_64
    new-instance v2, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v3, "Body content may not be sent in response to HTTP HEAD request"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    .end local v1    # "responseAvailable":Z
    :cond_6c
    :goto_6c
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 125
    invoke-super {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->recycle()V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->setFollowRedirects(Z)V

    .line 127
    return-void
.end method

.method public setBodyCheckTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .line 216
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.head-body-timeout"

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setIntParameter(Ljava/lang/String;I)V

    .line 217
    return-void
.end method
