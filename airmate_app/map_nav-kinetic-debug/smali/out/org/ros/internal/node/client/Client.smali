.class abstract Lorg/ros/internal/node/client/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0xea60

.field private static final REPLY_TIMEOUT:I = 0xea60

.field private static final XMLRPC_TIMEOUT:I = 0x2710


# instance fields
.field private final uri:Ljava/net/URI;

.field protected final xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/lang/Class;)V
    .registers 9
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/ros/internal/node/client/Client;, "Lorg/ros/internal/node/client/Client<TT;>;"
    .local p2, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/ros/internal/node/client/Client;->uri:Ljava/net/URI;

    .line 58
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;-><init>()V

    .line 60
    .local v0, "config":Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;
    :try_start_a
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->setServerURL(Ljava/net/URL;)V
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_11} :catch_4a

    .line 63
    nop

    .line 64
    const v1, 0xea60

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->setConnectionTimeout(I)V

    .line 65
    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->setReplyTimeout(I)V

    .line 67
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcClient;

    invoke-direct {v1}, Lorg/apache/xmlrpc/client/XmlRpcClient;-><init>()V

    .line 68
    .local v1, "client":Lorg/apache/xmlrpc/client/XmlRpcClient;
    new-instance v2, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;

    invoke-direct {v2, v1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    invoke-virtual {v1, v2}, Lorg/apache/xmlrpc/client/XmlRpcClient;->setTransportFactory(Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;)V

    .line 69
    invoke-virtual {v1, v0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->setConfig(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;)V

    .line 71
    new-instance v2, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;

    invoke-direct {v2, v1}, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 72
    .local v2, "factory":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory<TT;>;"
    nop

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, ""

    const/16 v5, 0x2710

    invoke-virtual {v2, v3, p2, v4, v5}, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    iput-object v3, p0, Lorg/ros/internal/node/client/Client;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    .line 75
    return-void

    .line 61
    .end local v1    # "client":Lorg/apache/xmlrpc/client/XmlRpcClient;
    .end local v2    # "factory":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory<TT;>;"
    :catch_4a
    move-exception v1

    .line 62
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getRemoteUri()Ljava/net/URI;
    .registers 2

    .line 81
    .local p0, "this":Lorg/ros/internal/node/client/Client;, "Lorg/ros/internal/node/client/Client<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/Client;->uri:Ljava/net/URI;

    return-object v0
.end method
