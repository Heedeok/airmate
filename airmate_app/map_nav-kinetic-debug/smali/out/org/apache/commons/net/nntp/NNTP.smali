.class public Lorg/apache/commons/net/nntp/NNTP;
.super Lorg/apache/commons/net/SocketClient;
.source "NNTP.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x77

.field private static final __DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field private __commandBuffer:Ljava/lang/StringBuffer;

.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field _isAllowedToPost:Z

.field protected _reader_:Ljava/io/BufferedReader;

.field _replyCode:I

.field _replyString:Ljava/lang/String;

.field protected _writer_:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 126
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 127
    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->setDefaultPort(I)V

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->__commandBuffer:Ljava/lang/StringBuffer;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 131
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    .line 133
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    .line 134
    return-void
.end method

.method private __getReply()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    if-eqz v0, :cond_87

    .line 146
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_6e

    .line 151
    :try_start_15
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_22} :catch_54

    .line 157
    nop

    .line 159
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_45

    .line 160
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    iget v1, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    .line 163
    :cond_45
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_4c

    .line 166
    return-void

    .line 164
    :cond_4c
    new-instance v0, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;

    const-string v1, "NNTP response 400 received.  Server closed connection."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :catch_54
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse response code.\nServer Reply: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6e
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated server reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_87
    new-instance v0, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected _connectAction_()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 178
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->_input_:Ljava/io/InputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 181
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->_output_:Ljava/io/OutputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    .line 184
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;->__getReply()V

    .line 186
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    .line 187
    return-void
.end method

.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .line 197
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 198
    return-void
.end method

.method public article()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public article(I)I
    .registers 4
    .param p1, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public article(Ljava/lang/String;)I
    .registers 3
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public authinfoPass(Ljava/lang/String;)I
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "passParameter":Ljava/lang/String;
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public authinfoUser(Ljava/lang/String;)I
    .registers 4
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "userParameter":Ljava/lang/String;
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public body()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public body(I)I
    .registers 4
    .param p1, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public body(Ljava/lang/String;)I
    .registers 3
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disconnect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 224
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    .line 225
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    .line 227
    return-void
.end method

.method public getReply()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;->__getReply()V

    .line 396
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    return v0
.end method

.method public getReplyCode()I
    .registers 2

    .line 373
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .registers 2

    .line 408
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    return-object v0
.end method

.method public group(Ljava/lang/String;)I
    .registers 3
    .param p1, "newsgroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public head()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public head(I)I
    .registers 4
    .param p1, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public head(Ljava/lang/String;)I
    .registers 3
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public help()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public ihave(Ljava/lang/String;)I
    .registers 3
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAllowedToPost()Z
    .registers 2

    .line 239
    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    return v0
.end method

.method public last()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public list()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public listActive(Ljava/lang/String;)I
    .registers 5
    .param p1, "wildmat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1010
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ACTIVE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v0, "command":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .registers 8
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "GMT"    # Z
    .param p4, "distributions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 795
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 797
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    if-eqz p3, :cond_1a

    .line 801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 802
    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 805
    :cond_1a
    if-eqz p4, :cond_29

    .line 807
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 809
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 812
    :cond_29
    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .registers 9
    .param p1, "newsgroups"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "GMT"    # Z
    .param p5, "distributions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 843
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 844
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 845
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 847
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 849
    if-eqz p4, :cond_20

    .line 851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 852
    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    :cond_20
    if-eqz p5, :cond_2f

    .line 857
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 858
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 859
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 862
    :cond_2f
    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public next()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public post()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public quit()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .line 208
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 209
    return-void
.end method

.method public sendCommand(I)I
    .registers 3
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(ILjava/lang/String;)I
    .registers 4
    .param p1, "command"    # I
    .param p2, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    sget-object v0, Lorg/apache/commons/net/nntp/NNTPCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->__commandBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 267
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->__commandBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    if-eqz p2, :cond_19

    .line 271
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->__commandBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->__commandBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    :cond_19
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->__commandBuffer:Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTP;->__commandBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 279
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_3e

    .line 280
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_3e
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;->__getReply()V

    .line 283
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    return v0
.end method

.method public stat()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public stat(I)I
    .registers 4
    .param p1, "articleNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stat(Ljava/lang/String;)I
    .registers 3
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public xhdr(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "selectedArticles"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 995
    .local v0, "command":Ljava/lang/StringBuffer;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 996
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 997
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public xover(Ljava/lang/String;)I
    .registers 3
    .param p1, "selectedArticles"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
