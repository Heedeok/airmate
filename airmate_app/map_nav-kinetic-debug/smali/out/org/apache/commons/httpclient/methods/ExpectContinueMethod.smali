.class public abstract Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "ExpectContinueMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    sget-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.ExpectContinueMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 74
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
.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 6
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 183
    sget-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter ExpectContinueMethod.addRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 185
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 187
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 192
    .local v0, "headerPresent":Z
    :goto_15
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v2, "http.protocol.expect-continue"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->hasRequestContent()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 196
    if-nez v0, :cond_44

    .line 197
    const-string v1, "Expect"

    const-string v2, "100-continue"

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 200
    :cond_3d
    if-eqz v0, :cond_44

    .line 201
    const-string v1, "Expect"

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->removeRequestHeader(Ljava/lang/String;)V

    .line 204
    :cond_44
    :goto_44
    return-void
.end method

.method public getUseExpectHeader()Z
    .registers 4

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract hasRequestContent()Z
.end method

.method public setUseExpectHeader(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setBooleanParameter(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method
