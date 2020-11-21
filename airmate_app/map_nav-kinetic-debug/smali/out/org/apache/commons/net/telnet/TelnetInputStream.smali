.class final Lorg/apache/commons/net/telnet/TelnetInputStream;
.super Ljava/io/BufferedInputStream;
.source "TelnetInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final _STATE_CR:I = 0x8

.field static final _STATE_DATA:I = 0x0

.field static final _STATE_DO:I = 0x4

.field static final _STATE_DONT:I = 0x5

.field static final _STATE_IAC:I = 0x1

.field static final _STATE_IAC_SB:I = 0x9

.field static final _STATE_SB:I = 0x6

.field static final _STATE_SE:I = 0x7

.field static final _STATE_WILL:I = 0x2

.field static final _STATE_WONT:I = 0x3


# instance fields
.field private __bytesAvailable:I

.field private __client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private __hasReachedEOF:Z

.field private __ioException:Ljava/io/IOException;

.field private __isClosed:Z

.field private __queue:[I

.field private __queueHead:I

.field private __queueTail:I

.field private __readIsWaiting:Z

.field private __receiveState:I

.field private __suboption:[I

.field private __suboption_count:I

.field private __thread:Ljava/lang/Thread;

.field private __threaded:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "client"    # Lorg/apache/commons/net/telnet/TelnetClient;

    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    .line 82
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V
    .registers 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "client"    # Lorg/apache/commons/net/telnet/TelnetClient;
    .param p3, "readerThread"    # Z

    .line 60
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    .line 61
    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 62
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 64
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    .line 67
    const/16 v1, 0x801

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    .line 68
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    .line 69
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    .line 70
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 72
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    .line 73
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    .line 74
    if-eqz p3, :cond_32

    .line 75
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    goto :goto_34

    .line 77
    :cond_32
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    .line 78
    :goto_34
    return-void
.end method

.method private __processChar(I)V
    .registers 5
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    .line 286
    :goto_3
    :try_start_3
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_25

    .line 290
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v1, :cond_1d

    .line 292
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_4e

    .line 295
    :try_start_15
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_4e

    .line 300
    goto :goto_3

    .line 297
    :catch_1b
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1c
    throw v1

    .line 306
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Queue is full! Cannot process another character."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_25
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    if-eqz v1, :cond_32

    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v1, :cond_32

    .line 313
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 316
    :cond_32
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    aput p1, v1, v2

    .line 317
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 319
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v2, v2

    if-lt v1, v2, :cond_4c

    .line 320
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueTail:I

    .line 321
    :cond_4c
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_1c .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private __read(Z)I
    .registers 8
    .param p1, "mayBlock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    :goto_0
    if-nez p1, :cond_a

    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    if-nez v0, :cond_a

    .line 119
    const/4 v0, -0x2

    return v0

    .line 122
    :cond_a
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "ch":I
    if-gez v0, :cond_13

    .line 123
    const/4 v0, -0x1

    return v0

    .line 125
    :cond_13
    and-int/lit16 v0, v1, 0xff

    .line 128
    .end local v1    # "ch":I
    .local v0, "ch":I
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 130
    :try_start_18
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_processAYTResponse()V

    .line 131
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_105

    .line 135
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_spyRead(I)V

    .line 139
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    const/4 v2, 0x6

    const/16 v3, 0xff

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_108

    :pswitch_2c
    goto/16 :goto_103

    .line 251
    :pswitch_2e
    const/16 v1, 0xf0

    if-eq v0, v1, :cond_37

    .line 262
    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 265
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 266
    goto :goto_0

    .line 254
    :cond_37
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 256
    :try_start_3a
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    invoke-virtual {v2, v3, v5}, Lorg/apache/commons/net/telnet/TelnetClient;->_processSuboption([II)V

    .line 257
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 258
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_4c

    .line 259
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 260
    goto :goto_0

    .line 258
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2

    .line 143
    :pswitch_4f
    if-nez v0, :cond_de

    .line 146
    goto :goto_0

    .line 238
    :pswitch_52
    if-eq v0, v3, :cond_61

    .line 245
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption:[I

    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    aput v0, v1, v3

    .line 248
    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 249
    goto :goto_0

    .line 241
    :cond_61
    const/16 v1, 0x9

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 242
    goto :goto_0

    .line 229
    :pswitch_66
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 231
    :try_start_69
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processDont(I)V

    .line 232
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 233
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_77

    .line 234
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 235
    goto :goto_0

    .line 233
    :catchall_77
    move-exception v2

    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v2

    .line 221
    :pswitch_7a
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 223
    :try_start_7d
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processDo(I)V

    .line 224
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 225
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_8c

    .line 226
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 227
    goto/16 :goto_0

    .line 225
    :catchall_8c
    move-exception v2

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v2

    .line 213
    :pswitch_8f
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 215
    :try_start_92
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processWont(I)V

    .line 216
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 217
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_a1

    .line 218
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 219
    goto/16 :goto_0

    .line 217
    :catchall_a1
    move-exception v2

    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v2

    .line 205
    :pswitch_a4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 207
    :try_start_a7
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_processWill(I)V

    .line 208
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 209
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_b6

    .line 210
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 211
    goto/16 :goto_0

    .line 209
    :catchall_b6
    move-exception v2

    :try_start_b7
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v2

    .line 176
    :pswitch_b9
    packed-switch v0, :pswitch_data_120

    goto :goto_da

    .line 197
    :pswitch_bd
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 198
    goto :goto_da

    .line 188
    :pswitch_c0
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 189
    goto/16 :goto_0

    .line 185
    :pswitch_c5
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 186
    goto/16 :goto_0

    .line 182
    :pswitch_ca
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 183
    goto/16 :goto_0

    .line 179
    :pswitch_cf
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 180
    goto/16 :goto_0

    .line 192
    :pswitch_d4
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__suboption_count:I

    .line 193
    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 194
    goto/16 :goto_0

    .line 202
    :goto_da
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 203
    goto/16 :goto_0

    .line 154
    :cond_de
    :pswitch_de
    if-ne v0, v3, :cond_e5

    .line 156
    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 157
    goto/16 :goto_0

    .line 161
    :cond_e5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_100

    .line 163
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v1

    .line 165
    :try_start_ec
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedDont(I)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 166
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    goto :goto_fb

    .line 168
    :cond_f9
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 169
    :goto_fb
    monitor-exit v1

    goto :goto_103

    :catchall_fd
    move-exception v2

    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_ec .. :try_end_ff} :catchall_fd

    throw v2

    .line 172
    :cond_100
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__receiveState:I

    .line 173
    nop

    .line 270
    :goto_103
    nop

    .line 273
    return v0

    .line 131
    :catchall_105
    move-exception v2

    :try_start_106
    monitor-exit v1
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    throw v2

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_de
        :pswitch_b9
        :pswitch_a4
        :pswitch_8f
        :pswitch_7a
        :pswitch_66
        :pswitch_52
        :pswitch_2c
        :pswitch_4f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0xfa
        :pswitch_d4
        :pswitch_cf
        :pswitch_ca
        :pswitch_c5
        :pswitch_c0
        :pswitch_bd
    .end packed-switch
.end method


# virtual methods
.method _start()V
    .registers 4

    .line 86
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    if-nez v0, :cond_5

    .line 87
    return-void

    .line 90
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 96
    .local v0, "priority":I
    const/16 v2, 0xa

    if-le v0, v2, :cond_18

    .line 97
    const/16 v0, 0xa

    .line 98
    :cond_18
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 99
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 100
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 101
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    .line 102
    return-void
.end method

.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    .line 521
    :try_start_3
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    monitor-exit v0

    return v1

    .line 522
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 537
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    .line 539
    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    .line 540
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 542
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 544
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 547
    :cond_1c
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 548
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_26

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    .line 551
    return-void

    .line 548
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public markSupported()Z
    .registers 2

    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    .line 335
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "ch":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    if-nez v3, :cond_a4

    .line 343
    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    const/4 v4, 0x1

    if-nez v3, :cond_7e

    .line 346
    iget-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    const/4 v5, -0x1

    if-eqz v3, :cond_15

    .line 347
    .end local v2    # "ch":I
    monitor-exit v0

    return v5

    .line 350
    .restart local v2    # "ch":I
    :cond_15
    iget-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v3, :cond_31

    .line 352
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_aa

    .line 355
    :try_start_1e
    iput-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    .line 356
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 357
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_aa

    .line 362
    goto :goto_5

    .line 359
    .end local v2    # "ch":I
    :catch_28
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_29
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Fatal thread interruption during read."

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "ch":I
    :cond_31
    iput-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_aa

    .line 369
    move v3, v2

    const/4 v2, 0x1

    .line 375
    .local v2, "mayBlock":Z
    .local v3, "ch":I
    :cond_35
    :try_start_35
    invoke-direct {p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__read(Z)I

    move-result v6
    :try_end_39
    .catch Ljava/io/InterruptedIOException; {:try_start_35 .. :try_end_39} :catch_64
    .catchall {:try_start_35 .. :try_end_39} :catchall_aa

    .end local v3    # "ch":I
    move v3, v6

    .restart local v3    # "ch":I
    const/4 v7, -0x2

    if-gez v6, :cond_41

    .line 376
    if-eq v3, v7, :cond_41

    .line 377
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_aa

    return v3

    .line 394
    :cond_41
    nop

    .line 399
    if-eq v3, v7, :cond_4f

    .line 401
    :try_start_44
    invoke-direct {p0, v3}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__processChar(I)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_aa

    goto :goto_4f

    .line 404
    :catch_48
    move-exception v6

    .line 406
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_49
    iget-boolean v7, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v7, :cond_50

    .line 407
    monitor-exit v0

    return v5

    .line 408
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_4f
    :goto_4f
    nop

    .line 412
    :cond_50
    const/4 v2, 0x0

    .line 416
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v6

    if-lez v6, :cond_5f

    iget v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    iget-object v7, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    if-lt v6, v7, :cond_35

    .line 418
    :cond_5f
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__readIsWaiting:Z

    .line 420
    .end local v2    # "mayBlock":Z
    .end local v3    # "ch":I
    nop

    .line 335
    move v2, v3

    goto :goto_5

    .line 379
    .restart local v2    # "mayBlock":Z
    .restart local v3    # "ch":I
    :catch_64
    move-exception v1

    .line 381
    .local v1, "e":Ljava/io/InterruptedIOException;
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v4
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_aa

    .line 383
    :try_start_68
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 384
    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_7b

    .line 387
    :try_start_6f
    iget-object v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_76} :catch_77
    .catchall {:try_start_6f .. :try_end_76} :catchall_7b

    .line 391
    goto :goto_78

    .line 389
    :catch_77
    move-exception v6

    .line 392
    :goto_78
    :try_start_78
    monitor-exit v4
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_7b

    .line 393
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_aa

    return v5

    .line 392
    :catchall_7b
    move-exception v5

    :try_start_7c
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v5

    .line 426
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    .end local v2    # "mayBlock":Z
    .end local v3    # "ch":I
    :cond_7e
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    aget v2, v2, v3

    .line 428
    .local v2, "ch":I
    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    array-length v5, v5

    if-lt v3, v5, :cond_90

    .line 429
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queueHead:I

    .line 431
    :cond_90
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    .line 434
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-nez v1, :cond_a2

    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    if-eqz v1, :cond_a2

    .line 435
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 438
    :cond_a2
    monitor-exit v0

    return v2

    .line 338
    .end local v2    # "ch":I
    :cond_a4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 339
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 340
    throw v1

    .line 441
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_aa
    move-exception v1

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_7d .. :try_end_ac} :catchall_aa

    throw v1
.end method

.method public read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    const/4 v0, 0x1

    if-ge p3, v0, :cond_5

    .line 483
    const/4 v0, 0x0

    return v0

    .line 486
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v0

    .line 488
    :try_start_8
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    if-le p3, v1, :cond_f

    .line 489
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__bytesAvailable:I

    move p3, v1

    .line 490
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_30

    .line 492
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "ch":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_19

    .line 493
    return v2

    .line 495
    :cond_19
    move v0, p3

    move p3, p2

    .line 499
    .local v0, "length":I
    .local p2, "off":I
    .local p3, "offset":I
    :goto_1b
    add-int/lit8 v3, p3, 0x1

    .local v3, "offset":I
    int-to-byte v4, v1

    aput-byte v4, p1, p3

    .line 501
    .end local p3    # "offset":I
    add-int/2addr v0, v2

    if-lez v0, :cond_2d

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result p3

    move v1, p3

    if-ne p3, v2, :cond_2b

    goto :goto_2d

    .line 495
    :cond_2b
    move p3, v3

    goto :goto_1b

    .line 504
    :cond_2d
    :goto_2d
    sub-int p3, v3, p2

    return p3

    .line 490
    .end local v0    # "length":I
    .end local v1    # "ch":I
    .end local v3    # "offset":I
    .local p2, "offset":I
    .local p3, "length":I
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public run()V
    .registers 9

    .line 560
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "ch":I
    :goto_2
    const/4 v2, 0x1

    :try_start_3
    iget-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_5} :catch_3f

    if-nez v3, :cond_3e

    .line 564
    :try_start_7
    invoke-direct {p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__read(Z)I

    move-result v3
    :try_end_b
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_b} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_b} :catch_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_3f

    .end local v1    # "ch":I
    move v1, v3

    .restart local v1    # "ch":I
    if-gez v3, :cond_f

    .line 565
    goto :goto_3e

    .line 592
    :cond_f
    nop

    .line 596
    :try_start_10
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->__processChar(I)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_3f

    .line 602
    :cond_13
    goto :goto_2

    .line 598
    :catch_14
    move-exception v3

    .line 600
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_15
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v4, :cond_13

    .line 601
    goto :goto_3e

    .line 584
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_1a
    move-exception v3

    .line 588
    .local v3, "re":Ljava/lang/RuntimeException;
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 591
    goto :goto_3e

    .line 567
    .end local v3    # "re":Ljava/lang/RuntimeException;
    :catch_1f
    move-exception v3

    .line 569
    .local v3, "e":Ljava/io/InterruptedIOException;
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v4
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_3f

    .line 571
    :try_start_23
    iput-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 572
    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_3b

    .line 575
    :try_start_2a
    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_31} :catch_32
    .catchall {:try_start_2a .. :try_end_31} :catchall_3b

    .line 581
    goto :goto_39

    .line 577
    :catch_32
    move-exception v5

    .line 579
    .local v5, "interrupted":Ljava/lang/InterruptedException;
    :try_start_33
    iget-boolean v6, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    if-eqz v6, :cond_39

    .line 580
    monitor-exit v4

    goto :goto_3e

    .line 582
    .end local v5    # "interrupted":Ljava/lang/InterruptedException;
    :cond_39
    :goto_39
    monitor-exit v4

    goto :goto_2

    .line 583
    :catchall_3b
    move-exception v5

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v5
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3e} :catch_3f

    .line 611
    .end local v1    # "ch":I
    .end local v3    # "e":Ljava/io/InterruptedIOException;
    :cond_3e
    :goto_3e
    goto :goto_46

    .line 605
    :catch_3f
    move-exception v1

    .line 607
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v3

    .line 609
    :try_start_43
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__ioException:Ljava/io/IOException;

    .line 610
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_59

    .line 613
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_46
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    monitor-enter v4

    .line 615
    :try_start_49
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__isClosed:Z

    .line 616
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__hasReachedEOF:Z

    .line 617
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 618
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_56

    .line 620
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->__threaded:Z

    .line 621
    return-void

    .line 618
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0

    .line 610
    .restart local v1    # "ioe":Ljava/io/IOException;
    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0
.end method
