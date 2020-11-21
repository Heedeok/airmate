.class public Lorg/apache/commons/lang/text/ExtendedMessageFormat;
.super Ljava/text/MessageFormat;
.source "ExtendedMessageFormat.java"


# static fields
.field private static final DUMMY_PATTERN:Ljava/lang/String; = ""

.field private static final END_FE:C = '}'

.field private static final ESCAPED_QUOTE:Ljava/lang/String; = "\'\'"

.field private static final QUOTE:C = '\''

.field private static final START_FE:C = '{'

.field private static final START_FMT:C = ','

.field private static final serialVersionUID:J = -0x20c7ae6efb1e381fL


# instance fields
.field private registry:Ljava/util/Map;

.field private toPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "registry"    # Ljava/util/Map;

    .line 124
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 126
    iput-object p3, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "registry"    # Ljava/util/Map;

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method private appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .registers 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "escapingOn"    # Z

    .line 419
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 420
    .local v0, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 421
    .local v1, "c":[C
    const/4 v2, 0x0

    const/16 v3, 0x27

    if-eqz p4, :cond_19

    aget-char v4, v1, v0

    if-ne v4, v3, :cond_19

    .line 422
    if-nez p3, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object v2, p3

    :goto_18
    return-object v2

    .line 424
    :cond_19
    move v4, v0

    .line 425
    .local v4, "lastHold":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .local v5, "i":I
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6a

    .line 426
    if-eqz p4, :cond_4c

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\'\'"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 427
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p3, v1, v4, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 429
    const-string v6, "\'\'"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 430
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 431
    goto :goto_57

    .line 433
    :cond_4c
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    aget-char v6, v1, v6

    if-eq v6, v3, :cond_5a

    .line 439
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 425
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 435
    :cond_5a
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 436
    if-nez p3, :cond_60

    goto :goto_69

    :cond_60
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p3, v1, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-object v2, p3

    :goto_69
    return-object v2

    .line 442
    .end local v5    # "i":I
    :cond_6a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unterminated quoted string at position "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private containsElements(Ljava/util/Collection;)Z
    .registers 5
    .param p1, "coll"    # Ljava/util/Collection;

    .line 464
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1d

    .line 467
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 468
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 469
    const/4 v0, 0x1

    return v0

    .line 472
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_1c
    return v0

    .line 465
    :cond_1d
    :goto_1d
    return v0
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/Format;
    .registers 7
    .param p1, "desc"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-eqz v0, :cond_34

    .line 248
    move-object v0, p1

    .line 249
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 250
    .local v1, "args":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 251
    .local v2, "i":I
    if-lez v2, :cond_21

    .line 252
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 253
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 255
    :cond_21
    iget-object v3, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang/text/FormatFactory;

    .line 256
    .local v3, "factory":Lorg/apache/commons/lang/text/FormatFactory;
    if-eqz v3, :cond_34

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Lorg/apache/commons/lang/text/FormatFactory;->getFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v4

    return-object v4

    .line 260
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "args":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "factory":Lorg/apache/commons/lang/text/FormatFactory;
    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method private getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Z)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "escapingOn"    # Z

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;

    .line 456
    return-void
.end method

.method private insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "customPatterns"    # Ljava/util/ArrayList;

    .line 345
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 346
    return-object p1

    .line 348
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 349
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 350
    .local v1, "pos":Ljava/text/ParsePosition;
    const/4 v3, -0x1

    .line 351
    .local v3, "fe":I
    move v4, v3

    const/4 v3, 0x0

    .line 352
    .local v3, "depth":I
    .local v4, "fe":I
    :cond_1b
    :goto_1b
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6d

    .line 353
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 354
    .local v5, "c":C
    const/16 v6, 0x27

    if-eq v5, v6, :cond_69

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_43

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_3a

    goto :goto_3c

    .line 371
    :cond_3a
    add-int/lit8 v3, v3, -0x1

    .line 374
    :goto_3c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    invoke-direct {p0, v1}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_1b

    .line 359
    :cond_43
    add-int/lit8 v3, v3, 0x1

    .line 360
    const/4 v7, 0x1

    if-ne v3, v7, :cond_1b

    .line 361
    add-int/lit8 v4, v4, 0x1

    .line 362
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 364
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 365
    .local v6, "customPattern":Ljava/lang/String;
    if-eqz v6, :cond_1b

    .line 366
    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 356
    .end local v6    # "customPattern":Ljava/lang/String;
    :cond_69
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;

    .line 357
    goto :goto_1b

    .line 378
    .end local v5    # "c":C
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;
    .registers 3
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .line 403
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 404
    return-object p1
.end method

