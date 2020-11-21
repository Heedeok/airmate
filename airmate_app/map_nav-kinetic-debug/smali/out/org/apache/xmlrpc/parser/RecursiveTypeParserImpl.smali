.class public abstract Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;
.super Lorg/apache/xmlrpc/parser/TypeParserImpl;
.source "RecursiveTypeParserImpl.java"


# instance fields
.field protected final cfg:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

.field private final context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

.field private final factory:Lorg/apache/xmlrpc/common/TypeFactory;

.field private inValueTag:Z

.field private text:Ljava/lang/StringBuffer;

.field private typeParser:Lorg/apache/xmlrpc/parser/TypeParser;


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Lorg/apache/xmlrpc/common/TypeFactory;)V
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    .param p2, "pContext"    # Lorg/apache/ws/commons/util/NamespaceContextImpl;
    .param p3, "pFactory"    # Lorg/apache/xmlrpc/common/TypeFactory;

    .line 52
    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/TypeParserImpl;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    .line 53
    iput-object p1, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->cfg:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    .line 54
    iput-object p2, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

    .line 55
    iput-object p3, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->factory:Lorg/apache/xmlrpc/common/TypeFactory;

    .line 56
    return-void
.end method


# virtual methods
.method protected abstract addResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public characters([CII)V
    .registers 5
    .param p1, "pChars"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_12

    .line 142
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_e

    .line 143
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_17

    .line 145
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->characters([CII)V

    goto :goto_17

    .line 148
    :cond_12
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParser;->characters([CII)V

    .line 150
    :goto_17
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

    .line 98
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_1a

    .line 99
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-eqz v0, :cond_e

    .line 103
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 100
    :cond_e
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 101
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Invalid state: No type parser configured."

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 106
    :cond_1a
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 107
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Invalid state: Not inside value tag."

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 3
    .param p1, "pPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_8

    .line 190
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_d

    .line 192
    :cond_8
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ws/commons/util/NamespaceContextImpl;->endPrefixMapping(Ljava/lang/String;)V

    .line 194
    :goto_d
    return-void
.end method

.method protected endValueTag()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_32

    .line 72
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_18

    .line 73
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->addResult(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2a

    .line 76
    :cond_18
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0}, Lorg/apache/xmlrpc/parser/TypeParser;->endDocument()V

    .line 78
    :try_start_1d
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0}, Lorg/apache/xmlrpc/parser/TypeParser;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->addResult(Ljava/lang/Object;)V
    :try_end_26
    .catch Lorg/apache/xmlrpc/XmlRpcException; {:try_start_1d .. :try_end_26} :catch_2b

    .line 81
    nop

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    .line 88
    :goto_2a
    return-void

    .line 79
    :catch_2b
    move-exception v0

    .line 80
    .local v0, "e":Lorg/apache/xmlrpc/XmlRpcException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 85
    .end local v0    # "e":Lorg/apache/xmlrpc/XmlRpcException;
    :cond_32
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 86
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Invalid state: Not inside value tag."

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
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

    .line 153
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_12

    .line 154
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_e

    .line 155
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_17

    .line 157
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->ignorableWhitespace([CII)V

    goto :goto_17

    .line 160
    :cond_12
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParser;->ignorableWhitespace([CII)V

    .line 162
    :goto_17
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

    .line 165
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_8

    .line 166
    invoke-super {p0, p1, p2}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 168
    :cond_8
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlrpc/parser/TypeParser;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_d
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 3
    .param p1, "pEntity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_8

    .line 174
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->skippedEntity(Ljava/lang/String;)V

    goto :goto_d

    .line 176
    :cond_8
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/parser/TypeParser;->skippedEntity(Ljava/lang/String;)V

    .line 178
    :goto_d
    return-void
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    .line 92
    iget-object v1, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    .line 94
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .param p1, "pURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .param p4, "pAttrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_a9

    .line 114
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_a3

    .line 115
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->factory:Lorg/apache/xmlrpc/common/TypeFactory;

    iget-object v1, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->cfg:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    iget-object v2, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/apache/xmlrpc/common/TypeFactory;->getParser(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlrpc/parser/TypeParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    .line 116
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_72

    .line 117
    const-string v0, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->cfg:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-nez v0, :cond_52

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is invalid, if isEnabledForExtensions() == false."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    new-instance v3, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    invoke-direct {v3, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v1

    .line 122
    .end local v0    # "msg":Ljava/lang/String;
    :cond_52
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 126
    :cond_72
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlrpc/parser/TypeParser;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 127
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0}, Lorg/apache/xmlrpc/parser/TypeParser;->startDocument()V

    .line 128
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_a3

    .line 129
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    iget-object v1, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/xmlrpc/parser/TypeParser;->characters([CII)V

    .line 130
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 133
    :cond_a3
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/xmlrpc/parser/TypeParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 138
    return-void

    .line 135
    :cond_a9
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 136
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Invalid state: Not inside value tag."

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
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

    .line 181
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_8

    .line 182
    invoke-super {p0, p1, p2}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 184
    :cond_8
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ws/commons/util/NamespaceContextImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_d
    return-void
.end method

.method protected startValueTag()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    .line 64
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    .line 66
    return-void
.end method
