.class public Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;
.super Lorg/apache/xmlrpc/common/TypeFactoryImpl;
.source "JaxbTypeFactory.java"


# instance fields
.field private final context:Ljavax/xml/bind/JAXBContext;

.field private final serializer:Lorg/apache/xmlrpc/jaxb/JaxbSerializer;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcController;Ljavax/xml/bind/JAXBContext;)V
    .registers 5
    .param p1, "pController"    # Lorg/apache/xmlrpc/common/XmlRpcController;
    .param p2, "pContext"    # Ljavax/xml/bind/JAXBContext;

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;-><init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V

    .line 48
    iput-object p2, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->context:Ljavax/xml/bind/JAXBContext;

    .line 49
    new-instance v0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer;

    iget-object v1, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->context:Ljavax/xml/bind/JAXBContext;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/jaxb/JaxbSerializer;-><init>(Ljavax/xml/bind/JAXBContext;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->serializer:Lorg/apache/xmlrpc/jaxb/JaxbSerializer;

    .line 50
    return-void
.end method


# virtual methods
.method public getParser(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlrpc/parser/TypeParser;
    .registers 8
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    .param p2, "pContext"    # Lorg/apache/ws/commons/util/NamespaceContextImpl;
    .param p3, "pURI"    # Ljava/lang/String;
    .param p4, "pLocalName"    # Ljava/lang/String;

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->getParser(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlrpc/parser/TypeParser;

    move-result-object v0

    .line 54
    .local v0, "tp":Lorg/apache/xmlrpc/parser/TypeParser;
    if-nez v0, :cond_1e

    .line 55
    const-string v1, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "jaxb"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 56
    new-instance v1, Lorg/apache/xmlrpc/jaxb/JaxbParser;

    iget-object v2, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->context:Ljavax/xml/bind/JAXBContext;

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/jaxb/JaxbParser;-><init>(Ljavax/xml/bind/JAXBContext;)V

    return-object v1

    .line 59
    :cond_1e
    return-object v0
.end method

.method public getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1, p2}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;

    move-result-object v0

    .line 64
    .local v0, "ts":Lorg/apache/xmlrpc/serializer/TypeSerializer;
    if-nez v0, :cond_d

    .line 65
    instance-of v1, p2, Ljavax/xml/bind/Element;

    if-eqz v1, :cond_d

    .line 66
    iget-object v1, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->serializer:Lorg/apache/xmlrpc/jaxb/JaxbSerializer;

    return-object v1

    .line 69
    :cond_d
    return-object v0
.end method
