.class public Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;
.super Ljava/lang/Object;
.source "XmlRpcHttpTransport.java"

# interfaces
.implements Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ByteArrayReqWriter"
.end annotation


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .registers 5
    .param p1, "this$0"    # Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;
    .param p2, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->this$0:Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->baos:Ljava/io/ByteArrayOutputStream;

    .line 45
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;

    invoke-direct {v0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/XmlRpcRequest;)V

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->write(Ljava/io/OutputStream;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected getContentLength()I
    .registers 2

    .line 49
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "pStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_11

    .line 56
    const/4 p1, 0x0

    .line 58
    if-eqz p1, :cond_10

    :try_start_b
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    .line 60
    :cond_10
    :goto_10
    return-void

    .line 58
    :catchall_11
    move-exception v0

    if-eqz p1, :cond_19

    :try_start_14
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move-exception v1

    .line 59
    :cond_19
    :goto_19
    throw v0
.end method
