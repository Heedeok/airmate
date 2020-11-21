.class public Lorg/apache/commons/net/nntp/NNTPClient;
.super Lorg/apache/commons/net/nntp/NNTP;
.source "NNTPClient.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;-><init>()V

    return-void
.end method

.method private __parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)V
    .registers 7
    .param p1, "reply"    # Ljava/lang/String;
    .param p2, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_23

    .line 107
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 111
    :try_start_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lorg/apache/commons/net/nntp/ArticlePointer;->articleNumber:I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_19} :catch_21

    .line 116
    nop

    .line 119
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lorg/apache/commons/net/nntp/ArticlePointer;->articleId:Ljava/lang/String;

    .line 120
    return-void

    .line 113
    :catch_21
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_24

    .line 104
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_23
    nop

    .line 124
    :goto_24
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse article pointer.\nServer reply: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private __parseGroupReply(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)V
    .registers 8
    .param p1, "reply"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3f

    .line 144
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 146
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "count":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "first":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "last":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setNewsgroup(Ljava/lang/String;)V

    .line 156
    :try_start_22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setArticleCount(I)V

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setFirstArticle(I)V

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setLastArticle(I)V
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_37} :catch_3d

    .line 163
    nop

    .line 165
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V

    .line 166
    return-void

    .line 160
    :catch_3d
    move-exception v4

    .line 162
    .local v4, "e":Ljava/lang/NumberFormatException;
    goto :goto_40

    .line 141
    .end local v1    # "count":Ljava/lang/String;
    .end local v2    # "first":Ljava/lang/String;
    .end local v3    # "last":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3f
    nop

    .line 170
    :goto_40
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse newsgroup info.\nServer reply: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private __parseNewsgroupListEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 13
    .param p1, "entry"    # Ljava/lang/String;

    .line 182
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupInfo;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;-><init>()V

    .line 183
    .local v0, "result":Lorg/apache/commons/net/nntp/NewsgroupInfo;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ge v2, v4, :cond_13

    .line 186
    return-object v3

    .line 188
    :cond_13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setNewsgroup(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "last":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "first":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "permission":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_27
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2b} :catch_64

    .line 196
    .local v7, "lastNum":I
    :try_start_2b
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_61

    .line 197
    .local v8, "firstNum":I
    :try_start_2f
    invoke-virtual {v0, v8}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setFirstArticle(I)V

    .line 198
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setLastArticle(I)V

    .line 200
    const/4 v9, 0x1

    if-nez v8, :cond_3e

    if-nez v7, :cond_3e

    .line 201
    invoke-virtual {v0, v6}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setArticleCount(I)V

    goto :goto_44

    .line 203
    :cond_3e
    sub-int v10, v7, v8

    add-int/2addr v10, v9

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setArticleCount(I)V
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_44} :catch_5f

    .line 208
    :goto_44
    nop

    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_6a

    .line 228
    invoke-virtual {v0, v6}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V

    goto :goto_5e

    .line 214
    :sswitch_50
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V

    .line 216
    goto :goto_5e

    .line 219
    :sswitch_55
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V

    .line 221
    goto :goto_5e

    .line 224
    :sswitch_5a
    invoke-virtual {v0, v9}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->_setPostingPermission(I)V

    .line 226
    nop

    .line 233
    :goto_5e
    return-object v0

    .line 205
    :catch_5f
    move-exception v6

    goto :goto_68

    .end local v8    # "firstNum":I
    :catch_61
    move-exception v8

    move-object v6, v8

    goto :goto_67

    .end local v7    # "lastNum":I
    :catch_64
    move-exception v7

    move-object v6, v7

    const/4 v7, 0x0

    .restart local v7    # "lastNum":I
    .restart local v8    # "firstNum":I
    :goto_67
    const/4 v8, 0x0

    .line 207
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_68
    return-object v3

    nop

    :sswitch_data_6a
    .sparse-switch
        0x4d -> :sswitch_5a
        0x4e -> :sswitch_55
        0x59 -> :sswitch_50
        0x6d -> :sswitch_5a
        0x6e -> :sswitch_55
        0x79 -> :sswitch_50
    .end sparse-switch
.end method

