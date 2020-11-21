.class public Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;
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
    name = "GzipReqWriter"
.end annotation


# instance fields
.field private final reqWriter:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .registers 3
    .param p1, "this$0"    # Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;
    .param p2, "pReqWriter"    # Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    .line 81
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;->this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;->reqWriter:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    .line 83
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

    .line 87
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    .local v0, "gStream":Ljava/util/zip/GZIPOutputStream;
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;->reqWriter:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    invoke-interface {v1, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;->write(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_18
    .catchall {:try_start_0 .. :try_end_d} :catchall_16

    .line 90
    const/4 p1, 0x0

    .line 94
    .end local v0    # "gStream":Ljava/util/zip/GZIPOutputStream;
    if-eqz p1, :cond_15

    :try_start_10
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-exception v0

    .line 96
    :cond_15
    :goto_15
    return-void

    .line 94
    :catchall_16
    move-exception v0

    goto :goto_34

    .line 91
    :catch_18
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    :try_start_19
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_16

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :goto_34
    if-eqz p1, :cond_3b

    :try_start_36
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v1

    .line 95
    :cond_3b
    :goto_3b
    throw v0
.end method
