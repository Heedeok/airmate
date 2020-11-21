.class public Lorg/apache/commons/lang/text/StrTokenizer;
.super Ljava/lang/Object;
.source "StrTokenizer.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 93
    new-instance v0, Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    .line 94
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->commaMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 95
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 96
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 97
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 98
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 99
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 101
    new-instance v0, Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    .line 102
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->tabMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 103
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 104
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 105
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 106
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 107
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 120
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 243
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 120
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 253
    if-eqz p1, :cond_2a

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    goto :goto_2d

    .line 256
    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 258
    :goto_2d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C

    .line 267
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .line 302
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    .line 303
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .line 278
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang/text/StrMatcher;)V
    .registers 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 289
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p3, "quote"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 315
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;Lorg/apache/commons/lang/text/StrMatcher;)V

    .line 316
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 317
    return-void
.end method

.method public constructor <init>([C)V
    .registers 3
    .param p1, "input"    # [C

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 120
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 330
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 331
    return-void
.end method

.method public constructor <init>([CC)V
    .registers 3
    .param p1, "input"    # [C
    .param p2, "delim"    # C

    .line 343
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([C)V

    .line 344
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 345
    return-void
.end method

.method public constructor <init>([CCC)V
    .registers 4
    .param p1, "input"    # [C
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .line 387
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([CC)V

    .line 388
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 389
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .registers 3
    .param p1, "input"    # [C
    .param p2, "delim"    # Ljava/lang/String;

    .line 357
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([C)V

    .line 358
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 359
    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang/text/StrMatcher;)V
    .registers 3
    .param p1, "input"    # [C
    .param p2, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 371
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([C)V

    .line 372
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 373
    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;)V
    .registers 4
    .param p1, "input"    # [C
    .param p2, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p3, "quote"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 403
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([CLorg/apache/commons/lang/text/StrMatcher;)V

    .line 404
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 405
    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p1, "list"    # Ljava/util/List;
    .param p2, "tok"    # Ljava/lang/String;

    .line 672
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 673
    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 674
    return-void

    .line 676
    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 677
    const/4 p2, 0x0

    .line 680
    :cond_16
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    return-void
.end method

.method private checkTokenized()V
    .registers 4

    .line 612
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_34

    .line 613
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 616
    .local v0, "split":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    goto :goto_34

    .line 618
    .end local v0    # "split":Ljava/util/List;
    :cond_1d
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 619
    .restart local v0    # "split":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 622
    .end local v0    # "split":Ljava/util/List;
    :cond_34
    :goto_34
    return-void
.end method

.method private static getCSVClone()Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 1

    .line 139
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 1

    .line 152
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 165
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    .line 166
    .local v0, "tok":Lorg/apache/commons/lang/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 167
    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p0, "input"    # [C

    .line 180
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    .line 181
    .local v0, "tok":Lorg/apache/commons/lang/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 182
    return-object v0
.end method

.method private static getTSVClone()Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 1

    .line 191
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 1

    .line 204
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 215
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    .line 216
    .local v0, "tok":Lorg/apache/commons/lang/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 217
    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p0, "input"    # [C

    .line 228
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    .line 229
    .local v0, "tok":Lorg/apache/commons/lang/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 230
    return-object v0
.end method

.method private isQuote([CIIII)Z
    .registers 10
    .param p1, "chars"    # [C
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .param p4, "quoteStart"    # I
    .param p5, "quoteLen"    # I

    .line 844
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p5, :cond_17

    .line 845
    add-int v2, p2, v1

    if-ge v2, p3, :cond_16

    add-int v2, p2, v1

    aget-char v2, p1, v2

    add-int v3, p4, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_13

    goto :goto_16

    .line 844
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 846
    :cond_16
    :goto_16
    return v0

    .line 849
    .end local v1    # "i":I
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private readNextToken([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;)I
    .registers 16
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p5, "tokens"    # Ljava/util/List;

    .line 697
    :goto_0
    if-ge p2, p3, :cond_2f

    .line 698
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 701
    .local v0, "removeLen":I
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-gtz v1, :cond_2f

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_2d

    .line 704
    goto :goto_2f

    .line 706
    :cond_2d
    add-int/2addr p2, v0

    goto :goto_0

    .line 710
    .end local v0    # "removeLen":I
    :cond_2f
    :goto_2f
    if-lt p2, p3, :cond_38

    .line 711
    const-string v0, ""

    invoke-direct {p0, p5, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 712
    const/4 v0, -0x1

    return v0

    .line 716
    :cond_38
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v8

    .line 717
    .local v8, "delimLen":I
    if-lez v8, :cond_4a

    .line 718
    const-string v0, ""

    invoke-direct {p0, p5, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 719
    add-int v0, p2, v8

    return v0

    .line 723
    :cond_4a
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v9

    .line 724
    .local v9, "quoteLen":I
    if-lez v9, :cond_62

    .line 725
    add-int v2, p2, v9

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/lang/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;II)I

    move-result v0

    return v0

    .line 727
    :cond_62
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/lang/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;II)I

    move-result v0

    return v0
.end method

.method private readWithQuotes([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;II)I
    .registers 25
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p5, "tokens"    # Ljava/util/List;
    .param p6, "quoteStart"    # I
    .param p7, "quoteLen"    # I

    .line 749
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang/text/StrBuilder;->clear()Lorg/apache/commons/lang/text/StrBuilder;

    .line 750
    move/from16 v0, p2

    .line 751
    .local v0, "pos":I
    if-lez v12, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 752
    .local v1, "quoting":Z
    :goto_18
    move v14, v0

    move v15, v1

    const/4 v0, 0x0

    .end local v1    # "quoting":Z
    .local v0, "trimStart":I
    .local v14, "pos":I
    .local v15, "quoting":Z
    :goto_1b
    move v5, v0

    .line 754
    .end local v0    # "trimStart":I
    .local v5, "trimStart":I
    if-ge v14, v9, :cond_b7

    .line 758
    if-eqz v15, :cond_62

    .line 765
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move v13, v5

    .end local v5    # "trimStart":I
    .local v13, "trimStart":I
    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 766
    add-int v2, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 768
    invoke-virtual {v10, v7, v14, v12}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    .line 769
    mul-int/lit8 v0, v12, 0x2

    add-int/2addr v14, v0

    .line 770
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    .line 771
    .end local v13    # "trimStart":I
    .restart local v0    # "trimStart":I
    goto :goto_1b

    .line 775
    .end local v0    # "trimStart":I
    .restart local v13    # "trimStart":I
    :cond_4f
    const/4 v15, 0x0

    .line 776
    add-int/2addr v14, v12

    .line 777
    nop

    .line 752
    .end local v13    # "trimStart":I
    .restart local v0    # "trimStart":I
    :goto_52
    move v0, v13

    goto :goto_1b

    .line 781
    .end local v0    # "trimStart":I
    .restart local v13    # "trimStart":I
    :cond_54
    add-int/lit8 v0, v14, 0x1

    .local v0, "pos":I
    aget-char v1, v7, v14

    .end local v14    # "pos":I
    invoke-virtual {v10, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 782
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v1

    .line 752
    move v14, v0

    move v0, v1

    goto :goto_1b

    .line 788
    .end local v0    # "pos":I
    .end local v13    # "trimStart":I
    .restart local v5    # "trimStart":I
    .restart local v14    # "pos":I
    :cond_62
    move v13, v5

    .end local v5    # "trimStart":I
    .restart local v13    # "trimStart":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v16

    .line 789
    .local v16, "delimLen":I
    if-lez v16, :cond_78

    .line 791
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v13}, Lorg/apache/commons/lang/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 792
    add-int v0, v14, v16

    return v0

    .line 796
    :cond_78
    if-lez v12, :cond_8e

    .line 797
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 798
    const/4 v15, 0x1

    .line 799
    add-int/2addr v14, v12

    .line 800
    goto :goto_52

    .line 805
    :cond_8e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    .line 806
    .local v0, "ignoredLen":I
    if-lez v0, :cond_9a

    .line 807
    add-int/2addr v14, v0

    .line 808
    goto :goto_52

    .line 814
    :cond_9a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v14, v8, v9}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    .line 815
    .local v1, "trimmedLen":I
    if-lez v1, :cond_a9

    .line 816
    invoke-virtual {v10, v7, v14, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    .line 817
    add-int/2addr v14, v1

    .line 818
    goto :goto_52

    .line 822
    :cond_a9
    add-int/lit8 v2, v14, 0x1

    .local v2, "pos":I
    aget-char v3, v7, v14

    .end local v14    # "pos":I
    invoke-virtual {v10, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 823
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    .line 752
    move v14, v2

    goto/16 :goto_1b

    .line 828
    .end local v0    # "ignoredLen":I
    .end local v1    # "trimmedLen":I
    .end local v2    # "pos":I
    .end local v13    # "trimStart":I
    .end local v16    # "delimLen":I
    .restart local v5    # "trimStart":I
    .restart local v14    # "pos":I
    :cond_b7
    move v13, v5

    .end local v5    # "trimStart":I
    .restart local v13    # "trimStart":I
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v13}, Lorg/apache/commons/lang/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 829
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 603
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 1088
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->cloneReset()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1089
    :catch_5
    move-exception v0

    .line 1090
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method cloneReset()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1103
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/text/StrTokenizer;

    .line 1104
    .local v0, "cloned":Lorg/apache/commons/lang/text/StrTokenizer;
    iget-object v1, v0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    if-eqz v1, :cond_14

    .line 1105
    iget-object v1, v0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 1107
    :cond_14
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset()Lorg/apache/commons/lang/text/StrTokenizer;

    .line 1108
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    .line 1072
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    if-nez v0, :cond_6

    .line 1073
    const/4 v0, 0x0

    return-object v0

    .line 1075
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getDelimiterMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 2

    .line 860
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 2

    .line 956
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 2

    .line 912
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .registers 2

    .line 449
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 450
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .registers 4

    .line 459
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 461
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 462
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 464
    .end local v1    # "i":I
    :cond_1b
    return-object v0
.end method

.method public getTrimmerMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 2

    .line 1000
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .line 523
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 524
    iget v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .line 554
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 555
    iget v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isEmptyTokenAsNull()Z
    .registers 2

    .line 1027
    iget-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .registers 2

    .line 1050
    iget-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    .line 533
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 534
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 536
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    .line 545
    iget v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 4

    .line 425
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 426
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 428
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    .line 564
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 565
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 567
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    .line 576
    iget v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .registers 3

    .line 437
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 438
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 440
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 585
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 477
    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 489
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset()Lorg/apache/commons/lang/text/StrTokenizer;

    .line 490
    if-eqz p1, :cond_c

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    goto :goto_f

    .line 493
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 495
    :goto_f
    return-object p0
.end method

.method public reset([C)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p1, "input"    # [C

    .line 510
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset()Lorg/apache/commons/lang/text/StrTokenizer;

    .line 511
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 512
    return-object p0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 594
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 3
    .param p1, "delim"    # C

    .line 887
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 3
    .param p1, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 872
    if-nez p1, :cond_9

    .line 873
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    goto :goto_b

    .line 875
    :cond_9
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 877
    :goto_b
    return-object p0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 3
    .param p1, "delim"    # Ljava/lang/String;

    .line 897
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p1, "emptyAsNull"    # Z

    .line 1038
    iput-boolean p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    .line 1039
    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p1, "ignoreEmptyTokens"    # Z

    .line 1061
    iput-boolean p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 1062
    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 3
    .param p1, "ignored"    # C

    .line 985
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p1, "ignored"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 969
    if-eqz p1, :cond_4

    .line 970
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 972
    :cond_4
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 3
    .param p1, "quote"    # C

    .line 941
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p1, "quote"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 925
    if-eqz p1, :cond_4

    .line 926
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 928
    :cond_4
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;
    .registers 2
    .param p1, "trimmer"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 1013
    if-eqz p1, :cond_4

    .line 1014
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 1016
    :cond_4
    return-object p0
.end method

.method public size()I
    .registers 2

    .line 415
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 416
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1118
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1119
    const-string v0, "StrTokenizer[not tokenized yet]"

    return-object v0

    .line 1121
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StrTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .registers 12
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 645
    if-eqz p1, :cond_28

    if-nez p3, :cond_5

    goto :goto_28

    .line 648
    :cond_5
    new-instance v4, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v4}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 649
    .local v4, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 650
    .local v6, "tokens":Ljava/util/List;
    move v0, p2

    .local v0, "pos":I
    :cond_11
    :goto_11
    move v7, v0

    .line 653
    .end local v0    # "pos":I
    .local v7, "pos":I
    if-ltz v7, :cond_27

    if-ge v7, p3, :cond_27

    .line 655
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrTokenizer;->readNextToken([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;)I

    move-result v0

    .line 658
    .end local v7    # "pos":I
    .restart local v0    # "pos":I
    if-lt v0, p3, :cond_11

    .line 659
    const-string v1, ""

    invoke-direct {p0, v6, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_11

    .line 662
    .end local v0    # "pos":I
    .restart local v7    # "pos":I
    :cond_27
    return-object v6

    .line 646
    .end local v4    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .end local v6    # "tokens":Ljava/util/List;
    .end local v7    # "pos":I
    :cond_28
    :goto_28
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method
