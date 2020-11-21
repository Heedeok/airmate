.class public abstract Lorg/apache/xmlrpc/parser/ExtParser;
.super Ljava/lang/Object;
.source "ExtParser.java"

# interfaces
.implements Lorg/apache/xmlrpc/parser/TypeParser;


# instance fields
.field private handler:Lorg/xml/sax/ContentHandler;

.field private level:I

.field private locator:Lorg/xml/sax/Locator;

.field private final prefixes:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->level:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->prefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .param p1, "pChars"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_29

    .line 64
    invoke-static {p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->isEmpty([CII)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2e

    .line 65
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected non-whitespace content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlrpc/parser/ExtParser;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 69
    :cond_29
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 71
    :goto_2e
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "pURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 147
    iget v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->level:I

    if-eqz v0, :cond_e

    .line 156
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 149
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lorg/apache/xmlrpc/parser/ExtParser;->prefixes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 150
    iget-object v1, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lorg/apache/xmlrpc/parser/ExtParser;->prefixes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v0, v0, 0x2

    goto :goto_f

    .line 152
    .end local v0    # "i":I
    :cond_27
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    .line 154
    nop

    .line 159
    :goto_30
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 3
    .param p1, "pPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 84
    :cond_9
    return-void
.end method

.method protected abstract getExtHandler()Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method protected abstract getTagName()Ljava/lang/String;
.end method

.method public ignorableWhitespace([CII)V
    .registers 5
    .param p1, "pChars"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_7

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/ExtParser;->ignorableWhitespace([CII)V

    .line 78
    :cond_7
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pTarget"    # Ljava/lang/String;
    .param p2, "pData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_9
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .param p1, "pLocator"    # Lorg/xml/sax/Locator;

    .line 96
    iput-object p1, p0, Lorg/apache/xmlrpc/parser/ExtParser;->locator:Lorg/xml/sax/Locator;

    .line 97
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_b

    .line 98
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 100
    :cond_b
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 5
    .param p1, "pName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_a

    .line 91
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 93
    return-void

    .line 88
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle entity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlrpc/parser/ExtParser;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 11
    .param p1, "pURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .param p4, "pAttrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->level:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xmlrpc/parser/ExtParser;->level:I

    if-eqz v0, :cond_e

    .line 140
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_4f

    .line 123
    :cond_e
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ExtParser;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 132
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ExtParser;->getExtHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    .line 133
    iget-object v1, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    iget-object v2, p0, Lorg/apache/xmlrpc/parser/ExtParser;->prefixes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 135
    iget-object v2, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lorg/apache/xmlrpc/parser/ExtParser;->prefixes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xmlrpc/parser/ExtParser;->prefixes:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    .line 136
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    add-int/lit8 v1, v1, 0x2

    goto :goto_2c

    .line 138
    .end local v1    # "i":I
    :cond_4e
    nop

    .line 143
    .end local v0    # "tag":Ljava/lang/String;
    :goto_4f
    return-void

    .line 126
    .restart local v0    # "tag":Ljava/lang/String;
    :cond_50
    new-instance v1, Lorg/xml/sax/SAXParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v4, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-direct {v3, v4, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-direct {v3, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlrpc/parser/ExtParser;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v1, v2, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pPrefix"    # Ljava/lang/String;
    .param p2, "pURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_f

    .line 112
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->prefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->prefixes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 115
    :cond_f
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ExtParser;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_14
    return-void
.end method
