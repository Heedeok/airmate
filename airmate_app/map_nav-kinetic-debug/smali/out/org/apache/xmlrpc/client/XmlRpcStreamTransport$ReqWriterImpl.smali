.class public Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;
.super Ljava/lang/Object;
.source "XmlRpcStreamTransport.java"

# interfaces
.implements Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReqWriterImpl"
.end annotation


# instance fields
.field private final request:Lorg/apache/xmlrpc/XmlRpcRequest;

.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .registers 3
    .param p1, "this$0"    # Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;
    .param p2, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;

    .line 56
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    .line 58
    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "pStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {v0}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    .line 68
    .local v0, "config":Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    :try_start_8
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getXmlWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/apache/xmlrpc/serializer/XmlWriterFactory;->getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;

    move-result-object v1

    .line 69
    .local v1, "h":Lorg/xml/sax/ContentHandler;
    new-instance v2, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;

    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;

    invoke-virtual {v3}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/xml/sax/ContentHandler;Lorg/apache/xmlrpc/common/TypeFactory;)V

    .line 70
    .local v2, "xw":Lorg/apache/xmlrpc/serializer/XmlRpcWriter;
    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->write(Lorg/apache/xmlrpc/XmlRpcRequest;)V

    .line 71
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    .line 72
    const/4 p1, 0x0

    .line 74
    .end local v1    # "h":Lorg/xml/sax/ContentHandler;
    .end local v2    # "xw":Lorg/apache/xmlrpc/serializer/XmlRpcWriter;
    if-eqz p1, :cond_35

    :try_start_30
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    move-exception v1

    .line 76
    :cond_35
    :goto_35
    return-void

    .line 74
    :catchall_36
    move-exception v1

    if-eqz p1, :cond_3e

    :try_start_39
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v2

    .line 75
    :cond_3e
    :goto_3e
    throw v1
.end method
