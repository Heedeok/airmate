.class Lorg/apache/xmlrpc/webserver/ConnectionServer;
.super Lorg/apache/xmlrpc/server/XmlRpcHttpServer;
.source "ConnectionServer.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;-><init>()V

    return-void
.end method


# virtual methods
.method protected setResponseHeader(Lorg/apache/xmlrpc/common/ServerStreamConnection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pConnection"    # Lorg/apache/xmlrpc/common/ServerStreamConnection;
    .param p2, "pHeader"    # Ljava/lang/String;
    .param p3, "pValue"    # Ljava/lang/String;

    .line 66
    move-object v0, p1

    check-cast v0, Lorg/apache/xmlrpc/webserver/Connection;

    invoke-virtual {v0, p2, p3}, Lorg/apache/xmlrpc/webserver/Connection;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pStream"    # Ljava/io/OutputStream;
    .param p3, "pError"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 34
    move-object v0, p1

    check-cast v0, Lorg/apache/xmlrpc/webserver/RequestData;

    .line 36
    .local v0, "data":Lorg/apache/xmlrpc/webserver/RequestData;
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->isByteArrayRequired()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 37
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getConnection()Lorg/apache/xmlrpc/webserver/Connection;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0, p3, v2}, Lorg/apache/xmlrpc/webserver/Connection;->writeError(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_25

    .line 40
    :cond_17
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getConnection()Lorg/apache/xmlrpc/webserver/Connection;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, p3, v2}, Lorg/apache/xmlrpc/webserver/Connection;->writeErrorHeader(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;I)V

    .line 41
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V

    .line 42
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_25} :catch_27

    .line 46
    :goto_25
    nop

    .line 47
    return-void

    .line 44
    :catch_27
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 8
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pStream"    # Ljava/io/OutputStream;
    .param p3, "pResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 50
    move-object v0, p1

    check-cast v0, Lorg/apache/xmlrpc/webserver/RequestData;

    .line 52
    .local v0, "data":Lorg/apache/xmlrpc/webserver/RequestData;
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->isByteArrayRequired()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 53
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getConnection()Lorg/apache/xmlrpc/webserver/Connection;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/apache/xmlrpc/webserver/Connection;->writeResponse(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/io/OutputStream;)V

    goto :goto_22

    .line 56
    :cond_14
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getConnection()Lorg/apache/xmlrpc/webserver/Connection;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlrpc/webserver/Connection;->writeResponseHeader(Lorg/apache/xmlrpc/webserver/RequestData;I)V

    .line 57
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_22} :catch_24

    .line 62
    :goto_22
    nop

    .line 63
    return-void

    .line 60
    :catch_24
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
