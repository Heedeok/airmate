.class public Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;
.super Ljava/lang/Object;
.source "DefaultXMLWriterFactory.java"

# interfaces
.implements Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# instance fields
.field private final factory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_3
    new-instance v0, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;

    invoke-direct {v0}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;-><init>()V

    .line 47
    .local v0, "csw":Lorg/apache/ws/commons/serialize/CharSetXMLWriter;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 48
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-virtual {v0, v1}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->setWriter(Ljava/io/Writer;)V

    .line 49
    invoke-virtual {v0}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->startDocument()V

    .line 50
    const-string v2, ""

    const-string v3, "test"

    const-string v4, "test"

    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 51
    const-string v2, ""

    const-string v3, "test"

    const-string v4, "test"

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->endDocument()V

    .line 53
    new-instance v2, Lorg/apache/xmlrpc/serializer/CharSetXmlWriterFactory;

    invoke-direct {v2}, Lorg/apache/xmlrpc/serializer/CharSetXmlWriterFactory;-><init>()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_32} :catch_34

    move-object v0, v2

    .line 56
    .end local v1    # "sw":Ljava/io/StringWriter;
    .local v0, "xwf":Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
    goto :goto_3b

    .line 54
    .end local v0    # "xwf":Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
    :catch_34
    move-exception v0

    .line 55
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/xmlrpc/serializer/BaseXmlWriterFactory;

    invoke-direct {v1}, Lorg/apache/xmlrpc/serializer/BaseXmlWriterFactory;-><init>()V

    move-object v0, v1

    .line 57
    .local v0, "xwf":Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
    :goto_3b
    iput-object v0, p0, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;->factory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    .line 58
    return-void
.end method


# virtual methods
.method public getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;
    .registers 4
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    .param p2, "pStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;->factory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlrpc/serializer/XmlWriterFactory;->getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;

    move-result-object v0

    return-object v0
.end method