.method private __readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 247
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 249
    .local v1, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/apache/commons/net/nntp/NewsgroupInfo;>;"
    :goto_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 251
    invoke-direct {p0, v3}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseNewsgroupListEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v2

    .line 252
    .local v2, "tmp":Lorg/apache/commons/net/nntp/NewsgroupInfo;
    if-eqz v2, :cond_24

    .line 253
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_13

    .line 255
    :cond_24
    new-instance v4, Lorg/apache/commons/net/MalformedServerReplyException;

    invoke-direct {v4, v3}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    .end local v2    # "tmp":Lorg/apache/commons/net/nntp/NewsgroupInfo;
    :cond_2a
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v4, v2

    .local v4, "size":I
    const/4 v5, 0x1

    if-ge v2, v5, :cond_36

    .line 259
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/commons/net/nntp/NewsgroupInfo;

    return-object v2

    .line 261
    :cond_36
    new-array v2, v4, [Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 262
    .local v2, "info":[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 264
    return-object v2
.end method

.method private __retrieve(IILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 6
    .param p1, "command"    # I
    .param p2, "articleNumber"    # I
    .param p3, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_10
    if-eqz p3, :cond_19

    .line 305
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 307
    :cond_19
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 308
    .local v0, "reader":Ljava/io/Reader;
    return-object v0
.end method

.method private __retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 6
    .param p1, "command"    # I
    .param p2, "articleId"    # Ljava/lang/String;
    .param p3, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 276
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 277
    return-object v0

    .line 281
    :cond_e
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(I)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 282
    return-object v0

    .line 286
    :cond_19
    if-eqz p3, :cond_22

    .line 287
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 289
    :cond_22
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 290
    .local v0, "reader":Ljava/io/Reader;
    return-object v0
.end method

.method private __retrieveArticleInfo(Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .param p1, "articleRange"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1188
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->xover(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1189
    const/4 v0, 0x0

    return-object v0

    .line 1191
    :cond_c
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method private __retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 5
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "articleRange"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1239
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->xhdr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1240
    const/4 v0, 0x0

    return-object v0

    .line 1242
    :cond_c
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1159
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->authinfoUser(Ljava/lang/String;)I

    move-result v0

    .line 1161
    .local v0, "replyCode":I
    const/16 v1, 0x17d

    if-ne v0, v1, :cond_14

    .line 1163
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->authinfoPass(Ljava/lang/String;)I

    move-result v0

    .line 1165
    const/16 v1, 0x119

    if-ne v0, v1, :cond_14

    .line 1167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_isAllowedToPost:Z

    .line 1168
    return v1

    .line 1171
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public completePendingCommand()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public forwardArticle(Ljava/lang/String;)Ljava/io/Writer;
    .registers 4
    .param p1, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1124
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ihave(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1125
    const/4 v0, 0x0

    return-object v0

    .line 1127
    :cond_c
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_writer_:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public listHelp()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->help()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isInformational(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 705
    const/4 v0, 0x0

    return-object v0

    .line 707
    :cond_c
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 708
    .local v0, "help":Ljava/io/StringWriter;
    new-instance v1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 709
    .local v1, "reader":Ljava/io/Reader;
    invoke-static {v1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 710
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 711
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    .line 712
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public listNewNews(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)[Ljava/lang/String;
    .registers 8
    .param p1, "query"    # Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getNewsgroups()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v4

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/nntp/NNTPClient;->newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1019
    const/4 v0, 0x0

    return-object v0

    .line 1021
    :cond_21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1022
    .local v0, "list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v3, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1024
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_3d

    .line 1025
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_32

    .line 1027
    :cond_3d
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1029
    .local v2, "size":I
    const/4 v4, 0x1

    if-ge v2, v4, :cond_48

    .line 1030
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    return-object v4

    .line 1032
    :cond_48
    new-array v4, v2, [Ljava/lang/String;

    .line 1033
    .local v4, "result":[Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1035
    return-object v4
.end method

.method public listNewNewsgroups(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 6
    .param p1, "query"    # Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/net/nntp/NNTPClient;->newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 978
    const/4 v0, 0x0

    return-object v0

    .line 980
    :cond_1c
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->__readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public listNewsgroups()[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->list()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 928
    const/4 v0, 0x0

    return-object v0

    .line 930
    :cond_c
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->__readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public listNewsgroups(Ljava/lang/String;)[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .registers 3
    .param p1, "wildmat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->listActive(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 948
    const/4 v0, 0x0

    return-object v0

    .line 949
    :cond_c
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->__readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public logout()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->quit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public postArticle()Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1115
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->post()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1116
    const/4 v0, 0x0

    return-object v0

    .line 1118
    :cond_c
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_writer_:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public retrieveArticle()Ljava/io/Reader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(I)Ljava/io/Reader;
    .registers 3
    .param p1, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 4
    .param p1, "articleNumber"    # I
    .param p2, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(IILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(Ljava/lang/String;)Ljava/io/Reader;
    .registers 3
    .param p1, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 4
    .param p1, "articleId"    # Ljava/lang/String;
    .param p2, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody()Ljava/io/Reader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(I)Ljava/io/Reader;
    .registers 3
    .param p1, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 4
    .param p1, "articleNumber"    # I
    .param p2, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(IILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(Ljava/lang/String;)Ljava/io/Reader;
    .registers 3
    .param p1, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 4
    .param p1, "articleId"    # Ljava/lang/String;
    .param p2, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader()Ljava/io/Reader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(I)Ljava/io/Reader;
    .registers 3
    .param p1, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 4
    .param p1, "articleNumber"    # I
    .param p2, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(IILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(Ljava/lang/String;)Ljava/io/Reader;
    .registers 3
    .param p1, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .registers 4
    .param p1, "articleId"    # Ljava/lang/String;
    .param p2, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleInfo(I)Ljava/io/Reader;
    .registers 3
    .param p1, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1203
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieveArticleInfo(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleInfo(II)Ljava/io/Reader;
    .registers 5
    .param p1, "lowArticleNumber"    # I
    .param p2, "highArticleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieveArticleInfo(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveHeader(Ljava/lang/String;I)Ljava/io/Reader;
    .registers 4
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1256
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveHeader(Ljava/lang/String;II)Ljava/io/Reader;
    .registers 6
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "lowArticleNumber"    # I
    .param p3, "highArticleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public selectArticle(I)Z
    .registers 3
    .param p1, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Z

    move-result v0

    return v0
.end method

.method public selectArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 4
    .param p1, "articleNumber"    # I
    .param p2, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->stat(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 806
    const/4 v0, 0x0

    return v0

    .line 808
    :cond_c
    if-eqz p2, :cond_15

    .line 809
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 811
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public selectArticle(Ljava/lang/String;)Z
    .registers 3
    .param p1, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Z

    move-result v0

    return v0
.end method

.method public selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 5
    .param p1, "articleId"    # Ljava/lang/String;
    .param p2, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 746
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->stat(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 747
    return v0

    .line 751
    :cond_e
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->stat()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 752
    return v0

    .line 755
    :cond_19
    if-eqz p2, :cond_22

    .line 756
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 758
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public selectArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 3
    .param p1, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Z

    move-result v0

    return v0
.end method

.method public selectNewsgroup(Ljava/lang/String;)Z
    .registers 3
    .param p1, "newsgroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNewsgroup(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)Z

    move-result v0

    return v0
.end method

.method public selectNewsgroup(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)Z
    .registers 4
    .param p1, "newsgroup"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->group(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 673
    const/4 v0, 0x0

    return v0

    .line 675
    :cond_c
    if-eqz p2, :cond_15

    .line 676
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseGroupReply(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)V

    .line 678
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public selectNextArticle()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 904
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNextArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z

    move-result v0

    return v0
.end method

.method public selectNextArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 3
    .param p1, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->next()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 892
    const/4 v0, 0x0

    return v0

    .line 894
    :cond_c
    if-eqz p1, :cond_15

    .line 895
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 897
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public selectPreviousArticle()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z

    move-result v0

    return v0
.end method

.method public selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .registers 3
    .param p1, "pointer"    # Lorg/apache/commons/net/nntp/ArticlePointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->last()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 850
    const/4 v0, 0x0

    return v0

    .line 852
    :cond_c
    if-eqz p1, :cond_15

    .line 853
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    .line 855
    :cond_15
    const/4 v0, 0x1

    return v0
.end method
