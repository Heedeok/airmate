.class public Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;
.super Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;
.source "XmlRpcClientConfigImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
.implements Lorg/apache/xmlrpc/client/XmlRpcLocalClientConfig;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3931333834353139L


# instance fields
.field private serverURL:Ljava/net/URL;

.field private userAgent:Ljava/lang/String;

.field private xmlRpcServer:Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public cloneMe()Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;
    .registers 4

    .line 47
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 48
    :catch_7
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create my clone"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getServerURL()Ljava/net/URL;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->serverURL:Ljava/net/URL;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlRpcServer()Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->xmlRpcServer:Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;

    return-object v0
.end method

.method public setServerURL(Ljava/net/URL;)V
    .registers 2
    .param p1, "pURL"    # Ljava/net/URL;

    .line 57
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->serverURL:Ljava/net/URL;

    .line 58
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2
    .param p1, "pUserAgent"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->userAgent:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setXmlRpcServer(Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;)V
    .registers 2
    .param p1, "pServer"    # Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;

    .line 66
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->xmlRpcServer:Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;

    .line 67
    return-void
.end method
