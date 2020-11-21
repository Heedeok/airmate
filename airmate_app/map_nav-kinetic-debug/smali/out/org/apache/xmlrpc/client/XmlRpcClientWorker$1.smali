.class Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;
.super Ljava/lang/Object;
.source "XmlRpcClientWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

.field final synthetic val$pCallback:Lorg/apache/xmlrpc/client/AsyncCallback;

.field final synthetic val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClientWorker;Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .registers 4
    .param p1, "this$0"    # Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    .line 74
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;

    iput-object p3, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pCallback:Lorg/apache/xmlrpc/client/AsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 79
    .local v1, "th":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    invoke-virtual {v2}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 80
    .local v2, "client":Lorg/apache/xmlrpc/client/XmlRpcClient;
    invoke-virtual {v2}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getTransportFactory()Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;->getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {v3, v4}, Lorg/apache/xmlrpc/client/XmlRpcTransport;->sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_18} :catch_1a

    move-object v0, v3

    .line 83
    .end local v2    # "client":Lorg/apache/xmlrpc/client/XmlRpcClient;
    goto :goto_1c

    .line 81
    :catch_1a
    move-exception v2

    .line 82
    .local v2, "t":Ljava/lang/Throwable;
    move-object v1, v2

    .line 84
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1c
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    invoke-static {v2}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->access$000(Lorg/apache/xmlrpc/client/XmlRpcClientWorker;)Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    .line 85
    if-nez v1, :cond_31

    .line 86
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pCallback:Lorg/apache/xmlrpc/client/AsyncCallback;

    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {v2, v3, v0}, Lorg/apache/xmlrpc/client/AsyncCallback;->handleResult(Lorg/apache/xmlrpc/XmlRpcRequest;Ljava/lang/Object;)V

    goto :goto_38

    .line 88
    :cond_31
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pCallback:Lorg/apache/xmlrpc/client/AsyncCallback;

    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlrpc/client/AsyncCallback;->handleError(Lorg/apache/xmlrpc/XmlRpcRequest;Ljava/lang/Throwable;)V

    .line 90
    :goto_38
    return-void
.end method
