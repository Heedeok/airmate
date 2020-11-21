.class public Lorg/apache/xmlrpc/serializer/MapSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "MapSerializer.java"


# static fields
.field public static final MEMBER_TAG:Ljava/lang/String; = "member"

.field public static final NAME_TAG:Ljava/lang/String; = "name"

.field public static final STRUCT_TAG:Ljava/lang/String; = "struct"


# instance fields
.field private final config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

.field private final typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V
    .registers 3
    .param p1, "pTypeFactory"    # Lorg/apache/xmlrpc/common/TypeFactory;
    .param p2, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    .line 52
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/xmlrpc/serializer/MapSerializer;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    .line 54
    iput-object p2, p0, Lorg/apache/xmlrpc/serializer/MapSerializer;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    .line 55
    return-void
.end method

.method private writeValue(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 7
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/xmlrpc/serializer/MapSerializer;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/MapSerializer;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    invoke-interface {v0, v1, p2}, Lorg/apache/xmlrpc/common/TypeFactory;->getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;

    move-result-object v0

    .line 74
    .local v0, "ts":Lorg/apache/xmlrpc/serializer/TypeSerializer;
    if-eqz v0, :cond_e

    .line 77
    invoke-interface {v0, p1, p2}, Lorg/apache/xmlrpc/serializer/TypeSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    .line 78
    return-void

    .line 75
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

    .line 89
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    sget-object v3, Lorg/apache/xmlrpc/serializer/MapSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 90
    const-string v0, ""

    const-string v1, "struct"

    const-string v2, "struct"

    sget-object v3, Lorg/apache/xmlrpc/serializer/MapSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/serializer/MapSerializer;->writeData(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    .line 92
    const-string v0, ""

    const-string v1, "struct"

    const-string v2, "struct"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected writeData(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 8
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 81
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 82
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lorg/apache/xmlrpc/serializer/MapSerializer;->writeEntry(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_b

    .line 86
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method protected writeEntry(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pKey"    # Ljava/lang/Object;
    .param p3, "pValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 58
    const-string v0, ""

    const-string v1, "member"

    const-string v2, "member"

    sget-object v3, Lorg/apache/xmlrpc/serializer/MapSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 59
    const-string v0, ""

    const-string v1, "name"

    const-string v2, "name"

    sget-object v3, Lorg/apache/xmlrpc/serializer/MapSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 60
    iget-object v0, p0, Lorg/apache/xmlrpc/serializer/MapSerializer;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_26

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_26

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlrpc/serializer/MapSerializer;->writeValue(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    goto :goto_36

    .line 63
    :cond_26
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 66
    .end local v0    # "key":Ljava/lang/String;
    :goto_36
    const-string v0, ""

    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p3}, Lorg/apache/xmlrpc/serializer/MapSerializer;->writeValue(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    .line 68
    const-string v0, ""

    const-string v1, "member"

    const-string v2, "member"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
