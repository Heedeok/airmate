.class public Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;
.source "XmlRpcLocalStreamTransport.java"


# instance fields
.field private conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

.field private final localServer:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;

.field private request:Lorg/apache/xmlrpc/XmlRpcRequest;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;)V
    .registers 3
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;
    .param p2, "pServer"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 52
    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->localServer:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;

    .line 53
    return-void
.end method


# virtual methods
.method protected close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->localServer:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->getConfig()Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-virtual {v2}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->getServerStreamConnection()Lorg/apache/xmlrpc/common/ServerStreamConnection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;->execute(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)V

    .line 64
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->getResponse()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method protected isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .registers 3
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 56
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipRequesting()Z

    move-result v0

    return v0
.end method

.method protected newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .registers 3
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    .line 70
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    move-result-object v0

    return-object v0
.end method

.method protected writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .registers 7
    .param p1, "pWriter"    # Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;->write(Ljava/io/OutputStream;)V

    .line 77
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {v1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 78
    .local v1, "config":Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    new-instance v2, Lorg/apache/xmlrpc/common/LocalStreamConnection;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v1, v3}, Lorg/apache/xmlrpc/common/LocalStreamConnection;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    .line 79
    return-void
.end method
