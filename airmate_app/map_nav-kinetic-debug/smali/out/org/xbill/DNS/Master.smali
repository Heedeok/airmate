.class public Lorg/xbill/DNS/Master;
.super Ljava/lang/Object;
.source "Master.java"


# instance fields
.field private currentDClass:I

.field private currentTTL:J

.field private currentType:I

.field private defaultTTL:J

.field private file:Ljava/io/File;

.field private generator:Lorg/xbill/DNS/Generator;

.field private generators:Ljava/util/List;

.field private included:Lorg/xbill/DNS/Master;

.field private last:Lorg/xbill/DNS/Record;

.field private needSOATTL:Z

.field private noExpandGenerate:Z

.field private origin:Lorg/xbill/DNS/Name;

.field private st:Lorg/xbill/DNS/Tokenizer;


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .param p3, "initialTTL"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    .line 22
    iput-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 34
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 35
    :cond_11
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 37
    :cond_17
    :goto_17
    iput-object p1, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    .line 38
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    .line 39
    iput-object p2, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 40
    iput-wide p3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;

    .line 108
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;

    .line 99
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .param p3, "ttl"    # J

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    .line 22
    iput-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 84
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 85
    :cond_11
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 87
    :cond_17
    :goto_17
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    .line 88
    iput-object p2, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 89
    iput-wide p3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;J)V
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .param p3, "ttl"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 53
    return-void
.end method

.method private endGenerate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    .line 250
    return-void
.end method

