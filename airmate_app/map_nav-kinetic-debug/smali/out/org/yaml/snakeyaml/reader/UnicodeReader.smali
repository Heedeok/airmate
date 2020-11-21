.class public Lorg/yaml/snakeyaml/reader/UnicodeReader;
.super Ljava/io/Reader;
.source "UnicodeReader.java"


# static fields
.field private static final BOM_SIZE:I = 0x3

.field private static final UTF16BE:Ljava/nio/charset/Charset;

.field private static final UTF16LE:Ljava/nio/charset/Charset;

.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field internalIn:Ljava/io/PushbackInputStream;

.field internalIn2:Ljava/io/InputStreamReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF8:Ljava/nio/charset/Charset;

    .line 53
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF16BE:Ljava/nio/charset/Charset;

    .line 54
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF16LE:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 65
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    .line 66
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    .line 67
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/reader/UnicodeReader;->init()V

    .line 114
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 115
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_5

    .line 83
    return-void

    .line 86
    :cond_5
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 88
    .local v0, "bom":[B
    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v1

    .line 90
    .local v1, "n":I
    aget-byte v2, v0, v3

    const/16 v4, -0x11

    const/4 v5, 0x1

    if-ne v2, v4, :cond_29

    aget-byte v2, v0, v5

    const/16 v4, -0x45

    if-ne v2, v4, :cond_29

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v4, -0x41

    if-ne v2, v4, :cond_29

    .line 91
    sget-object v2, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF8:Ljava/nio/charset/Charset;

    .line 92
    .local v2, "encoding":Ljava/nio/charset/Charset;
    add-int/lit8 v3, v1, -0x3

    goto :goto_48

    .line 93
    .end local v2    # "encoding":Ljava/nio/charset/Charset;
    :cond_29
    aget-byte v2, v0, v3

    const/4 v4, -0x1

    const/4 v6, -0x2

    if-ne v2, v6, :cond_38

    aget-byte v2, v0, v5

    if-ne v2, v4, :cond_38

    .line 94
    sget-object v2, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF16BE:Ljava/nio/charset/Charset;

    .line 95
    .restart local v2    # "encoding":Ljava/nio/charset/Charset;
    add-int/lit8 v3, v1, -0x2

    goto :goto_48

    .line 96
    .end local v2    # "encoding":Ljava/nio/charset/Charset;
    :cond_38
    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_45

    aget-byte v2, v0, v5

    if-ne v2, v6, :cond_45

    .line 97
    sget-object v2, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF16LE:Ljava/nio/charset/Charset;

    .line 98
    .restart local v2    # "encoding":Ljava/nio/charset/Charset;
    add-int/lit8 v3, v1, -0x2

    goto :goto_48

    .line 101
    .end local v2    # "encoding":Ljava/nio/charset/Charset;
    :cond_45
    sget-object v2, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF8:Ljava/nio/charset/Charset;

    .line 102
    .restart local v2    # "encoding":Ljava/nio/charset/Charset;
    move v3, v1

    .line 105
    .local v3, "unread":I
    :goto_48
    if-lez v3, :cond_51

    .line 106
    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 109
    :cond_51
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v4, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    .line 110
    return-void
.end method

.method public read([CII)I
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/reader/UnicodeReader;->init()V

    .line 119
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    return v0
.end method
