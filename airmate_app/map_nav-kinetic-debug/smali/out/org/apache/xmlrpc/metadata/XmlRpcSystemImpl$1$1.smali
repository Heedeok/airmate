.class Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1$1;
.super Ljava/lang/Object;
.source "XmlRpcSystemImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;->getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;)V
    .registers 2
    .param p1, "this$0"    # Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;

    .line 75
    iput-object p1, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1$1;->this$0:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestProcessor(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 3
    .param p1, "request"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1$1;->this$0:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;

    iget-object v0, v0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;->val$systemHandler:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;

    return-object v0
.end method
