.class public Lorg/apache/commons/httpclient/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field private final httpVersion:Ljava/lang/String;

.field private final reasonPhrase:Ljava/lang/String;

.field private final statusCode:I

.field private final statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 85
    .local v0, "length":I
    const/4 v1, 0x0

    .line 86
    .local v1, "at":I
    const/4 v2, 0x0

    .line 88
    .local v2, "start":I
    :goto_9
    :try_start_9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 92
    :cond_18
    const-string v3, "HTTP"
    :try_end_1a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_9 .. :try_end_1a} :catch_c6

    add-int/lit8 v4, v1, 0x4

    .local v4, "at":I
    :try_start_1c
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "at":I
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 97
    const-string v1, " "

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1
    :try_end_2c
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1c .. :try_end_2c} :catch_c3

    .line 98
    .end local v4    # "at":I
    .restart local v1    # "at":I
    if-lez v1, :cond_8b

    .line 103
    :try_start_2e
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/StatusLine;->httpVersion:Ljava/lang/String;

    .line 106
    :goto_38
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_43

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 111
    :cond_43
    const-string v3, " "

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3
    :try_end_49
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2e .. :try_end_49} :catch_c6

    .line 112
    .local v3, "to":I
    if-gez v3, :cond_4c

    .line 113
    move v3, v0

    .line 116
    :cond_4c
    :try_start_4c
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/httpclient/StatusLine;->statusCode:I
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_56} :catch_6e
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4c .. :try_end_56} :catch_c6

    .line 121
    nop

    .line 123
    add-int/lit8 v1, v3, 0x1

    .line 124
    if-ge v1, v0, :cond_66

    .line 125
    :try_start_5b
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;

    goto :goto_6a

    .line 127
    :cond_66
    const-string v4, ""

    iput-object v4, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5b .. :try_end_6a} :catch_c6

    .line 131
    .end local v3    # "to":I
    :goto_6a
    nop

    .line 133
    iput-object p1, p0, Lorg/apache/commons/httpclient/StatusLine;->statusLine:Ljava/lang/String;

    .line 134
    return-void

    .line 117
    .restart local v3    # "to":I
    :catch_6e
    move-exception v4

    .line 118
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_6f
    new-instance v5, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to parse status code from status line: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 99
    .end local v3    # "to":I
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_8b
    new-instance v3, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unable to parse HTTP-Version from the status line: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a7
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6f .. :try_end_a7} :catch_c6

    .line 93
    .end local v1    # "at":I
    .local v4, "at":I
    :cond_a7
    :try_start_a7
    new-instance v1, Lorg/apache/commons/httpclient/HttpException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Status-Line \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\' does not start with HTTP"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_a7 .. :try_end_c3} :catch_c3

    .line 129
    :catch_c3
    move-exception v3

    move v1, v4

    goto :goto_c7

    .end local v4    # "at":I
    .restart local v1    # "at":I
    :catch_c6
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_c7
    new-instance v4, Lorg/apache/commons/httpclient/HttpException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Status-Line \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\' is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static startsWithHTTP(Ljava/lang/String;)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    .local v1, "at":I
    :goto_2
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    :cond_f
    const-string v2, "HTTP"

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_1b} :catch_1c

    return v2

    .line 181
    .end local v1    # "at":I
    :catch_1c
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return v0
.end method


# virtual methods
.method public final getHttpVersion()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getReasonPhrase()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .registers 2

    .line 143
    iget v0, p0, Lorg/apache/commons/httpclient/StatusLine;->statusCode:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->statusLine:Ljava/lang/String;

    return-object v0
.end method
