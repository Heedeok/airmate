.class public Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter;
.super Lorg/apache/ws/commons/serialize/XMLWriterImpl;
.source "OrderedAttributeXMLWriter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 15
    .param p1, "pNamespaceURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .param p4, "pAttrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 35
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 36
    .local v0, "attributeNumbers":[Ljava/lang/Integer;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_15

    .line 37
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 39
    .end local v2    # "i":I
    :cond_15
    new-instance v2, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;

    invoke-direct {v2, p0, p4}, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;-><init>(Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter;Lorg/xml/sax/Attributes;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 58
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 59
    .local v2, "orderedAttributes":Lorg/xml/sax/helpers/AttributesImpl;
    nop

    .local v1, "i":I
    :goto_23
    array-length v3, v0

    if-ge v1, v3, :cond_47

    .line 60
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 61
    .local v9, "num":I
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v9    # "num":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 65
    .end local v1    # "i":I
    :cond_47
    invoke-super {p0, p1, p2, p3, v2}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 66
    return-void
.end method
