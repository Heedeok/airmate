.class public Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;
.super Ljava/lang/Object;
.source "XmlRpcSystemImpl.java"


# instance fields
.field private mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;)V
    .registers 2
    .param p1, "pMapping"    # Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;->mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;

    .line 40
    return-void
.end method

.method public static addSystemHandler(Lorg/apache/xmlrpc/server/PropertyHandlerMapping;)V
    .registers 5
    .param p0, "pMapping"    # Lorg/apache/xmlrpc/server/PropertyHandlerMapping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->getRequestProcessorFactoryFactory()Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    move-result-object v0

    .line 70
    .local v0, "factory":Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;
    new-instance v1, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;

    invoke-direct {v1, p0}, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;-><init>(Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;)V

    .line 71
    .local v1, "systemHandler":Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;
    new-instance v2, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;

    invoke-direct {v2, v1, v0}, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;-><init>(Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->setRequestProcessorFactoryFactory(Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;)V

    .line 86
    const-string v2, "system"

    const-class v3, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;

    invoke-virtual {p0, v2, v3}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->addHandler(Ljava/lang/String;Ljava/lang/Class;)V

    .line 87
    return-void
.end method


# virtual methods
.method public listMethods()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;->mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;

    invoke-interface {v0}, Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;->getListMethods()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public methodHelp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;->mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;->getMethodHelp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public methodSignature(Ljava/lang/String;)[[Ljava/lang/String;
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;->mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;->getMethodSignature(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
