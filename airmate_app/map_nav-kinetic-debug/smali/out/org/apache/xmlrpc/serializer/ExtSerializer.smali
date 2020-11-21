.class public abstract Lorg/apache/xmlrpc/serializer/ExtSerializer;
.super Ljava/lang/Object;
.source "ExtSerializer.java"

# interfaces
.implements Lorg/apache/xmlrpc/serializer/TypeSerializer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getTagName()Ljava/lang/String;
.end method

.method protected abstract serialize(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 9
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/apache/xmlrpc/serializer/ExtSerializer;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/serializer/ExtSerializer;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "exTag":Ljava/lang/String;
    const-string v2, ""

    const-string v3, "value"

    const-string v4, "value"

    sget-object v5, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 41
    const-string v2, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    sget-object v3, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v2, v0, v1, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/serializer/ExtSerializer;->serialize(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    .line 43
    const-string v2, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-interface {p1, v2, v0, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, ""

    const-string v3, "value"

    const-string v4, "value"

    invoke-interface {p1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
