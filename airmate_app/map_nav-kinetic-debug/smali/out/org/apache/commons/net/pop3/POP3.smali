.class public Lorg/apache/commons/net/pop3/POP3;
.super Lorg/apache/commons/net/SocketClient;
.source "POP3.java"


# static fields
.field public static final AUTHORIZATION_STATE:I = 0x0

.field public static final DEFAULT_PORT:I = 0x6e

.field public static final DISCONNECTED_STATE:I = -0x1

.field public static final TRANSACTION_STATE:I = 0x1

.field public static final UPDATE_STATE:I = 0x2

.field static final _ERROR:Ljava/lang/String; = "-ERR"

.field static final _OK:Ljava/lang/String; = "+OK"

.field private static final __DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field private __commandBuffer:Ljava/lang/StringBuffer;

.field private __popState:I

.field private __writer:Ljava/io/BufferedWriter;

.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field _lastReplyLine:Ljava/lang/String;

.field _reader:Ljava/io/BufferedReader;

.field _replyCode:I

.field _replyLines:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 101
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->setDefaultPort(I)V

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__commandBuffer:Ljava/lang/StringBuffer;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/pop3/POP3;->__popState:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    .line 105
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__writer:Ljava/io/BufferedWriter;

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/Vector;

    .line 107
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    .line 108
    return-void
.end method

.method private __getReply()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 115
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_47

    .line 120
    const-string v2, "+OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 121
    iput v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyCode:I

    goto :goto_24

    .line 122
    :cond_19
    const-string v1, "-ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 123
    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyCode:I

    .line 129
    :goto_24
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 130
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_lastReplyLine:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v1}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v1

    if-lez v1, :cond_3e

    .line 133
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    iget v2, p0, Lorg/apache/commons/net/pop3/POP3;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getReplyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    .line 134
    :cond_3e
    return-void

    .line 125
    :cond_3f
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    const-string v2, "Received invalid POP3 protocol response from server."

    invoke-direct {v1, v2}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_47
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Connection closed without indication."

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected _connectAction_()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 145
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/pop3/POP3;->_input_:Ljava/io/InputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    .line 148
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/pop3/POP3;->_output_:Ljava/io/OutputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__writer:Ljava/io/BufferedWriter;

    .line 151
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;->__getReply()V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->setState(I)V

    .line 153
    return-void
.end method

.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .line 164
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 165
    return-void
.end method

.method public disconnect()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    .line 233
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__writer:Ljava/io/BufferedWriter;

    .line 234
    iput-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_lastReplyLine:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->setState(I)V

    .line 237
    return-void
.end method

.method public getAdditionalReply()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "line":Ljava/lang/String;
    :goto_6
    if-eqz v0, :cond_1d

    .line 212
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 213
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 214
    goto :goto_1d

    .line 215
    :cond_16
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 217
    :cond_1d
    :goto_1d
    return-void
.end method

.method public getReplyString()Ljava/lang/String;
    .registers 4

    .line 345
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 347
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 348
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 350
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 354
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .registers 3

    .line 325
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 326
    .local v0, "lines":[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->_replyLines:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 327
    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 198
    iget v0, p0, Lorg/apache/commons/net/pop3/POP3;->__popState:I

    return v0
.end method

.method public removeProtocolCommandistener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .line 175
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 176
    return-void
.end method

.method public sendCommand(I)I
    .registers 4
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 293
    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 251
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__commandBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 252
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__commandBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    if-eqz p2, :cond_19

    .line 256
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__commandBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__commandBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_19
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__commandBuffer:Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__writer:Ljava/io/BufferedWriter;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->__commandBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 264
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_3e

    .line 265
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_3e
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;->__getReply()V

    .line 268
    iget v0, p0, Lorg/apache/commons/net/pop3/POP3;->_replyCode:I

    return v0
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 187
    iput p1, p0, Lorg/apache/commons/net/pop3/POP3;->__popState:I

    .line 188
    return-void
.end method
