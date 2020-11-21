.class public Lorg/yaml/snakeyaml/reader/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# static fields
.field static final NON_PRINTABLE:Ljava/util/regex/Pattern;


# instance fields
.field private buffer:Ljava/lang/String;

.field private column:I

.field private data:[C

.field private eof:Z

.field private index:I

.field private line:I

.field private name:Ljava/lang/String;

.field private pointer:I

.field private final stream:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-string v0, "[^\t\n\r -~\u0085\u00a0-\ud7ff\ue000-\ufffc]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/reader/StreamReader;->NON_PRINTABLE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "reader"    # Ljava/io/Reader;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 41
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 42
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 43
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 57
    const-string v1, "<reader>"

    iput-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    .line 58
    const-string v1, ""

    iput-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    .line 60
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 61
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    .line 62
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "stream"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 41
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 42
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 43
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 47
    const-string v0, "<string>"

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->checkPrintable(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    .line 52
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 53
    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    .line 54
    return-void
.end method

.method private update()V
    .registers 5

    .line 178
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    if-nez v0, :cond_5d

    .line 179
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 182
    :try_start_11
    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 183
    .local v1, "converted":I
    if-lez v1, :cond_3d

    .line 190
    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    invoke-virtual {p0, v2, v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->checkPrintable([CII)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    invoke-virtual {v2, v3, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    goto :goto_55

    .line 194
    :cond_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_55} :catch_56

    .line 199
    .end local v1    # "converted":I
    :goto_55
    goto :goto_5d

    .line 197
    :catch_56
    move-exception v0

    .line 198
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 201
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method checkPrintable(Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "data"    # Ljava/lang/CharSequence;

    .line 66
    sget-object v0, Lorg/yaml/snakeyaml/reader/StreamReader;->NON_PRINTABLE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 67
    .local v0, "em":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_d

    .line 72
    return-void

    .line 68
    :cond_d
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int/2addr v1, v2

    .line 69
    .local v1, "position":I
    new-instance v2, Lorg/yaml/snakeyaml/reader/ReaderException;

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "special characters are not allowed"

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/yaml/snakeyaml/reader/ReaderException;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    throw v2
.end method

.method checkPrintable([CII)V
    .registers 10
    .param p1, "chars"    # [C
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .line 87
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_4b

    .line 88
    aget-char v1, p1, v0

    .line 90
    .local v1, "c":C
    const/16 v2, 0x20

    if-lt v1, v2, :cond_d

    const/16 v2, 0x7e

    if-le v1, v2, :cond_48

    :cond_d
    const/16 v2, 0xa

    if-eq v1, v2, :cond_48

    const/16 v2, 0xd

    if-eq v1, v2, :cond_48

    const/16 v2, 0x9

    if-eq v1, v2, :cond_48

    const/16 v2, 0x85

    if-eq v1, v2, :cond_48

    const/16 v2, 0xa0

    if-lt v1, v2, :cond_26

    const v2, 0xd7ff

    if-le v1, v2, :cond_48

    :cond_26
    const v2, 0xe000

    if-lt v1, v2, :cond_31

    const v2, 0xfffc

    if-gt v1, v2, :cond_31

    .line 93
    goto :goto_48

    .line 96
    :cond_31
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 97
    .local v2, "position":I
    new-instance v3, Lorg/yaml/snakeyaml/reader/ReaderException;

    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    const-string v5, "special characters are not allowed"

    invoke-direct {v3, v4, v2, v1, v5}, Lorg/yaml/snakeyaml/reader/ReaderException;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    throw v3

    .line 87
    .end local v1    # "c":C
    .end local v2    # "position":I
    :cond_48
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "i":I
    :cond_4b
    return-void
.end method

.method public forward()V
    .registers 2

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 107
    return-void
.end method

.method public forward(I)V
    .registers 7
    .param p1, "length"    # I

    .line 115
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 116
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 118
    :cond_10
    const/4 v0, 0x0

    .line 119
    .local v0, "ch":C
    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "ch":C
    :goto_14
    if-ge v0, p1, :cond_5a

    .line 120
    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 121
    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 122
    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 123
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v3

    if-nez v3, :cond_4f

    const/16 v3, 0xd

    if-ne v2, v3, :cond_43

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_43

    goto :goto_4f

    .line 126
    :cond_43
    const v3, 0xfeff

    if-eq v2, v3, :cond_57

    .line 127
    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    goto :goto_57

    .line 124
    :cond_4f
    :goto_4f
    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 125
    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 119
    :cond_57
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 130
    .end local v0    # "i":I
    :cond_5a
    return-void
.end method

.method public getColumn()I
    .registers 2

    .line 204
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    return v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .registers 2

    .line 208
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    check-cast v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/UnicodeReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 212
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    return v0
.end method

.method public getLine()I
    .registers 2

    .line 216
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    return v0
.end method

.method public getMark()Lorg/yaml/snakeyaml/error/Mark;
    .registers 9

    .line 102
    new-instance v7, Lorg/yaml/snakeyaml/error/Mark;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    iget v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    iget-object v5, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v6, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/Mark;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    return-object v7
.end method

.method public peek()C
    .registers 3

    .line 133
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public peek(I)C
    .registers 4
    .param p1, "index"    # I

    .line 143
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_10

    .line 144
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 146
    :cond_10
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public prefix(I)Ljava/lang/String;
    .registers 5
    .param p1, "length"    # I

    .line 156
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 157
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 159
    :cond_e
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_22

    .line 160
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_22
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prefixForward(I)Ljava/lang/String;
    .registers 4
    .param p1, "length"    # I

    .line 169
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "prefix":Ljava/lang/String;
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 171
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 173
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 174
    return-object v0
.end method
