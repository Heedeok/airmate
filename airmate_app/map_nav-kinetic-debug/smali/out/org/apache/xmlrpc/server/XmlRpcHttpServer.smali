.class public abstract Lorg/apache/xmlrpc/server/XmlRpcHttpServer;
.super Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
.source "XmlRpcHttpServer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOutputStream(Lorg/apache/xmlrpc/common/ServerStreamConnection;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 6
    .param p1, "pConnection"    # Lorg/apache/xmlrpc/common/ServerStreamConnection;
    .param p2, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p3, "pStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipRequesting()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 37
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->setResponseHeader(Lorg/apache/xmlrpc/common/ServerStreamConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getOutputStream(Lorg/apache/xmlrpc/common/ServerStreamConnection;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected abstract setResponseHeader(Lorg/apache/xmlrpc/common/ServerStreamConnection;Ljava/lang/String;Ljava/lang/String;)V
.end method
