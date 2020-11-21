.class public Lorg/apache/xmlrpc/webserver/RequestData;
.super Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;
.source "RequestData.java"


# instance fields
.field private final connection:Lorg/apache/xmlrpc/webserver/Connection;

.field private contentLength:I

.field private httpVersion:Ljava/lang/String;

.field private keepAlive:Z

.field private method:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/webserver/Connection;)V
    .registers 3
    .param p1, "pConnection"    # Lorg/apache/xmlrpc/webserver/Connection;

    .line 38
    invoke-direct {p0}, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->contentLength:I

    .line 39
    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->connection:Lorg/apache/xmlrpc/webserver/Connection;

    .line 40
    return-void
.end method


# virtual methods
.method public getConnection()Lorg/apache/xmlrpc/webserver/Connection;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->connection:Lorg/apache/xmlrpc/webserver/Connection;

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .line 76
    iget v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->contentLength:I

    return v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->method:Ljava/lang/String;

    return-object v0
.end method

.method public isByteArrayRequired()Z
    .registers 2

    .line 90
    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/RequestData;->isKeepAlive()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/RequestData;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/RequestData;->isContentLengthOptional()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public isKeepAlive()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->keepAlive:Z

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->success:Z

    return v0
.end method

.method public setContentLength(I)V
    .registers 2
    .param p1, "pContentLength"    # I

    .line 82
    iput p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->contentLength:I

    .line 83
    return-void
.end method

.method public setHttpVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "pHttpVersion"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->httpVersion:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 2
    .param p1, "pKeepAlive"    # Z

    .line 58
    iput-boolean p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->keepAlive:Z

    .line 59
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "pMethod"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->method:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setSuccess(Z)V
    .registers 2
    .param p1, "pSuccess"    # Z

    .line 114
    iput-boolean p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->success:Z

    .line 115
    return-void
.end method
