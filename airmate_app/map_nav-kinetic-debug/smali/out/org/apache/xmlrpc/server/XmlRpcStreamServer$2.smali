.class Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;
.super Ljava/lang/Object;
.source "XmlRpcStreamServer.java"

# interfaces
.implements Lorg/apache/xmlrpc/XmlRpcRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->executeMulticall(Lorg/apache/xmlrpc/XmlRpcRequest;)[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$pConfig:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

.field final synthetic val$params:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "this$0"    # Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    .line 276
    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;->this$0:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    iput-object p2, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;->val$pConfig:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    iput-object p3, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;->val$methodName:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    .registers 2

    .line 279
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;->val$pConfig:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;->val$methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Ljava/lang/Object;
    .registers 3
    .param p1, "pIndex"    # I

    .line 294
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;->val$params:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParameterCount()I
    .registers 2

    .line 289
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;->val$params:[Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$2;->val$params:[Ljava/lang/Object;

    array-length v0, v0

    :goto_9
    return v0
.end method
