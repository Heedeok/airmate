.class public Lorg/apache/commons/httpclient/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$HttpParser:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->class$org$apache$commons$httpclient$HttpParser:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.HttpParser"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpParser;->class$org$apache$commons$httpclient$HttpParser:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->class$org$apache$commons$httpclient$HttpParser:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseHeaders(Ljava/io/InputStream;)[Lorg/apache/commons/httpclient/Header;
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 232
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderParser.parseHeaders(InputStream, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 233
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpParser;->parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 170
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderParser.parseHeaders(InputStream, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "headers":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 174
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 176
    .local v2, "value":Ljava/lang/StringBuffer;
    :goto_e
    invoke-static {p0, p1}, Lorg/apache/commons/httpclient/HttpParser;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_85

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_20

    .line 178
    goto :goto_85

    .line 185
    :cond_20
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_78

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_32

    goto :goto_78

    .line 194
    :cond_32
    if-eqz v1, :cond_40

    .line 195
    new-instance v5, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_40
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 201
    .local v5, "colon":I
    if-ltz v5, :cond_61

    .line 204
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_84

    .line 202
    :cond_61
    new-instance v4, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to parse header: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    .end local v5    # "colon":I
    :cond_78
    :goto_78
    if-eqz v2, :cond_84

    .line 189
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    .end local v3    # "line":Ljava/lang/String;
    :cond_84
    :goto_84
    goto :goto_e

    .line 211
    :cond_85
    :goto_85
    if-eqz v1, :cond_93

    .line 212
    new-instance v3, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/httpclient/Header;

    return-object v3
.end method

.method public static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpParser.readLine(InputStream)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 152
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpParser;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpParser.readLine(InputStream, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 106
    invoke-static {p0}, Lorg/apache/commons/httpclient/HttpParser;->readRawLine(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 107
    .local v0, "rawdata":[B
    if-nez v0, :cond_f

    .line 108
    const/4 v1, 0x0

    return-object v1

    .line 111
    :cond_f
    array-length v1, v0

    .line 112
    .local v1, "len":I
    const/4 v2, 0x0

    .line 113
    .local v2, "offset":I
    const/4 v3, 0x1

    if-lez v1, :cond_2a

    .line 114
    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v0, v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2a

    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 116
    if-le v1, v3, :cond_2a

    .line 117
    add-int/lit8 v4, v1, -0x2

    aget-byte v4, v0, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2a

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 123
    :cond_2a
    const/4 v4, 0x0

    sub-int v5, v1, v2

    invoke-static {v0, v4, v5, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "result":Ljava/lang/String;
    sget-object v5, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 126
    move-object v5, v4

    .line 127
    .local v5, "logoutput":Ljava/lang/String;
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4f

    .line 128
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_62

    .line 129
    :cond_4f
    if-ne v2, v3, :cond_62

    .line 130
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 131
    :cond_62
    :goto_62
    sget-object v3, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/Wire;->input(Ljava/lang/String;)V

    .line 133
    .end local v5    # "logoutput":Ljava/lang/String;
    :cond_67
    return-object v4
.end method

.method public static readRawLine(Ljava/io/InputStream;)[B
    .registers 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpParser.readRawLine()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    :cond_c
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "ch":I
    if-ltz v1, :cond_1b

    .line 79
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    const/16 v1, 0xa

    if-ne v2, v1, :cond_c

    .line 81
    nop

    .line 84
    :cond_1b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-nez v1, :cond_23

    .line 85
    const/4 v1, 0x0

    return-object v1

    .line 87
    :cond_23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
