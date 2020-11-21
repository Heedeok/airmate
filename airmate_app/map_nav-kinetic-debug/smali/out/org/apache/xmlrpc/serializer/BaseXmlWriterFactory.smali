.class public Lorg/apache/xmlrpc/serializer/BaseXmlWriterFactory;
.super Ljava/lang/Object;
.source "BaseXmlWriterFactory.java"

# interfaces
.implements Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;
    .registers 9
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    .param p2, "pStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/apache/xmlrpc/serializer/BaseXmlWriterFactory;->newXmlWriter()Lorg/apache/ws/commons/serialize/XMLWriter;

    move-result-object v0

    .line 45
    .local v0, "xw":Lorg/apache/ws/commons/serialize/XMLWriter;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/ws/commons/serialize/XMLWriter;->setDeclarating(Z)V

    .line 46
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "enc":Ljava/lang/String;
    if-nez v2, :cond_10

    .line 48
    const-string v2, "UTF-8"

    .line 50
    :cond_10
    invoke-interface {v0, v2}, Lorg/apache/ws/commons/serialize/XMLWriter;->setEncoding(Ljava/lang/String;)V

    .line 51
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/apache/ws/commons/serialize/XMLWriter;->setIndenting(Z)V

    .line 52
    invoke-interface {v0, v1}, Lorg/apache/ws/commons/serialize/XMLWriter;->setFlushing(Z)V

    .line 54
    :try_start_1a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p2, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v0, v1}, Lorg/apache/ws/commons/serialize/XMLWriter;->setWriter(Ljava/io/Writer;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_27} :catch_29

    .line 57
    nop

    .line 58
    return-object v0

    .line 55
    :catch_29
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected newXmlWriter()Lorg/apache/ws/commons/serialize/XMLWriter;
    .registers 2

    .line 39
    new-instance v0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;

    invoke-direct {v0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;-><init>()V

    return-object v0
.end method
