.class public Lorg/apache/xmlrpc/parser/NullParser;
.super Lorg/apache/xmlrpc/parser/AtomicParser;
.source "NullParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/AtomicParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected setResult(Ljava/lang/String;)V
    .registers 5
    .param p1, "pResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 29
    if-eqz p1, :cond_1b

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1b

    .line 32
    :cond_f
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 33
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/NullParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Unexpected characters in nil element."

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 30
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/xmlrpc/parser/AtomicParser;->setResult(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
