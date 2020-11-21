.class Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;
.super Ljava/lang/Object;
.source "XmlRpcStreamServer.java"

# interfaces
.implements Lorg/apache/xmlrpc/XmlRpcRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)Lorg/apache/xmlrpc/XmlRpcRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

.field final synthetic val$pConfig:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

.field final synthetic val$params:Ljava/util/List;

.field final synthetic val$parser:Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;Ljava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    .line 78
    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;->this$0:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    iput-object p2, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;->val$pConfig:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    iput-object p3, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;->val$parser:Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;

    iput-object p4, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;->val$params:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;->val$pConfig:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;->val$parser:Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(I)Ljava/lang/Object;
    .registers 3
    .param p1, "pIndex"    # I

    .line 82
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;->val$params:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameterCount()I
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;->val$params:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;->val$params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_c
    return v0
.end method
