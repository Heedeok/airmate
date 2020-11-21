.class public Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;
.super Ljava/lang/Object;
.source "XmlRpcClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final client:Lorg/apache/xmlrpc/client/XmlRpcClient;

.field private objectMethodLocal:Z

.field private final typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 3
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 77
    .local p0, "this":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory<TT;>;"
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V
    .registers 3
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;
    .param p2, "pTypeConverterFactory"    # Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 59
    .local p0, "this":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 61
    iput-object p1, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;)Lorg/apache/xmlrpc/client/XmlRpcClient;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;

    .line 42
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;)Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;

    .line 42
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    return-object v0
.end method


# virtual methods
.method public getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;
    .registers 2

    .line 84
    .local p0, "this":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-object v0
.end method

.method public isObjectMethodLocal()Z
    .registers 2

    .line 92
    .local p0, "this":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory<TT;>;"
    iget-boolean v0, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->objectMethodLocal:Z

    return v0
.end method

.method public newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 7
    .param p1, "pClassLoader"    # Ljava/lang/ClassLoader;
    .param p3, "pRemoteName"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory<TT;>;"
    .local p2, "pClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-instance v1, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;

    invoke-direct {v1, p0, p3, p4}, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;-><init>(Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;Ljava/lang/String;I)V

    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setObjectMethodLocal(Z)V
    .registers 2
    .param p1, "pObjectMethodLocal"    # Z

    .line 100
    .local p0, "this":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory<TT;>;"
    iput-boolean p1, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->objectMethodLocal:Z

    .line 101
    return-void
.end method
