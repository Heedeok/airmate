.class public abstract Lorg/apache/xmlrpc/parser/TypeParserImpl;
.super Ljava/lang/Object;
.source "TypeParserImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/parser/TypeParser;


# instance fields
.field private locator:Lorg/xml/sax/Locator;

.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isEmpty([CII)Z
    .registers 6
    .param p0, "pChars"    # [C
    .param p1, "pStart"    # I
    .param p2, "pLength"    # I

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_12

    .line 73
    add-int v2, p1, v1

    aget-char v2, p0, v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_f

    .line 74
    return v0

    .line 72
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 77
    .end local v1    # "i":I
    :cond_12
    const/4 v0, 0x1

    return v0
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

    .line 81
    invoke-static {p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->isEmpty([CII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    return-void

    .line 82
    :cond_7
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 83
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Unexpected non-whitespace character data"

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .param p1, "pPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .registers 2

    .line 44
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/TypeParserImpl;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/TypeParserImpl;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .param p1, "pChars"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "pTarget"    # Ljava/lang/String;
    .param p2, "pData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .param p1, "pLocator"    # Lorg/xml/sax/Locator;

    .line 45
    iput-object p1, p0, Lorg/apache/xmlrpc/parser/TypeParserImpl;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 2
    .param p1, "pResult"    # Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lorg/apache/xmlrpc/parser/TypeParserImpl;->result:Ljava/lang/Object;

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

    .line 55
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle entity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

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

    .line 69
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "pPrefix"    # Ljava/lang/String;
    .param p2, "pURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 60
    return-void
.end method
