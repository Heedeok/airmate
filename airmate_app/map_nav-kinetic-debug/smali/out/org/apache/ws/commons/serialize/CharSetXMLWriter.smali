.class public Lorg/apache/ws/commons/serialize/CharSetXMLWriter;
.super Lorg/apache/ws/commons/serialize/XMLWriterImpl;
.source "CharSetXMLWriter.java"


# instance fields
.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 39
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 33
    .local v0, "charSet":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 34
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 36
    :cond_14
    return-void
.end method
