.class public abstract Lorg/apache/xmlrpc/parser/AtomicParser;
.super Lorg/apache/xmlrpc/parser/TypeParserImpl;
.source "AtomicParser.java"


# instance fields
.field private level:I

.field protected sb:Ljava/lang/StringBuffer;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/TypeParserImpl;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .param p1, "pChars"    # [C
    .param p2, "pStart"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/AtomicParser;->sb:Ljava/lang/StringBuffer;

    if-nez v0, :cond_17

    .line 48
    invoke-static {p1, p2, p3}, Lorg/apache/xmlrpc/parser/AtomicParser;->isEmpty([CII)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1c

    .line 49
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 50
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/AtomicParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Unexpected non-whitespace characters"

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 53
    :cond_17
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/AtomicParser;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 55
    :goto_1c
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

    .line 58
    iget v0, p0, Lorg/apache/xmlrpc/parser/AtomicParser;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/parser/AtomicParser;->level:I

    if-nez v0, :cond_12

    .line 59
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/AtomicParser;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/parser/AtomicParser;->setResult(Ljava/lang/String;)V

    .line 65
    return-void

    .line 61
    :cond_12
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end tag in atomic element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/AtomicParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method protected abstract setResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlrpc/parser/AtomicParser;->level:I

    .line 44
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .param p1, "pURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .param p4, "pAttrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 68
    iget v0, p0, Lorg/apache/xmlrpc/parser/AtomicParser;->level:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xmlrpc/parser/AtomicParser;->level:I

    if-nez v0, :cond_10

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/AtomicParser;->sb:Ljava/lang/StringBuffer;

    .line 75
    return-void

    .line 71
    :cond_10
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start tag in atomic element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/AtomicParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method
