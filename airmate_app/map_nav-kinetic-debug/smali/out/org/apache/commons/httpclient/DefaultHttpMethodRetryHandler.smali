.class public Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpMethodRetryHandler.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpMethodRetryHandler;


# static fields
.field private static SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;


# instance fields
.field private requestSentRetryEnabled:Z

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    .line 51
    :try_start_3
    const-string v0, "javax.net.ssl.SSLHandshakeException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_b} :catch_c

    .line 53
    goto :goto_d

    .line 52
    :catch_c
    move-exception v0

    .line 54
    :goto_d
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 77
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>(IZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    .line 69
    iput-boolean p2, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    .line 70
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .registers 2

    .line 146
    iget v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Ljava/io/IOException;I)Z
    .registers 7
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p2, "exception"    # Ljava/io/IOException;
    .param p3, "executionCount"    # I

    .line 89
    if-eqz p1, :cond_4f

    .line 92
    if-eqz p2, :cond_47

    .line 96
    instance-of v0, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 98
    return v1

    .line 101
    :cond_13
    iget v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    if-le p3, v0, :cond_18

    .line 103
    return v1

    .line 105
    :cond_18
    instance-of v0, p2, Lorg/apache/commons/httpclient/NoHttpResponseException;

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 107
    return v2

    .line 109
    :cond_1e
    instance-of v0, p2, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_23

    .line 111
    return v1

    .line 113
    :cond_23
    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_28

    .line 115
    return v1

    .line 117
    :cond_28
    instance-of v0, p2, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_2d

    .line 119
    return v1

    .line 121
    :cond_2d
    sget-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    if-eqz v0, :cond_3a

    sget-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 123
    return v1

    .line 125
    :cond_3a
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->isRequestSent()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v0, :cond_45

    goto :goto_46

    .line 131
    :cond_45
    return v1

    .line 128
    :cond_46
    :goto_46
    return v2

    .line 93
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP method may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
