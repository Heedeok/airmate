.class public Lorg/apache/xmlrpc/parser/ByteArrayParser;
.super Lorg/apache/xmlrpc/parser/TypeParserImpl;
.source "ByteArrayParser.java"


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

.field private level:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/TypeParserImpl;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/parser/ByteArrayParser;)Ljava/io/ByteArrayOutputStream;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/parser/ByteArrayParser;

    .line 34
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->baos:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .registers 8
    .param p1, "pChars"    # [C
    .param p2, "pStart"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_17

    .line 45
    invoke-static {p1, p2, p3}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->isEmpty([CII)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1d

    .line 46
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 47
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Unexpected non-whitespace characters"

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 51
    :cond_17
    :try_start_17
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Decoder;->write([CII)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1e

    .line 54
    nop

    .line 56
    :goto_1d
    return-void

    .line 52
    :catch_1e
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    const-string v3, "Failed to decode base64 stream."

    invoke-direct {v1, v3, v2, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "pURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 59
    iget v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    if-nez v0, :cond_25

    .line 61
    :try_start_8
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    invoke-virtual {v0}, Lorg/apache/ws/commons/util/Base64$Decoder;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_18

    .line 64
    nop

    .line 65
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->setResult(Ljava/lang/Object;)V

    .line 71
    return-void

    .line 62
    :catch_18
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    const-string v3, "Failed to decode base64 stream."

    invoke-direct {v1, v3, v2, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v1

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :cond_25
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

    .line 69
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    .line 41
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

    .line 74
    iget v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    if-nez v0, :cond_19

    .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->baos:Ljava/io/ByteArrayOutputStream;

    .line 76
    new-instance v0, Lorg/apache/xmlrpc/parser/ByteArrayParser$1;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Lorg/apache/xmlrpc/parser/ByteArrayParser$1;-><init>(Lorg/apache/xmlrpc/parser/ByteArrayParser;I)V

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    .line 86
    return-void

    .line 82
    :cond_19
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

    .line 84
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method
