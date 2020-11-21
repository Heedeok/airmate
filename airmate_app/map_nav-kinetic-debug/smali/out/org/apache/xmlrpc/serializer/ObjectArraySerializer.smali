.class public Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "ObjectArraySerializer.java"


# static fields
.field public static final ARRAY_TAG:Ljava/lang/String; = "array"

.field public static final DATA_TAG:Ljava/lang/String; = "data"


# instance fields
.field private final config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

.field private final typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V
    .registers 3
    .param p1, "pTypeFactory"    # Lorg/apache/xmlrpc/common/TypeFactory;
    .param p2, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    .line 44
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    .line 46
    iput-object p2, p0, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    .line 47
    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 7
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 62
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    sget-object v3, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 63
    const-string v0, ""

    const-string v1, "array"

    const-string v2, "array"

    sget-object v3, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 64
    const-string v0, ""

    const-string v1, "data"

    const-string v2, "data"

    sget-object v3, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;->writeData(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    .line 66
    const-string v0, ""

    const-string v1, "data"

    const-string v2, "data"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, ""

    const-string v1, "array"

    const-string v2, "array"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected writeData(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 6
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 56
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    .line 57
    .local v0, "data":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_f

    .line 58
    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2}, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;->writeObject(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 60
    .end local v1    # "i":I
    :cond_f
    return-void
.end method

.method protected writeObject(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 7
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    invoke-interface {v0, v1, p2}, Lorg/apache/xmlrpc/common/TypeFactory;->getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;

    move-result-object v0

    .line 50
    .local v0, "ts":Lorg/apache/xmlrpc/serializer/TypeSerializer;
    if-eqz v0, :cond_e

    .line 53
    invoke-interface {v0, p1, p2}, Lorg/apache/xmlrpc/serializer/TypeSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    .line 54
    return-void

    .line 51
    :cond_e
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Java type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
