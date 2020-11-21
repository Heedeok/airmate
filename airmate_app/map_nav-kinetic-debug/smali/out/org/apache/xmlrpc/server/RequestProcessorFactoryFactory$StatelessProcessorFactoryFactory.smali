.class public Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;
.super Ljava/lang/Object;
.source "RequestProcessorFactoryFactory.java"

# interfaces
.implements Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatelessProcessorFactoryFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRequestProcessor(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "pClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 146
    invoke-static {p1}, Lorg/apache/xmlrpc/metadata/Util;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
    .registers 4
    .param p1, "pClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;->getRequestProcessor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "processor":Ljava/lang/Object;
    new-instance v1, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory$1;-><init>(Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;Ljava/lang/Object;)V

    return-object v1
.end method
