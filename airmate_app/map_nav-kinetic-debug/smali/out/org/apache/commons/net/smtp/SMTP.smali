.class public Lorg/apache/commons/net/smtp/SMTP;
.super Lorg/apache/commons/net/SocketClient;
.source "SMTP.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x19

.field private static final __DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field private __commandBuffer:Ljava/lang/StringBuffer;

.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field _newReplyString:Z

.field _reader:Ljava/io/BufferedReader;

.field _replyCode:I

.field _replyLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _replyString:Ljava/lang/String;

.field _writer:Ljava/io/BufferedWriter;

.field private encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 121
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 98
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    .line 122
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->setDefaultPort(I)V

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->__commandBuffer:Ljava/lang/StringBuffer;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    .line 127
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private __getReply()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    .line 178
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_b0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 189
    .local v1, "length":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_99

    .line 195
    const/4 v3, 0x0

    :try_start_18
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "code":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_22} :catch_81

    .line 202
    .end local v4    # "code":Ljava/lang/String;
    nop

    .line 204
    iget-object v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    if-le v1, v2, :cond_5f

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5f

    .line 211
    :cond_32
    iget-object v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_57

    .line 217
    iget-object v4, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x4

    if-lt v4, v6, :cond_32

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_32

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_5f

    .line 214
    :cond_57
    new-instance v2, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    const-string v3, "Connection closed without indication."

    invoke-direct {v2, v3}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_5f
    :goto_5f
    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v2}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v2

    if-lez v2, :cond_72

    .line 231
    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    iget v3, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReplyString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    .line 233
    :cond_72
    iget v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    const/16 v3, 0x1a5

    if-eq v2, v3, :cond_79

    .line 236
    return-void

    .line 234
    :cond_79
    new-instance v2, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    const-string v3, "SMTP response 421 received.  Server closed connection."

    invoke-direct {v2, v3}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :catch_81
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse response code.\nServer Reply: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_99
    new-instance v2, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated server reply: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    .end local v1    # "length":I
    :cond_b0
    new-instance v1, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    const-string v2, "Connection closed without indication."

    invoke-direct {v1, v2}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private __sendCommand(ILjava/lang/String;Z)I
    .registers 5
    .param p1, "command"    # I
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "includeSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lorg/apache/commons/net/smtp/SMTPCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private __sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "includeSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->__commandBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 146
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->__commandBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    if-eqz p2, :cond_1b

    .line 150
    if-eqz p3, :cond_16

    .line 151
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->__commandBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->__commandBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_1b
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->__commandBuffer:Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->__commandBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 160
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 161
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_40
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;->__getReply()V

    .line 164
    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    return v0
.end method


# virtual methods
.method protected _connectAction_()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 243
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_input_:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    .line 246
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_output_:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    .line 249
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;->__getReply()V

    .line 251
    return-void
.end method

.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .line 262
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 263
    return-void
.end method

.method public data()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

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

    .line 288
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    .line 290
    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    .line 291
    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    .line 294
    return-void
.end method

.method public expn(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getReply()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;->__getReply()V

    .line 432
    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    return v0
.end method

.method public getReplyCode()I
    .registers 2

    .line 409
    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .registers 5

    .line 462
    iget-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    if-nez v0, :cond_7

    .line 463
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    return-object v0

    .line 465
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 469
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 473
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "line":Ljava/lang/String;
    :cond_27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    return-object v1
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .registers 4

    .line 446
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 447
    .local v0, "lines":[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 448
    return-object v0
.end method

.method public helo(Ljava/lang/String;)I
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

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

    .line 691
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public help(Ljava/lang/String;)I
    .registers 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mail(Ljava/lang/String;)I
    .registers 4
    .param p1, "reversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public noop()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

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

    .line 766
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public rcpt(Ljava/lang/String;)I
    .registers 4
    .param p1, "forwardPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public removeProtocolCommandistener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .line 273
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 274
    return-void
.end method

.method public rset()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public saml(Ljava/lang/String;)I
    .registers 3
    .param p1, "reversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;)I
    .registers 3
    .param p1, "reversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(I)I
    .registers 3
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

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

    .line 346
    sget-object v0, Lorg/apache/commons/net/smtp/SMTPCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public soml(Ljava/lang/String;)I
    .registers 3
    .param p1, "reversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public turn()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public vrfy(Ljava/lang/String;)I
    .registers 3
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
