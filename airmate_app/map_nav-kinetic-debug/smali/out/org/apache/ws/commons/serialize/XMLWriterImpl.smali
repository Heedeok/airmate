.class public Lorg/apache/ws/commons/serialize/XMLWriterImpl;
.super Ljava/lang/Object;
.source "XMLWriterImpl.java"

# interfaces
.implements Lorg/apache/ws/commons/serialize/XMLWriter;


# static fields
.field private static final STATE_IN_ELEMENT:I = 0x2

.field private static final STATE_IN_START_ELEMENT:I = 0x1

.field private static final STATE_OUTSIDE:I


# instance fields
.field curIndent:I

.field private declarating:Z

.field private delayedPrefixes:Ljava/util/Map;

.field private encoding:Ljava/lang/String;

.field private flushing:Z

.field private indentString:Ljava/lang/String;

.field private indenting:Z

.field private l:Lorg/xml/sax/Locator;

.field private lineFeed:Ljava/lang/String;

.field private state:I

.field private w:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    return-void
.end method

.method private indentMe()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_28

    .line 265
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isIndenting()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 266
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->getLineFeed()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 268
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 270
    :cond_15
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->getIndentString()Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_28

    .line 272
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    if-ge v1, v2, :cond_28

    .line 273
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 278
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_28
    return-void
.end method

.method private stopTerminator()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 182
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_10

    .line 183
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 185
    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    .line 187
    :cond_13
    return-void
.end method

.method private writeCData(Ljava/lang/String;)V
    .registers 7
    .param p1, "v"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 282
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    if-ge v1, v0, :cond_68

    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 284
    .local v2, "c":C
    const/16 v3, 0x22

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_56

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_4e

    packed-switch v2, :pswitch_data_6a

    .line 291
    invoke-virtual {p0, v2}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->canEncode(C)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 292
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    .line 293
    goto :goto_65

    .line 294
    :cond_26
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&#"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_65

    .line 288
    :pswitch_3e
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&apos;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_65

    .line 285
    :pswitch_46
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_65

    .line 287
    :cond_4e
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_65

    .line 286
    :cond_56
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_65

    .line 289
    :cond_5e
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 282
    .end local v2    # "c":C
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 301
    .end local v1    # "j":I
    :cond_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x26
        :pswitch_46
        :pswitch_3e
    .end packed-switch
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 227
    const/16 v0, 0xa

    if-eq p1, v0, :cond_f

    const/16 v0, 0x20

    if-lt p1, v0, :cond_d

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public characters([CII)V
    .registers 9
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 197
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->stopTerminator()V

    .line 198
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-nez v0, :cond_8

    return-void

    .line 199
    :cond_8
    add-int v0, p2, p3

    .line 200
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_66

    .line 201
    aget-char v2, p1, v1

    .line 202
    .local v2, "c":C
    const/16 v3, 0xd

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x26

    if-eq v2, v3, :cond_56

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_4e

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_46

    packed-switch v2, :pswitch_data_70

    .line 211
    invoke-virtual {p0, v2}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->canEncode(C)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 212
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    .line 213
    goto :goto_63

    .line 214
    :cond_2e
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&#"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_63

    .line 205
    :cond_46
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_63

    .line 204
    :cond_4e
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_63

    .line 203
    :cond_56
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_63

    .line 209
    :cond_5e
    :pswitch_5e
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_63} :catch_68

    .line 200
    .end local v2    # "c":C
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 223
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_66
    nop

    .line 224
    return-void

    .line 221
    :catch_68
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    nop

    :pswitch_data_70
    .packed-switch 0x9
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method public endDocument()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isFlushing()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_2c

    .line 162
    :try_start_a
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10

    .line 165
    goto :goto_2c

    .line 163
    :catch_10
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to flush target writer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2c
    :goto_2c
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isIndenting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 241
    iget v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    .line 243
    :cond_c
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_43

    .line 245
    :try_start_10
    iget v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    .line 246
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 247
    iput v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    .line 248
    goto :goto_39

    .line 249
    :cond_1f
    iget v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    if-nez v0, :cond_26

    .line 250
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indentMe()V

    .line 252
    :cond_26
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 256
    :goto_39
    iput v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3b} :catch_3c

    .line 259
    goto :goto_43

    .line 257
    :catch_3c
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 261
    .end local v0    # "e":Ljava/io/IOException;
    :cond_43
    :goto_43
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-eqz v0, :cond_25

    .line 113
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 114
    const-string p1, "xmlns"

    .line 115
    goto :goto_20

    .line 116
    :cond_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    :goto_20
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_25
    return-void
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->l:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getIndentString()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indentString:Ljava/lang/String;

    return-object v0
