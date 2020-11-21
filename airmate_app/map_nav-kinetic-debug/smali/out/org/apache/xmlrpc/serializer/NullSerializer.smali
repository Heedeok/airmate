.class public Lorg/apache/xmlrpc/serializer/NullSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "NullSerializer.java"


# static fields
.field public static final EX_NIL_TAG:Ljava/lang/String; = "ex:nil"

.field public static final NIL_TAG:Ljava/lang/String; = "nil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

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

    .line 36
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    sget-object v3, Lorg/apache/xmlrpc/serializer/NullSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 37
    const-string v0, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    const-string v1, "nil"

    const-string v2, "ex:nil"

    sget-object v3, Lorg/apache/xmlrpc/serializer/NullSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 38
    const-string v0, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    const-string v1, "nil"

    const-string v2, "ex:nil"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
