.class public Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;
.super Lorg/apache/xmlrpc/XmlRpcConfigImpl;
.source "XmlRpcHttpRequestConfigImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfig;


# instance fields
.field private basicPassword:Ljava/lang/String;

.field private basicUserName:Ljava/lang/String;

.field private connectionTimeout:I

.field private enabledForExceptions:Z

.field private gzipCompressing:Z

.field private gzipRequesting:Z

.field private replyTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lorg/apache/xmlrpc/XmlRpcConfigImpl;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->connectionTimeout:I

    .line 33
    iput v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->replyTimeout:I

    return-void
.end method


# virtual methods
.method public getBasicPassword()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->basicPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getBasicUserName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->basicUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .registers 2

    .line 90
    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->connectionTimeout:I

    return v0
.end method

.method public getReplyTimeout()I
    .registers 2

    .line 101
    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->replyTimeout:I

    return v0
.end method

.method public isEnabledForExceptions()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->enabledForExceptions:Z

    return v0
.end method

.method public isGzipCompressing()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->gzipCompressing:Z

    return v0
.end method

.method public isGzipRequesting()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->gzipRequesting:Z

    return v0
.end method

.method public setBasicPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "pPassword"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->basicPassword:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setBasicUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pUser"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->basicUserName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setConnectionTimeout(I)V
    .registers 2
    .param p1, "pTimeout"    # I

    .line 86
    iput p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->connectionTimeout:I

    .line 87
    return-void
.end method

.method public setEnabledForExceptions(Z)V
    .registers 2
    .param p1, "pEnabledForExceptions"    # Z

    .line 110
    iput-boolean p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->enabledForExceptions:Z

    .line 111
    return-void
.end method

.method public setGzipCompressing(Z)V
    .registers 2
    .param p1, "pCompressing"    # Z

    .line 43
    iput-boolean p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->gzipCompressing:Z

    .line 44
    return-void
.end method

.method public setGzipRequesting(Z)V
    .registers 2
    .param p1, "pRequesting"    # Z

    .line 57
    iput-boolean p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->gzipRequesting:Z

    .line 58
    return-void
.end method

.method public setReplyTimeout(I)V
    .registers 2
    .param p1, "pTimeout"    # I

    .line 97
    iput p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->replyTimeout:I

    .line 98
    return-void
.end method