.end method

.method public getLineFeed()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->lineFeed:Ljava/lang/String;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

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

    .line 177
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->characters([CII)V

    .line 178
    return-void
.end method

.method public isDeclarating()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->declarating:Z

    return v0
.end method

.method public isFlushing()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->flushing:Z

    return v0
.end method

.method public isIndenting()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indenting:Z

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 375
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->stopTerminator()V

    .line 376
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_26

    .line 377
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 380
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_28

    .line 385
    :cond_26
    nop

    .line 386
    return-void

    .line 383
    :catch_28
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setDeclarating(Z)V
    .registers 2
    .param p1, "pDeclarating"    # Z

    .line 47
    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->declarating:Z

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .param p1, "pLocator"    # Lorg/xml/sax/Locator;

    .line 75
    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->l:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "pEncoding"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFlushing(Z)V
    .registers 2
    .param p1, "pFlushing"    # Z

    .line 55
    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->flushing:Z

    return-void
.end method

.method public setIndentString(Ljava/lang/String;)V
    .registers 2
    .param p1, "pIndentString"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indentString:Ljava/lang/String;

    return-void
.end method

.method public setIndenting(Z)V
    .registers 2
    .param p1, "pIndenting"    # Z

    .line 49
    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indenting:Z

    return-void
.end method

.method public setLineFeed(Ljava/lang/String;)V
    .registers 2
    .param p1, "pLineFeed"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->lineFeed:Ljava/lang/String;

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .registers 2
    .param p1, "pWriter"    # Ljava/io/Writer;

    .line 61
    iput-object p1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    .line 62
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 4
    .param p1, "ent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 363
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Don\'t know how to skip entities"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I

    .line 130
    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    .line 131
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isDeclarating()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_6d

    .line 133
    :try_start_18
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v1, "<?xml version=\"1.0\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "enc":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 136
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v2, " encoding=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    :cond_38
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isIndenting()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 142
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->getLineFeed()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "lf":Ljava/lang/String;
    if-eqz v1, :cond_50

    .line 144
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_50} :catch_51

    .line 149
    .end local v0    # "enc":Ljava/lang/String;
    .end local v1    # "lf":Ljava/lang/String;
    :cond_50
    goto :goto_6d

    .line 147
    :catch_51
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to write XML declaration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6d
    :goto_6d
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 12
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 314
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->stopTerminator()V

    .line 315
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->isIndenting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 316
    iget v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    if-lez v0, :cond_11

    .line 317
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->indentMe()V

    .line 319
    :cond_11
    iget v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->curIndent:I

    .line 322
    :cond_16
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    if-eqz v0, :cond_ae

    .line 323
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 324
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 325
    const/16 v0, 0x22

    const/16 v2, 0x20

    if-eqz p4, :cond_5f

    .line 326
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .local v3, "i":I
    :goto_30
    if-lez v3, :cond_5f

    .line 327
    iget-object v4, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(I)V

    .line 328
    add-int/lit8 v3, v3, -0x1

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 330
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-eqz v5, :cond_4b

    .line 331
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_4b
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 334
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->writeCData(Ljava/lang/String;)V

    .line 335
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(I)V

    .line 336
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_30

    .line 338
    .end local v3    # "i":I
    :cond_5f
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_ae

    .line 339
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 340
    .local v3, "iter":Ljava/util/Iterator;
    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 341
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 342
    .local v4, "entry":Ljava/util/Map$Entry;
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(I)V

    .line 343
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 345
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 346
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->w:Ljava/io/Writer;

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(I)V

    .line 347
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_75

    .line 348
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_a9
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 351
    :cond_ae
    iput v1, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->state:I
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b0} :catch_b2

    .line 354
    nop

    .line 355
    return-void

    .line 352
    :catch_b2
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    .line 95
    :cond_b
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 97
    return-void

    .line 99
    :cond_1a
    const-string p1, "xmlns"

    .line 100
    goto :goto_2e

    .line 101
    :cond_1d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    :goto_2e
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/XMLWriterImpl;->delayedPrefixes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method
