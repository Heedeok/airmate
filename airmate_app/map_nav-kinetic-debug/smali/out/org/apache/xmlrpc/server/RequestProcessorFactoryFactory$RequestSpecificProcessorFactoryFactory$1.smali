.class Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory$1;
.super Ljava/lang/Object;
.source "RequestProcessorFactoryFactory.java"

# interfaces
.implements Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;->getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;

.field final synthetic val$pClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;Ljava/lang/Class;)V
    .registers 3
    .param p1, "this$0"    # Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;

    .line 114
    iput-object p1, p0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory$1;->this$0:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;

    iput-object p2, p0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory$1;->val$pClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestProcessor(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 4
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory$1;->this$0:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;

    iget-object v1, p0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory$1;->val$pClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;->getRequestProcessor(Ljava/lang/Class;Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
