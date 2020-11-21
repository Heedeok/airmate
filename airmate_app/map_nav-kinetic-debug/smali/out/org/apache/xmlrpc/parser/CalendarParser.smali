.class public Lorg/apache/xmlrpc/parser/CalendarParser;
.super Lorg/apache/xmlrpc/parser/AtomicParser;
.source "CalendarParser.java"


# static fields
.field private static final format:Lorg/apache/ws/commons/util/XsDateTimeFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;

    invoke-direct {v0}, Lorg/apache/ws/commons/util/XsDateTimeFormat;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/parser/CalendarParser;->format:Lorg/apache/ws/commons/util/XsDateTimeFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/AtomicParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected setResult(Ljava/lang/String;)V
    .registers 7
    .param p1, "pResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 35
    :try_start_0
    sget-object v0, Lorg/apache/xmlrpc/parser/CalendarParser;->format:Lorg/apache/ws/commons/util/XsDateTimeFormat;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/xmlrpc/parser/AtomicParser;->setResult(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_d} :catch_f

    .line 46
    nop

    .line 47
    return-void

    .line 36
    :catch_f
    move-exception v0

    .line 37
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v1

    .line 39
    .local v1, "offset":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse dateTime value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    .line 42
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse dateTime value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "msg":Ljava/lang/String;
    :goto_46
    new-instance v3, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/CalendarParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v3
.end method
