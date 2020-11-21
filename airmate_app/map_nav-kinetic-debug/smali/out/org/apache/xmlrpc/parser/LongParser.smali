.class public Lorg/apache/xmlrpc/parser/LongParser;
.super Lorg/apache/xmlrpc/parser/AtomicParser;
.source "LongParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/AtomicParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected setResult(Ljava/lang/String;)V
    .registers 6
    .param p1, "pResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 30
    :try_start_0
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/apache/xmlrpc/parser/AtomicParser;->setResult(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_e

    .line 34
    nop

    .line 35
    return-void

    .line 31
    :catch_e
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/xml/sax/SAXParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse long value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/LongParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1
.end method
