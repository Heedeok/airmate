.class public Lorg/apache/xmlrpc/parser/DateParser;
.super Lorg/apache/xmlrpc/parser/AtomicParser;
.source "DateParser.java"


# instance fields
.field private final f:Ljava/text/Format;


# direct methods
.method public constructor <init>(Ljava/text/Format;)V
    .registers 2
    .param p1, "pFormat"    # Ljava/text/Format;

    .line 35
    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/AtomicParser;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/xmlrpc/parser/DateParser;->f:Ljava/text/Format;

    .line 37
    return-void
.end method


# virtual methods
.method protected setResult(Ljava/lang/String;)V
    .registers 8
    .param p1, "pResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 42
    return-void

    .line 45
    :cond_b
    :try_start_b
    iget-object v1, p0, Lorg/apache/xmlrpc/parser/DateParser;->f:Ljava/text/Format;

    invoke-virtual {v1, v0}, Ljava/text/Format;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/apache/xmlrpc/parser/AtomicParser;->setResult(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_14} :catch_16

    .line 56
    nop

    .line 57
    return-void

    .line 46
    :catch_16
    move-exception v1

    .line 48
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v2

    .line 49
    .local v2, "offset":I
    invoke-virtual {v1}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_34

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse date value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    .line 52
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse date value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "msg":Ljava/lang/String;
    :goto_4d
    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/DateParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v5

    invoke-direct {v4, v3, v5, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v4
.end method