.method private parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 313
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 314
    .local v0, "start":I
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 315
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 316
    .local v1, "text":I
    const/4 v2, 0x1

    .line 317
    .local v2, "depth":I
    :goto_c
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 318
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_38

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_2b

    goto :goto_3f

    .line 323
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    .line 324
    if-nez v2, :cond_3f

    .line 325
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 320
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 321
    goto :goto_3f

    .line 329
    :cond_3b
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Z)V

    .line 317
    :cond_3f
    :goto_3f
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_c

    .line 333
    :cond_43
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unterminated format element at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .registers 10
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 271
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 272
    .local v0, "start":I
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 274
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 275
    .local v2, "error":Z
    :goto_d
    if-nez v2, :cond_5e

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5e

    .line 276
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 277
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/16 v5, 0x7d

    const/16 v6, 0x2c

    if-eqz v4, :cond_3c

    .line 278
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 279
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 280
    if-eq v3, v6, :cond_3c

    if-eq v3, v5, :cond_3c

    .line 281
    const/4 v2, 0x1

    .line 282
    goto :goto_5a

    .line 285
    :cond_3c
    if-eq v3, v6, :cond_40

    if-ne v3, v5, :cond_50

    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_50

    .line 287
    :try_start_46
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4e} :catch_4f

    return v4

    .line 288
    :catch_4f
    move-exception v4

    .line 293
    :cond_50
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 294
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 275
    .end local v3    # "c":C
    :goto_5a
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_d

    .line 296
    :cond_5e
    if-eqz v2, :cond_87

    .line 297
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid format argument index at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 301
    :cond_87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unterminated format element at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .registers 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 391
    .local v1, "buffer":[C
    :cond_5
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v2

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CI)I

    move-result v0

    .line 392
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 393
    if-lez v0, :cond_25

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 394
    :cond_25
    return-void
.end method


# virtual methods
.method public final applyPattern(Ljava/lang/String;)V
    .registers 16
    .param p1, "pattern"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-nez v0, :cond_e

    .line 144
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 145
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 146
    return-void

    .line 148
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "foundFormats":Ljava/util/ArrayList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "foundDescriptions":Ljava/util/ArrayList;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 152
    .local v2, "stripCustom":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 153
    .local v3, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 154
    .local v5, "c":[C
    const/4 v6, 0x0

    .line 155
    .local v6, "fmtCount":I
    :goto_2c
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_d6

    .line 156
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    aget-char v7, v5, v7

    const/16 v8, 0x27

    const/4 v9, 0x1

    if-eq v7, v8, :cond_d1

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_46

    goto :goto_ac

    .line 161
    :cond_46
    add-int/lit8 v6, v6, 0x1

    .line 162
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 163
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 164
    .local v7, "start":I
    invoke-direct {p0, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 165
    .local v10, "index":I
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 167
    const/4 v8, 0x0

    .line 168
    .local v8, "format":Ljava/text/Format;
    const/4 v11, 0x0

    .line 169
    .local v11, "formatDescription":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v12

    aget-char v12, v5, v12

    const/16 v13, 0x2c

    if-ne v12, v13, :cond_80

    .line 170
    invoke-direct {p0, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v12

    invoke-direct {p0, p1, v12}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v11

    .line 172
    invoke-direct {p0, v11}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getFormat(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v8

    .line 173
    if-nez v8, :cond_80

    .line 174
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_80
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    if-nez v8, :cond_87

    const/4 v12, 0x0

    goto :goto_88

    :cond_87
    move-object v12, v11

    :goto_88
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v6, :cond_93

    const/4 v12, 0x1

    goto :goto_94

    :cond_93
    const/4 v12, 0x0

    :goto_94
    invoke-static {v12}, Lorg/apache/commons/lang/Validate;->isTrue(Z)V

    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v6, :cond_9e

    goto :goto_9f

    :cond_9e
    const/4 v9, 0x0

    :goto_9f
    invoke-static {v9}, Lorg/apache/commons/lang/Validate;->isTrue(Z)V

    .line 181
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    aget-char v9, v5, v9

    const/16 v12, 0x7d

    if-ne v9, v12, :cond_ba

    .line 187
    .end local v7    # "start":I
    .end local v8    # "format":Ljava/text/Format;
    .end local v10    # "index":I
    .end local v11    # "formatDescription":Ljava/lang/String;
    :goto_ac
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    aget-char v7, v5, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    invoke-direct {p0, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto/16 :goto_2c

    .line 182
    .restart local v7    # "start":I
    .restart local v8    # "format":Ljava/text/Format;
    .restart local v10    # "index":I
    .restart local v11    # "formatDescription":Ljava/lang/String;
    :cond_ba
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Unreadable format element at position "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    .end local v7    # "start":I
    .end local v8    # "format":Ljava/text/Format;
    .end local v10    # "index":I
    .end local v11    # "formatDescription":Ljava/lang/String;
    :cond_d1
    invoke-direct {p0, p1, v3, v2, v9}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;

    .line 159
    goto/16 :goto_2c

    .line 191
    :cond_d6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v4}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 192
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 193
    invoke-direct {p0, v0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v4

    .line 197
    .local v4, "origFormats":[Ljava/text/Format;
    const/4 v7, 0x0

    .line 198
    .local v7, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;
    :goto_f6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_109

    .line 199
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/Format;

    .line 200
    .local v9, "f":Ljava/text/Format;
    if-eqz v9, :cond_106

    .line 201
    aput-object v9, v4, v7

    .line 198
    .end local v9    # "f":Ljava/text/Format;
    :cond_106
    add-int/lit8 v7, v7, 0x1

    goto :goto_f6

    .line 204
    .end local v8    # "it":Ljava/util/Iterator;
    :cond_109
    invoke-super {p0, v4}, Ljava/text/MessageFormat;->setFormats([Ljava/text/Format;)V

    .line 206
    .end local v4    # "origFormats":[Ljava/text/Format;
    .end local v7    # "i":I
    :cond_10c
    return-void
.end method

.method public setFormat(ILjava/text/Format;)V
    .registers 4
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 4
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormats([Ljava/text/Format;)V
    .registers 3
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 3
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-object v0
.end method
