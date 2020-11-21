.class public Lorg/apache/commons/net/telnet/TelnetClient;
.super Lorg/apache/commons/net/telnet/Telnet;
.source "TelnetClient.java"


# instance fields
.field private __input:Ljava/io/InputStream;

.field private __output:Ljava/io/OutputStream;

.field protected readerThread:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    const-string v0, "VT100"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    .line 66
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "termtype"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    .line 74
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    .line 75
    return-void
.end method


# virtual methods
.method _closeOutputStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 85
    return-void
.end method

.method protected _connectAction_()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_connectAction_()V

    .line 99
    invoke-static {}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->isConversionRequired()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 100
    new-instance v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_input_:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_13

    .line 102
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_input_:Ljava/io/InputStream;

    .line 105
    .local v0, "input":Ljava/io/InputStream;
    :goto_13
    new-instance v1, Lorg/apache/commons/net/telnet/TelnetInputStream;

    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    invoke-direct {v1, v0, p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    .line 106
    .local v1, "tmp":Lorg/apache/commons/net/telnet/TelnetInputStream;
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    if-eqz v2, :cond_21

    .line 108
    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->_start()V

    .line 116
    :cond_21
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    .line 117
    new-instance v2, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;

    new-instance v3, Lorg/apache/commons/net/telnet/TelnetOutputStream;

    invoke-direct {v3, p0}, Lorg/apache/commons/net/telnet/TelnetOutputStream;-><init>(Lorg/apache/commons/net/telnet/TelnetClient;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    .line 118
    return-void
.end method

.method _flushOutputStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 81
    return-void
.end method

.method public addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .registers 2
    .param p1, "opthand"    # Lorg/apache/commons/net/telnet/TelnetOptionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;
        }
    .end annotation

    .line 223
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V

    .line 224
    return-void
.end method

.method public deleteOptionHandler(I)V
    .registers 2
    .param p1, "optcode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;
        }
    .end annotation

    .line 238
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->deleteOptionHandler(I)V

    .line 239
    return-void
.end method

.method public disconnect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 132
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    if-eqz v0, :cond_12

    .line 133
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 134
    :cond_12
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->disconnect()V

    .line 135
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalOptionState(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 171
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_stateIsWill(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getReaderThread()Z
    .registers 2

    .line 304
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    return v0
.end method

.method public getRemoteOptionState(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 185
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_stateIsDo(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .registers 2
    .param p1, "notifhand"    # Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 273
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V

    .line 274
    return-void
.end method

.method public registerSpyStream(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "spystream"    # Ljava/io/OutputStream;

    .line 251
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_registerSpyStream(Ljava/io/OutputStream;)V

    .line 252
    return-void
.end method

.method public sendAYT(J)Z
    .registers 4
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendAYT(J)Z

    move-result v0

    return v0
.end method

.method public setReaderThread(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 294
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 295
    return-void
.end method

.method public stopSpyStream()V
    .registers 1

    .line 260
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_stopSpyStream()V

    .line 261
    return-void
.end method

.method public unregisterNotifHandler()V
    .registers 1

    .line 283
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->unregisterNotifHandler()V

    .line 284
    return-void
.end method
