.class public Lorg/ros/internal/node/server/XmlRpcServer;
.super Ljava/lang/Object;
.source "XmlRpcServer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final advertiseAddress:Lorg/ros/address/AdvertiseAddress;

.field private final server:Lorg/apache/xmlrpc/webserver/WebServer;

.field private final startLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lorg/ros/internal/node/server/XmlRpcServer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/server/XmlRpcServer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V
    .registers 7
    .param p1, "bindAddress"    # Lorg/ros/address/BindAddress;
    .param p2, "advertiseAddress"    # Lorg/ros/address/AdvertiseAddress;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/ros/address/BindAddress;->toInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 53
    .local v0, "address":Ljava/net/InetSocketAddress;
    new-instance v1, Lorg/apache/xmlrpc/webserver/WebServer;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/xmlrpc/webserver/WebServer;-><init>(ILjava/net/InetAddress;)V

    iput-object v1, p0, Lorg/ros/internal/node/server/XmlRpcServer;->server:Lorg/apache/xmlrpc/webserver/WebServer;

    .line 54
    iput-object p2, p0, Lorg/ros/internal/node/server/XmlRpcServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    .line 55
    iget-object v1, p0, Lorg/ros/internal/node/server/XmlRpcServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    new-instance v2, Lorg/ros/internal/node/server/XmlRpcServer$1;

    invoke-direct {v2, p0}, Lorg/ros/internal/node/server/XmlRpcServer$1;-><init>(Lorg/ros/internal/node/server/XmlRpcServer;)V

    invoke-virtual {v1, v2}, Lorg/ros/address/AdvertiseAddress;->setPortCallable(Ljava/util/concurrent/Callable;)V

    .line 61
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/ros/internal/node/server/XmlRpcServer;->startLatch:Ljava/util/concurrent/CountDownLatch;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/node/server/XmlRpcServer;)Lorg/apache/xmlrpc/webserver/WebServer;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/server/XmlRpcServer;

    .line 42
    iget-object v0, p0, Lorg/ros/internal/node/server/XmlRpcServer;->server:Lorg/apache/xmlrpc/webserver/WebServer;

    return-object v0
.end method


# virtual methods
.method public awaitStart()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/ros/internal/node/server/XmlRpcServer;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 122
    return-void
.end method

.method public awaitStart(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/ros/internal/node/server/XmlRpcServer;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 113
    iget-object v0, p0, Lorg/ros/internal/node/server/XmlRpcServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    invoke-virtual {v0}, Lorg/ros/address/AdvertiseAddress;->toInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;
    .registers 2

    .line 117
    iget-object v0, p0, Lorg/ros/internal/node/server/XmlRpcServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 133
    invoke-static {}, Lorg/ros/internal/system/Process;->getPid()I

    move-result v0

    return v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 3

    .line 109
    iget-object v0, p0, Lorg/ros/internal/node/server/XmlRpcServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Lorg/ros/address/AdvertiseAddress;->toUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/ros/internal/node/server/XmlRpcServer;->server:Lorg/apache/xmlrpc/webserver/WebServer;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/WebServer;->shutdown()V

    .line 103
    return-void
.end method

.method public start(Ljava/lang/Class;Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 75
    .local p1, "instanceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "instance":Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;, "TT;"
    iget-object v0, p0, Lorg/ros/internal/node/server/XmlRpcServer;->server:Lorg/apache/xmlrpc/webserver/WebServer;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/WebServer;->getXmlRpcServer()Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    move-result-object v0

    .line 76
    .local v0, "xmlRpcServer":Lorg/apache/xmlrpc/server/XmlRpcServer;
    new-instance v1, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;

    invoke-direct {v1}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;-><init>()V

    .line 77
    .local v1, "phm":Lorg/apache/xmlrpc/server/PropertyHandlerMapping;
    new-instance v2, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;

    invoke-direct {v2, p2}, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;-><init>(Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;)V

    invoke-virtual {v1, v2}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->setRequestProcessorFactoryFactory(Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;)V

    .line 79
    :try_start_13
    const-string v2, ""

    invoke-virtual {v1, v2, p1}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->addHandler(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_18
    .catch Lorg/apache/xmlrpc/XmlRpcException; {:try_start_13 .. :try_end_18} :catch_3c

    .line 82
    nop

    .line 83
    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/server/XmlRpcServer;->setHandlerMapping(Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;)V

    .line 84
    invoke-virtual {v0}, Lorg/apache/xmlrpc/server/XmlRpcServer;->getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;

    .line 85
    .local v2, "serverConfig":Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->setEnabledForExtensions(Z)V

    .line 86
    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->setContentLengthOptional(Z)V

    .line 88
    :try_start_29
    iget-object v3, p0, Lorg/ros/internal/node/server/XmlRpcServer;->server:Lorg/apache/xmlrpc/webserver/WebServer;

    invoke-virtual {v3}, Lorg/apache/xmlrpc/webserver/WebServer;->start()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_35

    .line 91
    nop

    .line 95
    iget-object v3, p0, Lorg/ros/internal/node/server/XmlRpcServer;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 96
    return-void

    .line 89
    :catch_35
    move-exception v3

    .line 90
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v4, v3}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 80
    .end local v2    # "serverConfig":Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3c
    move-exception v2

    .line 81
    .local v2, "e":Lorg/apache/xmlrpc/XmlRpcException;
    new-instance v3, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v3, v2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
