.class public abstract Lorg/apache/xmlrpc/common/XmlRpcController;
.super Ljava/lang/Object;
.source "XmlRpcController.java"


# instance fields
.field private maxThreads:I

.field private typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

.field private workerFactory:Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Lorg/apache/xmlrpc/common/XmlRpcController;->getDefaultXmlRpcWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->workerFactory:Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    .line 31
    new-instance v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;-><init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    return-void
.end method


# virtual methods
.method public abstract getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;
.end method

.method protected abstract getDefaultXmlRpcWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
.end method

.method public getMaxThreads()I
    .registers 2

    .line 53
    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->maxThreads:I

    return v0
.end method

.method public getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;
    .registers 2

    .line 86
    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    return-object v0
.end method

.method public getWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->workerFactory:Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    return-object v0
.end method

.method public setMaxThreads(I)V
    .registers 2
    .param p1, "pMaxThreads"    # I

    .line 44
    iput p1, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->maxThreads:I

    .line 45
    return-void
.end method

.method public setTypeFactory(Lorg/apache/xmlrpc/common/TypeFactory;)V
    .registers 2
    .param p1, "pTypeFactory"    # Lorg/apache/xmlrpc/common/TypeFactory;

    .line 79
    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    .line 80
    return-void
.end method

.method public setWorkerFactory(Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;)V
    .registers 2
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    .line 60
    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->workerFactory:Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    .line 61
    return-void
.end method
