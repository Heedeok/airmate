.class final Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;
.super Ljava/lang/Object;
.source "XmlRpcSystemImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;->addSystemHandler(Lorg/apache/xmlrpc/server/PropertyHandlerMapping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$factory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

.field final synthetic val$systemHandler:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;->val$systemHandler:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;

    iput-object p2, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;->val$factory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
    .registers 3
    .param p1, "pClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 74
    const-class v0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 75
    new-instance v0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1$1;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1$1;-><init>(Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;)V

    return-object v0

    .line 82
    :cond_e
    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;->val$factory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;->getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

    move-result-object v0

    return-object v0
.end method
