.class public Lorg/apache/xmlrpc/client/util/ClientFactory;
.super Ljava/lang/Object;
.source "ClientFactory.java"


# instance fields
.field private final client:Lorg/apache/xmlrpc/client/XmlRpcClient;

.field private objectMethodLocal:Z

.field private final typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 3
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 65
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/client/util/ClientFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V
    .registers 3
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;
    .param p2, "pTypeConverterFactory"    # Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 53
    iput-object p1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/client/util/ClientFactory;)Lorg/apache/xmlrpc/client/XmlRpcClient;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/client/util/ClientFactory;

    .line 40
    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/xmlrpc/client/util/ClientFactory;)Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/client/util/ClientFactory;

    .line 40
    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    return-object v0
.end method


# virtual methods
.method public getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-object v0
.end method

.method public isObjectMethodLocal()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->objectMethodLocal:Z

    return v0
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "pClass"    # Ljava/lang/Class;

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlrpc/client/util/ClientFactory;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "pClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "pClass"    # Ljava/lang/Class;

    .line 111
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlrpc/client/util/ClientFactory;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "pClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "pClass"    # Ljava/lang/Class;
    .param p3, "pRemoteName"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-instance v1, Lorg/apache/xmlrpc/client/util/ClientFactory$1;

    invoke-direct {v1, p0, p3}, Lorg/apache/xmlrpc/client/util/ClientFactory$1;-><init>(Lorg/apache/xmlrpc/client/util/ClientFactory;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setObjectMethodLocal(Z)V
    .registers 2
    .param p1, "pObjectMethodLocal"    # Z

    .line 87
    iput-boolean p1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->objectMethodLocal:Z

    .line 88
    return-void
.end method