.method private nextGenerated()Lorg/xbill/DNS/Record;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    invoke-virtual {v0}, Lorg/xbill/DNS/Generator;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v0
    :try_end_6
    .catch Lorg/xbill/DNS/Tokenizer$TokenizerException; {:try_start_0 .. :try_end_6} :catch_24
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 260
    :catch_7
    move-exception v0

    .line 261
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 257
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    :catch_24
    move-exception v0

    .line 258
    .local v0, "e":Lorg/xbill/DNS/Tokenizer$TokenizerException;
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$TokenizerException;->getBaseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method private parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_4
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 116
    :catch_5
    move-exception v0

    .line 117
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method private parseTTLClassAndType()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    .line 133
    .local v0, "seen_class":Z
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    if-ltz v2, :cond_17

    .line 136
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 137
    const/4 v0, 0x1

    .line 140
    :cond_17
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    .line 142
    const-wide/16 v2, 0x0

    :try_start_1d
    invoke-static {v1}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    .line 143
    iget-object v4, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v4}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v4
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_29} :catch_2b

    move-object v1, v4

    .line 150
    goto :goto_43

    .line 145
    :catch_2b
    move-exception v4

    .line 146
    .local v4, "e":Ljava/lang/NumberFormatException;
    iget-wide v5, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    cmp-long v7, v5, v2

    if-ltz v7, :cond_37

    .line 147
    iget-wide v5, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    iput-wide v5, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    goto :goto_43

    .line 148
    :cond_37
    iget-object v5, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v5, :cond_43

    .line 149
    iget-object v5, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    .line 152
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_43
    :goto_43
    const/4 v4, 0x1

    if-nez v0, :cond_57

    .line 153
    invoke-static {v1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    if-ltz v5, :cond_55

    .line 154
    iget-object v5, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_57

    .line 156
    :cond_55
    iput v4, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    .line 160
    :cond_57
    :goto_57
    invoke-static {v1}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/Master;->currentType:I

    if-ltz v5, :cond_79

    .line 166
    iget-wide v5, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    cmp-long v7, v5, v2

    if-gez v7, :cond_78

    .line 167
    iget v5, p0, Lorg/xbill/DNS/Master;->currentType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6f

    .line 169
    iput-boolean v4, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    .line 170
    iput-wide v2, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    goto :goto_78

    .line 168
    :cond_6f
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const-string v3, "missing TTL"

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 172
    :cond_78
    :goto_78
    return-void

    .line 161
    :cond_79
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method private parseUInt32(Ljava/lang/String;)J
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_e

    .line 177
    return-wide v1

    .line 179
    :cond_e
    :try_start_e
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_24

    .line 180
    .local v3, "l":J
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_23

    const-wide v5, 0xffffffffL

    cmp-long v0, v3, v5

    if-lez v0, :cond_22

    goto :goto_23

    .line 182
    :cond_22
    return-wide v3

    .line 181
    :cond_23
    :goto_23
    return-wide v1

    .line 184
    .end local v3    # "l":J
    :catch_24
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide v1
.end method

.method private startGenerate()V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "s":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 198
    .local v2, "n":I
    if-ltz v2, :cond_ed

    .line 200
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "startstr":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "endstr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 203
    .local v6, "stepstr":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 204
    if-ltz v2, :cond_2e

    .line 205
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 208
    :cond_2e
    invoke-direct {v0, v4}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v21

    .line 209
    .local v21, "start":J
    invoke-direct {v0, v5}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v23

    .line 211
    .local v23, "end":J
    if-eqz v6, :cond_3d

    .line 212
    invoke-direct {v0, v6}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_3f

    .line 214
    :cond_3d
    const-wide/16 v7, 0x1

    .local v7, "step":J
    :goto_3f
    move-wide/from16 v25, v7

    .line 215
    .end local v7    # "step":J
    .local v25, "step":J
    const-wide/16 v7, 0x0

    cmp-long v3, v21, v7

    if-ltz v3, :cond_d3

    cmp-long v3, v23, v7

    if-ltz v3, :cond_d3

    cmp-long v3, v21, v23

    if-gtz v3, :cond_d3

    cmp-long v3, v25, v7

    if-lez v3, :cond_d3

    .line 219
    iget-object v3, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "nameSpec":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/xbill/DNS/Master;->parseTTLClassAndType()V

    .line 224
    iget v7, v0, Lorg/xbill/DNS/Master;->currentType:I

    invoke-static {v7}, Lorg/xbill/DNS/Generator;->supportedType(I)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 229
    iget-object v7, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v7}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v27

    .line 233
    .local v27, "rdataSpec":Ljava/lang/String;
    iget-object v7, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v7}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 234
    iget-object v7, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v7}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 236
    new-instance v15, Lorg/xbill/DNS/Generator;

    iget v14, v0, Lorg/xbill/DNS/Master;->currentType:I

    iget v12, v0, Lorg/xbill/DNS/Master;->currentDClass:I

    iget-wide v10, v0, Lorg/xbill/DNS/Master;->currentTTL:J

    iget-object v13, v0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    move-object v7, v15

    move-wide/from16 v8, v21

    move-wide/from16 v17, v10

    move-wide/from16 v10, v23

    move/from16 v16, v12

    move-object/from16 v20, v13

    move-wide/from16 v12, v25

    move/from16 v19, v14

    move-object v14, v3

    move/from16 v28, v2

    move-object v2, v15

    .end local v2    # "n":I
    .local v28, "n":I
    move/from16 v15, v19

    move-object/from16 v19, v27

    invoke-direct/range {v7 .. v20}, Lorg/xbill/DNS/Generator;-><init>(JJJLjava/lang/String;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)V

    iput-object v2, v0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    .line 239
    iget-object v2, v0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    if-nez v2, :cond_a6

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    .line 241
    :cond_a6
    iget-object v2, v0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    iget-object v7, v0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void

    .line 225
    .end local v27    # "rdataSpec":Ljava/lang/String;
    .end local v28    # "n":I
    .restart local v2    # "n":I
    :cond_ae
    move/from16 v28, v2

    .end local v2    # "n":I
    .restart local v28    # "n":I
    iget-object v2, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "$GENERATE does not support "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v8, v0, Lorg/xbill/DNS/Master;->currentType:I

    invoke-static {v8}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " records"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 216
    .end local v3    # "nameSpec":Ljava/lang/String;
    .end local v28    # "n":I
    .restart local v2    # "n":I
    :cond_d3
    move/from16 v28, v2

    .end local v2    # "n":I
    .restart local v28    # "n":I
    iget-object v2, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid $GENERATE range specifier: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 199
    .end local v4    # "startstr":Ljava/lang/String;
    .end local v5    # "endstr":Ljava/lang/String;
    .end local v6    # "stepstr":Ljava/lang/String;
    .end local v21    # "start":J
    .end local v23    # "end":J
    .end local v25    # "step":J
    .end local v28    # "n":I
    .restart local v2    # "n":I
    :cond_ed
    iget-object v3, v0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid $GENERATE range specifier: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public _nextRecord()Lorg/xbill/DNS/Record;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 278
    iget-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 279
    .local v0, "rec":Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_e

    .line 280
    return-object v0

    .line 281
    :cond_e
    iput-object v1, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 283
    .end local v0    # "rec":Lorg/xbill/DNS/Record;
    :cond_10
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    if-eqz v0, :cond_1e

    .line 284
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->nextGenerated()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 285
    .restart local v0    # "rec":Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_1b

    .line 286
    return-object v0

    .line 287
    :cond_1b
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->endGenerate()V

    .line 292
    .end local v0    # "rec":Lorg/xbill/DNS/Record;
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 293
    .local v0, "token":Lorg/xbill/DNS/Tokenizer$Token;
    iget v4, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    .line 294
    iget-object v4, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v4}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v4

    .line 295
    .local v4, "next":Lorg/xbill/DNS/Tokenizer$Token;
    iget v5, v4, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v5, v3, :cond_36

    .line 296
    goto :goto_1e

    .line 297
    :cond_36
    iget v3, v4, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v3, :cond_3b

    .line 298
    return-object v1

    .line 300
    :cond_3b
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 301
    iget-object v1, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v1, :cond_4c

    .line 303
    iget-object v1, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 304
    .end local v4    # "next":Lorg/xbill/DNS/Tokenizer$Token;
    .local v1, "name":Lorg/xbill/DNS/Name;
    goto/16 :goto_143

    .line 302
    .end local v1    # "name":Lorg/xbill/DNS/Name;
    .restart local v4    # "next":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_4c
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const-string v2, "no owner"

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 305
    .end local v4    # "next":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_55
    iget v4, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v4, v3, :cond_5a

    .line 306
    goto :goto_1e

    .line 307
    :cond_5a
    iget v3, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v3, :cond_5f

    .line 308
    return-object v1

    .line 309
    :cond_5f
    iget-object v3, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_123

    .line 310
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 312
    .local v2, "s":Ljava/lang/String;
    const-string v3, "$ORIGIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 313
    iget-object v3, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    iput-object v3, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 314
    iget-object v3, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 315
    goto :goto_1e

    .line 316
    :cond_83
    const-string v3, "$TTL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 317
    iget-object v3, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 318
    iget-object v3, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 319
    goto :goto_1e

    .line 320
    :cond_99
    const-string v3, "$INCLUDE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 321
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "filename":Ljava/lang/String;
    iget-object v3, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    if-eqz v3, :cond_b8

    .line 324
    iget-object v3, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "parent":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 326
    .local v3, "newfile":Ljava/io/File;
    goto :goto_bd

    .line 327
    .end local v3    # "newfile":Ljava/io/File;
    :cond_b8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .restart local v3    # "newfile":Ljava/io/File;
    :goto_bd
    iget-object v4, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 330
    .local v4, "incorigin":Lorg/xbill/DNS/Name;
    iget-object v5, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 332
    iget-object v5, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    sget-object v6, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v5, v6}, Lorg/xbill/DNS/Master;->parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 334
    iget-object v5, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 336
    :cond_d8
    new-instance v5, Lorg/xbill/DNS/Master;

    iget-wide v6, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    invoke-direct {v5, v3, v4, v6, v7}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    iput-object v5, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 342
    invoke-virtual {p0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v5

    return-object v5

    .line 343
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "newfile":Ljava/io/File;
    .end local v4    # "incorigin":Lorg/xbill/DNS/Name;
    :cond_e6
    const-string v3, "$GENERATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 344
    iget-object v3, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    if-nez v3, :cond_103

    .line 347
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->startGenerate()V

    .line 348
    iget-boolean v3, p0, Lorg/xbill/DNS/Master;->noExpandGenerate:Z

    if-eqz v3, :cond_fe

    .line 349
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->endGenerate()V

    .line 350
    goto/16 :goto_1e

    .line 352
    :cond_fe
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->nextGenerated()Lorg/xbill/DNS/Record;

    move-result-object v1

    return-object v1

    .line 345
    :cond_103
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "cannot nest $GENERATE"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_10b
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid directive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 357
    .end local v2    # "s":Ljava/lang/String;
    :cond_123
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 358
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v3}, Lorg/xbill/DNS/Master;->parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 359
    .local v3, "name":Lorg/xbill/DNS/Name;
    iget-object v4, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v4, :cond_142

    iget-object v4, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_142

    .line 360
    iget-object v4, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    goto :goto_143

    .line 364
    .end local v1    # "s":Ljava/lang/String;
    :cond_142
    move-object v1, v3

    .end local v3    # "name":Lorg/xbill/DNS/Name;
    .local v1, "name":Lorg/xbill/DNS/Name;
    :goto_143
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->parseTTLClassAndType()V

    .line 365
    iget v4, p0, Lorg/xbill/DNS/Master;->currentType:I

    iget v5, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    iget-wide v6, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    iget-object v8, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    iget-object v9, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v3

    iput-object v3, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    .line 367
    iget-boolean v3, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    if-eqz v3, :cond_16c

    .line 368
    iget-object v3, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    check-cast v3, Lorg/xbill/DNS/SOARecord;

    invoke-virtual {v3}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v3

    .line 369
    .local v3, "ttl":J
    iget-object v5, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v5, v3, v4}, Lorg/xbill/DNS/Record;->setTTL(J)V

    .line 370
    iput-wide v3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 371
    iput-boolean v2, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    .line 373
    .end local v3    # "ttl":J
    :cond_16c
    iget-object v2, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    return-object v2
.end method

.method public expandGenerate(Z)V
    .registers 3
    .param p1, "wantExpand"    # Z

    .line 406
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Master;->noExpandGenerate:Z

    .line 407
    return-void
.end method

.method protected finalize()V
    .registers 2

    .line 424
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->close()V

    .line 425
    return-void
.end method

.method public generators()Ljava/util/Iterator;
    .registers 2

    .line 416
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 417
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 419
    :cond_f
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nextRecord()Lorg/xbill/DNS/Record;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, "rec":Lorg/xbill/DNS/Record;
    :try_start_1
    invoke-virtual {p0}, Lorg/xbill/DNS/Master;->_nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    move-object v0, v1

    .line 391
    if-nez v0, :cond_d

    .line 392
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->close()V

    .line 395
    :cond_d
    return-object v0

    .line 391
    :catchall_e
    move-exception v1

    if-nez v0, :cond_16

    .line 392
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->close()V

    :cond_16
    throw v1
.end method
