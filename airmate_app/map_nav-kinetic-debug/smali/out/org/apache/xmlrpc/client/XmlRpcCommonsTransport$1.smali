.class Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;
.super Ljava/lang/Object;
.source "XmlRpcCommonsTransport.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

.field final synthetic val$pWriter:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .registers 3
    .param p1, "this$0"    # Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    .line 192
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->val$pWriter:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .registers 3

    .line 221
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    invoke-static {v0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->access$100(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 222
    const-string v0, "text/xml"

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "pOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    invoke-static {v1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->access$000(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;)Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->isUsingByteArrayOutput(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 202
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$1;-><init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;Ljava/io/OutputStream;)V

    goto :goto_19

    .line 208
    :cond_14
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$2;-><init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;Ljava/io/OutputStream;)V

    .line 214
    .local v0, "ostream":Ljava/io/OutputStream;
    :goto_19
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->val$pWriter:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    invoke-interface {v1, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;->write(Ljava/io/OutputStream;)V
    :try_end_1e
    .catch Lorg/apache/xmlrpc/XmlRpcException; {:try_start_0 .. :try_end_1e} :catch_27
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_1e} :catch_20

    .line 219
    .end local v0    # "ostream":Ljava/io/OutputStream;
    nop

    .line 220
    return-void

    .line 217
    :catch_20
    move-exception v0

    .line 218
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/apache/xmlrpc/util/XmlRpcIOException;

    invoke-direct {v1, v0}, Lorg/apache/xmlrpc/util/XmlRpcIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 215
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_27
    move-exception v0

    .line 216
    .local v0, "e":Lorg/apache/xmlrpc/XmlRpcException;
    new-instance v1, Lorg/apache/xmlrpc/util/XmlRpcIOException;

    invoke-direct {v1, v0}, Lorg/apache/xmlrpc/util/XmlRpcIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
