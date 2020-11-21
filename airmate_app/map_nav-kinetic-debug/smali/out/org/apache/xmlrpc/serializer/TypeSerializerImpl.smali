.class public abstract Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.super Ljava/lang/Object;
.source "TypeSerializerImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/serializer/TypeSerializer;


# static fields
.field public static final VALUE_TAG:Ljava/lang/String; = "value"

.field protected static final ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pTagName"    # Ljava/lang/String;
    .param p3, "pValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 36
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;[C)V

    .line 37
    return-void
.end method

.method protected write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .param p4, "pValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 53
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    sget-object v3, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 54
    const-string v0, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    sget-object v1, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, p2, p3, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 55
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 56
    .local v0, "value":[C
    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 57
    const-string v1, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-interface {p1, v1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, ""

    const-string v2, "value"

    const-string v3, "value"

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;[C)V
    .registers 8
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pTagName"    # Ljava/lang/String;
    .param p3, "pValue"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 40
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    sget-object v3, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 41
    if-eqz p2, :cond_14

    .line 42
    const-string v0, ""

    sget-object v1, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, p2, p2, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 44
    :cond_14
    const/4 v0, 0x0

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 45
    if-eqz p2, :cond_20

    .line 46
    const-string v0, ""

    invoke-interface {p1, v0, p2, p2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_20
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
