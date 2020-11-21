.class public Lorg/apache/ws/commons/serialize/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field private currentNode:Lorg/w3c/dom/Node;

.field private document:Lorg/w3c/dom/Document;

.field private locator:Lorg/xml/sax/Locator;

.field private prefixMappingIsAttribute:Z

.field private prefixes:Ljava/util/List;

.field private target:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 8
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 182
    .local v0, "node":Lorg/w3c/dom/Node;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 183
    .local v1, "s":Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    .line 184
    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Text;

    invoke-interface {v2, v1}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 185
    goto :goto_28

    .line 186
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    .line 187
    .local v2, "text":Lorg/w3c/dom/Text;
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 189
    .end local v2    # "text":Lorg/w3c/dom/Text;
    :goto_28
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    .line 177
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->document:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .registers 2

    .line 91
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getTarget()Lorg/w3c/dom/Node;
    .registers 2

    .line 112
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->target:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ws/commons/serialize/DOMBuilder;->characters([CII)V

    .line 194
    return-void
.end method

.method public isPrefixMappingIsAttribute()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixMappingIsAttribute:Z

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pTarget"    # Ljava/lang/String;
    .param p2, "pData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    .line 199
    .local v0, "pi":Lorg/w3c/dom/ProcessingInstruction;
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 200
    return-void
.end method

.method public setDocument(Lorg/w3c/dom/Document;)V
    .registers 2
    .param p1, "pDocument"    # Lorg/w3c/dom/Document;

    .line 70
    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->document:Lorg/w3c/dom/Document;

    .line 71
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .param p1, "pLocator"    # Lorg/xml/sax/Locator;

    .line 84
    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->locator:Lorg/xml/sax/Locator;

    .line 85
    return-void
.end method

.method public setPrefixMappingIsAttribute(Z)V
    .registers 2
    .param p1, "pPrefixMappingIsAttribute"    # Z

    .line 63
    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixMappingIsAttribute:Z

    .line 64
    return-void
.end method

.method public setTarget(Lorg/w3c/dom/Node;)V
    .registers 4
    .param p1, "pNode"    # Lorg/w3c/dom/Node;

    .line 99
    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->target:Lorg/w3c/dom/Node;

    .line 100
    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    .line 101
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 102
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_16

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Document;

    goto :goto_1a

    :cond_16
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_1a
    invoke-virtual {p0, v0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->setDocument(Lorg/w3c/dom/Document;)V

    .line 105
    :cond_1d
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 4
    .param p1, "pName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    .line 204
    .local v0, "entity":Lorg/w3c/dom/EntityReference;
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 205
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 13
    .param p1, "pNamespaceURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .param p4, "pAttr"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 139
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_12

    .line 142
    :cond_d
    invoke-interface {v0, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_17

    .line 140
    :cond_12
    :goto_12
    invoke-interface {v0, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 141
    .local v1, "element":Lorg/w3c/dom/Element;
    nop

    .line 142
    :goto_17
    nop

    .line 144
    const/4 v2, 0x0

    if-eqz p4, :cond_42

    .line 145
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 146
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "uri":Ljava/lang/String;
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "qName":Ljava/lang/String;
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "value":Ljava/lang/String;
    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_37

    goto :goto_3b

    .line 152
    :cond_37
    invoke-interface {v1, v4, v5, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 150
    :cond_3b
    :goto_3b
    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    nop

    .line 145
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "qName":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 156
    .end local v3    # "i":I
    :cond_42
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    if-eqz v3, :cond_93

    .line 157
    nop

    .local v2, "i":I
    :goto_47
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8e

    .line 158
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    .restart local v4    # "uri":Ljava/lang/String;
    if-eqz v3, :cond_83

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    goto :goto_83

    .line 164
    :cond_6c
    const-string v5, "http://www.w3.org/2000/xmlns/"

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "xmlns:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 161
    :cond_83
    :goto_83
    const-string v5, "http://www.w3.org/2000/xmlns/"

    const-string v6, "xmlns"

    invoke-interface {v1, v5, v6, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    nop

    .line 157
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :goto_8b
    add-int/lit8 v2, v2, 0x2

    goto :goto_47

    .line 168
    .end local v2    # "i":I
    :cond_8e
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 170
    :cond_93
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 171
    iput-object v1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    .line 172
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->isPrefixMappingIsAttribute()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 124
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    if-nez v0, :cond_11

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    .line 127
    :cond_11
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1b
    return-void
.end method
