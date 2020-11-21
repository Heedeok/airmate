.class public Lorg/apache/commons/net/smtp/SMTPClient;
.super Lorg/apache/commons/net/smtp/SMTP;
.source "SMTPClient.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;-><init>(Ljava/lang/String;)V

    .line 141
    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTPClient;->rcpt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public addRecipient(Lorg/apache/commons/net/smtp/RelayPath;)Z
    .registers 3
    .param p1, "path"    # Lorg/apache/commons/net/smtp/RelayPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p1}, Lorg/apache/commons/net/smtp/RelayPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTPClient;->rcpt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public completePendingCommand()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public listHelp()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->help()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 561
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public listHelp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->help(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 584
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 585
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public login()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 223
    .local v0, "host":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 226
    const/4 v2, 0x0

    return v2

    .line 228
    :cond_c
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/smtp/SMTPClient;->helo(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v2

    return v2
.end method

.method public login(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->helo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public logout()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->quit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public reset()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->rset()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public sendMessageData()Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->data()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_c
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTPClient;->_writer:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public sendNoOp()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->noop()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public sendShortMessageData(Ljava/lang/String;)Z
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->sendMessageData()Ljava/io/Writer;

    move-result-object v0

    .line 393
    .local v0, "writer":Ljava/io/Writer;
    if-nez v0, :cond_8

    .line 394
    const/4 v1, 0x0

    return v1

    .line 396
    :cond_8
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 399
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->completePendingCommand()Z

    move-result v1

    return v1
.end method

.method public sendSimpleMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "recipient"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->setSender(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 428
    return v1

    .line 430
    :cond_8
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/smtp/SMTPClient;->addRecipient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 431
    return v1

    .line 433
    :cond_f
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/smtp/SMTPClient;->sendShortMessageData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendSimpleMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "recipients"    # [Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    const/4 v0, 0x0

    .line 465
    .local v0, "oneSuccess":Z
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->setSender(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 466
    return v2

    .line 468
    :cond_9
    move v1, v0

    const/4 v0, 0x0

    .local v0, "count":I
    .local v1, "oneSuccess":Z
    :goto_b
    array-length v3, p2

    if-ge v0, v3, :cond_1a

    .line 470
    aget-object v3, p2, v0

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/smtp/SMTPClient;->addRecipient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 471
    const/4 v1, 0x1

    .line 468
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 474
    :cond_1a
    if-nez v1, :cond_1d

    .line 475
    return v2

    .line 477
    :cond_1d
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/smtp/SMTPClient;->sendShortMessageData(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setSender(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTPClient;->mail(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public setSender(Lorg/apache/commons/net/smtp/RelayPath;)Z
    .registers 3
    .param p1, "path"    # Lorg/apache/commons/net/smtp/RelayPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Lorg/apache/commons/net/smtp/RelayPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTPClient;->mail(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/lang/String;)Z
    .registers 4
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->vrfy(Ljava/lang/String;)I

    move-result v0

    .line 539
    .local v0, "result":I
    const/16 v1, 0xfa

    if-eq v0, v1, :cond_f

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method
