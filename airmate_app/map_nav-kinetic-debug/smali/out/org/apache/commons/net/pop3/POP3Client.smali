.class public Lorg/apache/commons/net/pop3/POP3Client;
.super Lorg/apache/commons/net/pop3/POP3;
.source "POP3Client.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;-><init>()V

    return-void
.end method

.method private static __parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .registers 6
    .param p0, "line"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 63
    return-object v2

    .line 65
    :cond_d
    const/4 v1, 0x0

    move v3, v1

    .line 69
    .local v1, "num":I
    .local v3, "size":I
    :try_start_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 71
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 72
    return-object v2

    .line 74
    :cond_1f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_27} :catch_2f

    move v2, v4

    .line 79
    .end local v3    # "size":I
    .local v2, "size":I
    nop

    .line 81
    new-instance v3, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(II)V

    return-object v3

    .line 76
    .end local v2    # "size":I
    .restart local v3    # "size":I
    :catch_2f
    move-exception v4

    .line 78
    .local v4, "e":Ljava/lang/NumberFormatException;
    return-object v2
.end method

.method private static __parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .registers 5
    .param p0, "line"    # Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 92
    return-object v2

    .line 94
    :cond_d
    const/4 v1, 0x0

    .line 98
    .local v1, "num":I
    :try_start_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 100
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 101
    return-object v2

    .line 103
    :cond_1e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_22} :catch_2a

    move-object p0, v3

    .line 108
    nop

    .line 110
    new-instance v2, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v2, v1, p0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 105
    :catch_2a
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/NumberFormatException;
    return-object v2
.end method


# virtual methods
.method public deleteMessage(I)Z
    .registers 6
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 275
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    return v1

    .line 277
    :cond_16
    return v1
.end method

.method public listMessage(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .registers 5
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    .line 344
    return-object v1

    .line 345
    :cond_9
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 347
    return-object v1

    .line 348
    :cond_15
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public listMessages()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    .line 376
    return-object v1

    .line 377
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-eqz v0, :cond_11

    .line 378
    return-object v1

    .line 379
    :cond_11
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 382
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    .line 383
    .local v0, "messages":[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 386
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 389
    const/4 v2, 0x0

    .local v2, "line":I
    :goto_28
    array-length v3, v0

    if-ge v2, v3, :cond_3a

    .line 390
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v3

    aput-object v3, v0, v2

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 392
    :cond_3a
    return-object v0
.end method

.method public listUniqueIdentifier(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .registers 5
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    .line 416
    return-object v1

    .line 417
    :cond_9
    const/16 v0, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 419
    return-object v1

    .line 420
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public listUniqueIdentifiers()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    .line 448
    return-object v1

    .line 449
    :cond_9
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-eqz v0, :cond_12

    .line 450
    return-object v1

    .line 451
    :cond_12
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 454
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    .line 455
    .local v0, "messages":[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 458
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 461
    const/4 v2, 0x0

    .local v2, "line":I
    :goto_29
    array-length v3, v0

    if-ge v2, v3, :cond_3b

    .line 462
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/net/pop3/POP3Client;->__parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v3

    aput-object v3, v0, v2

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 464
    :cond_3b
    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 133
    return v1

    .line 135
    :cond_8
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 136
    return v1

    .line 138
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_17

    .line 139
    return v1

    .line 141
    :cond_17
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    .line 143
    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 189
    return v1

    .line 191
    :cond_8
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 192
    .local v0, "md5":Ljava/security/MessageDigest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 193
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 194
    .local v2, "digest":[B
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 196
    .local v3, "digestBuffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2d
    array-length v5, v2

    if-ge v4, v5, :cond_3e

    .line 197
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 199
    :cond_3e
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 200
    .local v5, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const/16 v6, 0x9

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_61

    .line 205
    return v1

    .line 207
    :cond_61
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    .line 209
    return v1
.end method

.method public logout()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 231
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    .line 232
    :cond_b
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    .line 233
    iget v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyCode:I

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    return v2
.end method

.method public noop()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 252
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x1

    nop

    :cond_11
    return v1

    .line 253
    :cond_12
    return v1
.end method

.method public reset()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 295
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v1, 0x1

    nop

    :cond_12
    return v1

    .line 296
    :cond_13
    return v1
.end method

.method public retrieveMessage(I)Ljava/io/Reader;
    .registers 5
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    .line 498
    return-object v1

    .line 499
    :cond_9
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 501
    return-object v1

    .line 503
    :cond_15
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_reader:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public retrieveMessageTop(II)Ljava/io/Reader;
    .registers 7
    .param p1, "messageId"    # I
    .param p2, "numLines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    if-ltz p2, :cond_38

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    goto :goto_38

    .line 543
    :cond_b
    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_30

    .line 545
    return-object v0

    .line 547
    :cond_30
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_reader:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object v0

    .line 542
    :cond_38
    :goto_38
    return-object v0
.end method

.method public status()Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    .line 317
    return-object v1

    .line 318
    :cond_9
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v2

    if-eqz v2, :cond_11

    .line 319
    return-object v1

    .line 320
    :cond_11
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    return-object v0
.end method
