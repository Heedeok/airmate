.class Lorg/apache/commons/net/telnet/Telnet;
.super Lorg/apache/commons/net/SocketClient;
.source "Telnet.java"


# static fields
.field static final DEFAULT_PORT:I = 0x17

.field protected static final TERMINAL_TYPE:I = 0x18

.field protected static final TERMINAL_TYPE_IS:I = 0x0

.field protected static final TERMINAL_TYPE_SEND:I = 0x1

.field static final _COMMAND_AYT:[B

.field static final _COMMAND_DO:[B

.field static final _COMMAND_DONT:[B

.field static final _COMMAND_IS:[B

.field static final _COMMAND_SB:[B

.field static final _COMMAND_SE:[B

.field static final _COMMAND_WILL:[B

.field static final _COMMAND_WONT:[B

.field static final _DO_MASK:I = 0x2

.field static final _REQUESTED_DO_MASK:I = 0x8

.field static final _REQUESTED_WILL_MASK:I = 0x4

.field static final _WILL_MASK:I = 0x1

.field static final debug:Z = false

.field static final debugoptions:Z = false


# instance fields
.field private __notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

.field _doResponse:[I

.field _options:[I

.field _willResponse:[I

.field private aytFlag:Z

.field private aytMonitor:Ljava/lang/Object;

.field private optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

.field private spyStream:Ljava/io/OutputStream;

.field private terminalType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_3a

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DO:[B

    .line 41
    new-array v1, v0, [B

    fill-array-data v1, :array_40

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DONT:[B

    .line 45
    new-array v1, v0, [B

    fill-array-data v1, :array_46

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WILL:[B

    .line 49
    new-array v1, v0, [B

    fill-array-data v1, :array_4c

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WONT:[B

    .line 53
    new-array v1, v0, [B

    fill-array-data v1, :array_52

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SB:[B

    .line 57
    new-array v1, v0, [B

    fill-array-data v1, :array_58

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SE:[B

    .line 88
    new-array v1, v0, [B

    fill-array-data v1, :array_5e

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_IS:[B

    .line 110
    new-array v0, v0, [B

    fill-array-data v0, :array_64

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_AYT:[B

    return-void

    :array_3a
    .array-data 1
        -0x1t
        -0x3t
    .end array-data

    nop

    :array_40
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_46
    .array-data 1
        -0x1t
        -0x5t
    .end array-data

    nop

    :array_4c
    .array-data 1
        -0x1t
        -0x4t
    .end array-data

    nop

    :array_52
    .array-data 1
        -0x1t
        -0x6t
    .end array-data

    nop

    :array_58
    .array-data 1
        -0x1t
        -0x10t
    .end array-data

    nop

    :array_5e
    .array-data 1
        0x18t
        0x0t
    .end array-data

    nop

    :array_64
    .array-data 1
        -0x1t
        -0xat
    .end array-data
.end method

.method constructor <init>()V
    .registers 3

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 128
    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 133
    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 139
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->setDefaultPort(I)V

    .line 140
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    .line 141
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    .line 142
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    .line 143
    new-array v0, v0, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 145
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "termtype"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 128
    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 133
    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 155
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->setDefaultPort(I)V

    .line 156
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    .line 157
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    .line 158
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    .line 159
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    .line 160
    new-array v0, v0, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    .line 162
    return-void
.end method


# virtual methods
.method protected _connectAction_()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_2
    const/16 v2, 0x100

    if-ge v1, v2, :cond_29

    .line 826
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aput v0, v2, v1

    .line 827
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aput v0, v2, v1

    .line 828
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aput v0, v2, v1

    .line 829
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, v1

    if-eqz v2, :cond_26

    .line 831
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    .line 832
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    .line 824
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 837
    .end local v1    # "ii":I
    :cond_29
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 838
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lorg/apache/commons/net/telnet/Telnet;->_input_:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_input_:Ljava/io/InputStream;

    .line 839
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    .line 842
    nop

    .local v0, "ii":I
    :goto_3f
    if-ge v0, v2, :cond_ac

    .line 844
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a9

    .line 846
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 850
    :try_start_51
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->_requestWill(I)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5c} :catch_5d

    .line 857
    goto :goto_78

    .line 852
    :catch_5d
    move-exception v1

    .line 854
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while initializing option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 860
    .end local v1    # "e":Ljava/io/IOException;
    :cond_78
    :goto_78
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 864
    :try_start_82
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->_requestDo(I)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8d} :catch_8e

    .line 871
    goto :goto_a9

    .line 866
    :catch_8e
    move-exception v1

    .line 868
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while initializing option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 842
    .end local v1    # "e":Ljava/io/IOException;
    :cond_a9
    :goto_a9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 876
    .end local v0    # "ii":I
    :cond_ac
    return-void
.end method

.method final declared-synchronized _processAYTResponse()V
    .registers 6

    monitor-enter p0

    .line 797
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    if-nez v0, :cond_31

    .line 799
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_33

    .line 801
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_2e

    .line 804
    :try_start_b
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_2e

    .line 809
    goto :goto_2c

    .line 806
    :catch_11
    move-exception v1

    .line 808
    .local v1, "e":Ljava/lang/IllegalMonitorStateException;
    :try_start_12
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception notifying:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalMonitorStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 810
    .end local v1    # "e":Ljava/lang/IllegalMonitorStateException;
    :goto_2c
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_33

    .line 812
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 796
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method _processDo(I)V
    .registers 6
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 424
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 429
    :cond_a
    const/4 v0, 0x0

    .line 433
    .local v0, "acceptNewState":Z
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, p1

    if-eqz v2, :cond_1a

    .line 435
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptLocal()Z

    move-result v0

    goto :goto_2b

    .line 441
    :cond_1a
    const/16 v2, 0x18

    if-ne p1, v2, :cond_2b

    .line 443
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2b

    .line 445
    const/4 v0, 0x1

    .line 453
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v2, v2, p1

    if-lez v2, :cond_4b

    .line 455
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v3, v2, p1

    sub-int/2addr v3, v1

    aput v3, v2, p1

    .line 456
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v2, v2, p1

    if-lez v2, :cond_4b

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 458
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v3, v2, p1

    sub-int/2addr v3, v1

    aput v3, v2, p1

    .line 462
    :cond_4b
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v2, v2, p1

    if-nez v2, :cond_6d

    .line 464
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWont(I)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 467
    nop

    .line 476
    if-eqz v0, :cond_61

    .line 478
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWill(I)V

    .line 479
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWill(I)V

    goto :goto_6d

    .line 483
    :cond_61
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v3, v2, p1

    add-int/2addr v3, v1

    aput v3, v2, p1

    .line 484
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWont(I)V

    goto :goto_6d

    .line 491
    :cond_6c
    nop

    .line 502
    :cond_6d
    :goto_6d
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWill(I)V

    .line 503
    return-void
.end method

.method _processDont(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_a

    .line 520
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 524
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_2c

    .line 526
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 527
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_2c

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWont(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 529
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 533
    :cond_2c
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_4b

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 536
    nop

    .line 545
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 547
    :cond_45
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWont(I)V

    .line 550
    :cond_48
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWont(I)V

    .line 554
    :cond_4b
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWont(I)V

    .line 555
    return-void
.end method

.method _processSuboption([II)V
    .registers 6
    .param p1, "suboption"    # [I
    .param p2, "suboptionLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    if-lez p2, :cond_29

    .line 697
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    const/4 v1, 0x0

    aget v2, p1, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_19

    .line 699
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->answerSubnegotiation([II)[I

    move-result-object v0

    .line 702
    .local v0, "responseSuboption":[I
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    .line 703
    .end local v0    # "responseSuboption":[I
    goto :goto_29

    .line 706
    :cond_19
    const/4 v0, 0x1

    if-le p2, v0, :cond_29

    .line 716
    aget v1, p1, v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_29

    aget v1, p1, v0

    if-ne v1, v0, :cond_29

    .line 719
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/Telnet;->_sendTerminalType()V

    .line 725
    :cond_29
    :goto_29
    return-void
.end method

.method _processWill(I)V
    .registers 5
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_a

    .line 574
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 579
    :cond_a
    const/4 v0, 0x0

    .line 582
    .local v0, "acceptNewState":Z
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    if-eqz v1, :cond_19

    .line 584
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptRemote()Z

    move-result v0

    .line 588
    :cond_19
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_3b

    .line 590
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    .line 591
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v1, p1

    if-lez v1, :cond_3b

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 593
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    .line 597
    :cond_3b
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v1, p1

    if-nez v1, :cond_5c

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDont(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 600
    nop

    .line 609
    if-eqz v0, :cond_51

    .line 611
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDo(I)V

    .line 612
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDo(I)V

    goto :goto_5c

    .line 616
    :cond_51
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p1

    .line 617
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDont(I)V

    .line 621
    :cond_5c
    :goto_5c
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setDo(I)V

    .line 622
    return-void
.end method

.method _processWont(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_a

    .line 640
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    .line 645
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_2c

    .line 647
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 648
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-lez v0, :cond_2c

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDont(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 650
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 654
    :cond_2c
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_4b

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 657
    nop

    .line 666
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 668
    :cond_45
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDont(I)V

    .line 671
    :cond_48
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDont(I)V

    .line 675
    :cond_4b
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setDont(I)V

    .line 676
    return-void
.end method

.method _registerSpyStream(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "spystream"    # Ljava/io/OutputStream;

    .line 1232
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 1233
    return-void
.end method

.method final declared-synchronized _requestDo(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 908
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_d
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_25

    if-eqz v0, :cond_15

    .line 911
    :cond_13
    monitor-exit p0

    return-void

    .line 913
    :cond_15
    :try_start_15
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDo(I)V

    .line 914
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 915
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDo(I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_25

    .line 916
    monitor-exit p0

    return-void

    .line 907
    .end local p1    # "option":I
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized _requestDont(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 948
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDont(I)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_d
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDont(I)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_25

    if-eqz v0, :cond_15

    .line 951
    :cond_13
    monitor-exit p0

    return-void

    .line 953
    :cond_15
    :try_start_15
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantDont(I)V

    .line 954
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 955
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendDont(I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_25

    .line 956
    monitor-exit p0

    return-void

    .line 947
    .end local p1    # "option":I
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized _requestWill(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 989
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_d
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_25

    if-eqz v0, :cond_15

    .line 992
    :cond_13
    monitor-exit p0

    return-void

    .line 994
    :cond_15
    :try_start_15
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWill(I)V

    .line 995
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 996
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWill(I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_25

    .line 997
    monitor-exit p0

    return-void

    .line 988
    .end local p1    # "option":I
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized _requestWont(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1029
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWont(I)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_d
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWont(I)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_25

    if-eqz v0, :cond_15

    .line 1032
    :cond_13
    monitor-exit p0

    return-void

    .line 1034
    :cond_15
    :try_start_15
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_setWantWont(I)V

    .line 1035
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1036
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendWont(I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_25

    .line 1037
    monitor-exit p0

    return-void

    .line 1028
    .end local p1    # "option":I
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method _requestedDo(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 246
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method _requestedDont(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 258
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method _requestedWill(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 222
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method _requestedWont(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final _sendAYT(J)Z
    .registers 9
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1069
    const/4 v0, 0x0

    .line 1070
    .local v0, "retValue":Z
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 1072
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_45

    .line 1074
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    .line 1075
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v3, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_AYT:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1076
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 1077
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_42

    .line 1081
    :try_start_15
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 1082
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    if-nez v2, :cond_23

    .line 1084
    const/4 v0, 0x0

    .line 1085
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z
    :try_end_22
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_15 .. :try_end_22} :catch_25
    .catchall {:try_start_15 .. :try_end_22} :catchall_45

    goto :goto_24

    .line 1089
    :cond_23
    const/4 v0, 0x1

    .line 1096
    :goto_24
    goto :goto_40

    .line 1092
    :catch_25
    move-exception v2

    .line 1094
    .local v2, "e":Ljava/lang/IllegalMonitorStateException;
    :try_start_26
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing AYT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalMonitorStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1097
    .end local v2    # "e":Ljava/lang/IllegalMonitorStateException;
    :goto_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_45

    .line 1099
    return v0

    .line 1077
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v2

    .line 1097
    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_45

    throw v2
.end method

.method final declared-synchronized _sendByte(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1048
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1051
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_spyWrite(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1054
    monitor-exit p0

    return-void

    .line 1047
    .end local p1    # "b":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized _sendDo(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 891
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DO:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 892
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 895
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 897
    monitor-exit p0

    return-void

    .line 890
    .end local p1    # "option":I
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized _sendDont(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 931
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_DONT:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 932
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 935
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 937
    monitor-exit p0

    return-void

    .line 930
    .end local p1    # "option":I
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized _sendSubnegotiation([I)V
    .registers 5
    .param p1, "subn"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 772
    if-eqz p1, :cond_2e

    .line 774
    :try_start_3
    array-length v0, p1

    new-array v0, v0, [B

    .line 775
    .local v0, "byteresp":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 777
    aget v2, p1, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 780
    .end local v1    # "ii":I
    :cond_12
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SB:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 781
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 782
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 785
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    goto :goto_2e

    .line 771
    .end local v0    # "byteresp":[B
    .end local p1    # "subn":[I
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1

    .line 788
    .restart local p1    # "subn":[I
    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized _sendTerminalType()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 739
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 741
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SB:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 742
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_IS:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 743
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 744
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_SE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 745
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 747
    :cond_2a
    monitor-exit p0

    return-void

    .line 738
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized _sendWill(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 972
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WILL:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 973
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 976
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 978
    monitor-exit p0

    return-void

    .line 971
    .end local p1    # "option":I
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized _sendWont(I)V
    .registers 4
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1012
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->_COMMAND_WONT:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1013
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1016
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 1018
    monitor-exit p0

    return-void

    .line 1011
    .end local p1    # "option":I
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method _setDo(I)V
    .registers 7
    .param p1, "option"    # I

    .line 305
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 308
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 310
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_45

    .line 312
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    .line 314
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationRemote()[I

    move-result-object v0

    .line 317
    .local v0, "subneg":[I
    if-eqz v0, :cond_45

    .line 321
    :try_start_26
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 327
    goto :goto_45

    .line 323
    :catch_2a
    move-exception v1

    .line 325
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in option subnegotiation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    .end local v0    # "subneg":[I
    .end local v1    # "e":Ljava/io/IOException;
    :cond_45
    :goto_45
    return-void
.end method

.method _setDont(I)V
    .registers 4
    .param p1, "option"    # I

    .line 378
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x3

    aput v1, v0, p1

    .line 381
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_16

    .line 383
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    .line 386
    :cond_16
    return-void
.end method

.method _setWantDo(I)V
    .registers 4
    .param p1, "option"    # I

    .line 351
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x8

    aput v1, v0, p1

    .line 352
    return-void
.end method

.method _setWantDont(I)V
    .registers 4
    .param p1, "option"    # I

    .line 405
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x9

    aput v1, v0, p1

    .line 406
    return-void
.end method

.method _setWantWill(I)V
    .registers 4
    .param p1, "option"    # I

    .line 341
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x4

    aput v1, v0, p1

    .line 342
    return-void
.end method

.method _setWantWont(I)V
    .registers 4
    .param p1, "option"    # I

    .line 395
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x5

    aput v1, v0, p1

    .line 396
    return-void
.end method

.method _setWill(I)V
    .registers 7
    .param p1, "option"    # I

    .line 268
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    or-int/2addr v1, v2

    aput v1, v0, p1

    .line 271
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 273
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_44

    .line 275
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    .line 277
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationLocal()[I

    move-result-object v0

    .line 280
    .local v0, "subneg":[I
    if-eqz v0, :cond_44

    .line 284
    :try_start_25
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    .line 291
    goto :goto_44

    .line 286
    :catch_29
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in option subnegotiation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    .end local v0    # "subneg":[I
    .end local v1    # "e":Ljava/io/IOException;
    :cond_44
    :goto_44
    return-void
.end method

.method _setWont(I)V
    .registers 4
    .param p1, "option"    # I

    .line 361
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x2

    aput v1, v0, p1

    .line 364
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_16

    .line 366
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    .line 369
    :cond_16
    return-void
.end method

.method _spyRead(I)V
    .registers 4
    .param p1, "ch"    # I

    .line 1251
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_22

    .line 1255
    const/16 v0, 0xd

    if-eq p1, v0, :cond_21

    .line 1257
    :try_start_8
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1258
    const/16 v1, 0xa

    if-ne p1, v1, :cond_16

    .line 1260
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1262
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1b} :catch_1c

    goto :goto_21

    .line 1265
    :catch_1c
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    goto :goto_22

    .line 1268
    .end local v0    # "e":Ljava/io/IOException;
    :cond_21
    :goto_21
    nop

    .line 1270
    :cond_22
    :goto_22
    return-void
.end method

.method _spyWrite(I)V
    .registers 4
    .param p1, "ch"    # I

    .line 1279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_requestedDo(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1282
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_20

    .line 1286
    :try_start_11
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1287
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_1c

    .line 1292
    goto :goto_20

    .line 1289
    :catch_1c
    move-exception v0

    .line 1291
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 1295
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20
    :goto_20
    return-void
.end method

.method _stateIsDo(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 198
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method _stateIsDont(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 210
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsDo(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method _stateIsWill(I)Z
    .registers 4
    .param p1, "option"    # I

    .line 174
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->_options:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method _stateIsWont(I)Z
    .registers 3
    .param p1, "option"    # I

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_stateIsWill(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method _stopSpyStream()V
    .registers 2

    .line 1241
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    .line 1242
    return-void
.end method

.method addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .registers 7
    .param p1, "opthand"    # Lorg/apache/commons/net/telnet/TelnetOptionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;
        }
    .end annotation

    .line 1114
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v0

    .line 1115
    .local v0, "optcode":I
    invoke-static {v0}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1117
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    if-nez v1, :cond_66

    .line 1119
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aput-object p1, v1, v0

    .line 1120
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/Telnet;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1122
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1126
    :try_start_20
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_requestWill(I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 1133
    goto :goto_3f

    .line 1128
    :catch_24
    move-exception v1

    .line 1130
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while initializing option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1136
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1140
    :try_start_45
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->_requestDo(I)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 1147
    :goto_48
    goto :goto_65

    .line 1142
    :catch_49
    move-exception v1

    .line 1144
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while initializing option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_48

    .line 1162
    :cond_65
    :goto_65
    return-void

    .line 1153
    :cond_66
    new-instance v1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v2, "Already registered option"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1159
    :cond_6e
    new-instance v1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v2, "Invalid Option Code"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method deleteOptionHandler(I)V
    .registers 7
    .param p1, "optcode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;
        }
    .end annotation

    .line 1173
    invoke-static {p1}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1175
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_61

    .line 1182
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    .line 1183
    .local v0, "opthand":Lorg/apache/commons/net/telnet/TelnetOptionHandler;
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 1185
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getWill()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1189
    :try_start_1b
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestWont(I)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 1196
    goto :goto_3a

    .line 1191
    :catch_1f
    move-exception v1

    .line 1193
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while turning off option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1199
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3a
    :goto_3a
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getDo()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1203
    :try_start_40
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_requestDont(I)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 1210
    goto :goto_5f

    .line 1205
    :catch_44
    move-exception v1

    .line 1207
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while turning off option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1212
    .end local v0    # "opthand":Lorg/apache/commons/net/telnet/TelnetOptionHandler;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    nop

    .line 1219
    return-void

    .line 1177
    :cond_61
    new-instance v0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v1, "Unregistered option"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1216
    :cond_69
    new-instance v0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v1, "Invalid Option Code"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .registers 2
    .param p1, "notifhand"    # Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 1306
    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 1307
    return-void
.end method

.method public unregisterNotifHandler()V
    .registers 2

    .line 1315
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->__notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 1316
    return-void
.end method
