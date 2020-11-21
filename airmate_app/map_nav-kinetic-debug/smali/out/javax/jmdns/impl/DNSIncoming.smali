.class public final Ljavax/jmdns/impl/DNSIncoming;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
    }
.end annotation


# static fields
.field public static USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

.field private static final _nibbleToHex:[C

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

.field private final _packet:Ljava/net/DatagramPacket;

.field private final _receivedTime:J

.field private _senderUDPPayload:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    .line 562
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1a

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    return-void

    nop

    :array_1a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(IIZLjava/net/DatagramPacket;J)V
    .registers 10
    .param p1, "flags"    # I
    .param p2, "id"    # I
    .param p3, "multicast"    # Z
    .param p4, "packet"    # Ljava/net/DatagramPacket;
    .param p5, "receivedTime"    # J

    .line 247
    invoke-direct {p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 248
    iput-object p4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 249
    new-instance v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 250
    iput-wide p5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    .line 251
    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .registers 12
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    sget v1, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v3, v3, v0}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 186
    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 187
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 188
    .local v0, "source":Ljava/net/InetAddress;
    new-instance v1, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-direct {v1, v4, v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    .line 190
    const/16 v1, 0x5b4

    iput v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 193
    :try_start_2f
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->setId(I)V

    .line 194
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->setFlags(I)V

    .line 195
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    .line 196
    .local v1, "numQuestions":I
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v4

    .line 197
    .local v4, "numAnswers":I
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v5

    .line 198
    .local v5, "numAuthorities":I
    iget-object v6, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v6

    .line 201
    .local v6, "numAdditionals":I
    if-lez v1, :cond_6a

    .line 202
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5c
    if-ge v7, v1, :cond_6a

    .line 203
    iget-object v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readQuestion()Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    .line 208
    .end local v7    # "i":I
    :cond_6a
    if-lez v4, :cond_7d

    .line 209
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6d
    if-ge v7, v4, :cond_7d

    .line 210
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v8

    .line 211
    .local v8, "rec":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v8, :cond_7a

    .line 213
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v8    # "rec":Ljavax/jmdns/impl/DNSRecord;
    :cond_7a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    .line 218
    .end local v7    # "i":I
    :cond_7d
    if-lez v5, :cond_90

    .line 219
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_80
    if-ge v7, v5, :cond_90

    .line 220
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v8

    .line 221
    .restart local v8    # "rec":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v8, :cond_8d

    .line 223
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v8    # "rec":Ljavax/jmdns/impl/DNSRecord;
    :cond_8d
    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    .line 228
    .end local v7    # "i":I
    :cond_90
    if-lez v6, :cond_a3

    .line 229
    nop

    .local v3, "i":I
    :goto_93
    if-ge v3, v6, :cond_a3

    .line 230
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v7

    .line 231
    .local v7, "rec":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v7, :cond_a0

    .line 233
    iget-object v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_a0} :catch_a5

    .line 229
    .end local v7    # "rec":Ljavax/jmdns/impl/DNSRecord;
    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 243
    .end local v1    # "numQuestions":I
    .end local v3    # "i":I
    .end local v4    # "numAnswers":I
    .end local v5    # "numAuthorities":I
    .end local v6    # "numAdditionals":I
    :cond_a3
    nop

    .line 244
    return-void

    .line 237
    :catch_a5
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNSIncoming() dump "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n exception "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    new-instance v2, Ljava/io/IOException;

    const-string v3, "DNSIncoming corrupted message"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 242
    throw v2
.end method

.method private _hexString([B)Ljava/lang/String;
    .registers 7
    .param p1, "bytes"    # [B

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 574
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_25

    .line 575
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 576
    .local v2, "b":I
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    div-int/lit8 v4, v2, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    rem-int/lit8 v4, v2, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 580
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;
    .registers 45
    .param p1, "source"    # Ljava/net/InetAddress;

    .line 284
    move-object/from16 v1, p0

    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v11

    .line 285
    .local v11, "domain":Ljava/lang/String;
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v12

    .line 286
    .local v12, "type_value":I
    invoke-static {v12}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v13

    .line 287
    .local v13, "type":Ljavax/jmdns/impl/constants/DNSRecordType;
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    const/4 v2, 0x1

    if-ne v13, v0, :cond_3b

    .line 288
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find record type. domain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 290
    :cond_3b
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v14

    .line 291
    .local v14, "recordClassIndex":I
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v13, v0, :cond_48

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    goto :goto_4c

    :cond_48
    invoke-static {v14}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    :goto_4c
    move-object v15, v0

    .line 292
    .local v15, "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-ne v15, v0, :cond_81

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-eq v13, v0, :cond_81

    .line 293
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find record class. domain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 295
    :cond_81
    invoke-virtual {v15, v14}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v16

    .line 296
    .local v16, "unique":Z
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readInt()I

    move-result v10

    .line 297
    .local v10, "ttl":I
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    .line 298
    .local v9, "len":I
    const/16 v17, 0x0

    .line 300
    .local v17, "rec":Ljavax/jmdns/impl/DNSRecord;
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {v13}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_4e6

    .line 432
    move/from16 v20, v10

    move/from16 v24, v12

    move/from16 v40, v14

    move v12, v9

    .end local v9    # "len":I
    .end local v10    # "ttl":I
    .end local v14    # "recordClassIndex":I
    .local v12, "len":I
    .local v20, "ttl":I
    .local v24, "type_value":I
    .local v40, "recordClassIndex":I
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4d3

    .line 433
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNSIncoming() unknown type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_4d3

    .line 347
    .end local v20    # "ttl":I
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v9    # "len":I
    .restart local v10    # "ttl":I
    .local v12, "type_value":I
    .restart local v14    # "recordClassIndex":I
    :pswitch_c8
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v0

    invoke-static {v0, v10}, Ljavax/jmdns/impl/constants/DNSResultCode;->resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v4

    .line 348
    .local v4, "extendedResultCode":Ljavax/jmdns/impl/constants/DNSResultCode;
    const/high16 v0, 0xff0000

    and-int/2addr v0, v10

    const/16 v5, 0x10

    shr-int/lit8 v6, v0, 0x10

    .line 349
    .local v6, "version":I
    if-nez v6, :cond_37e

    .line 350
    iput v14, v1, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 351
    :goto_db
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v0

    if-lez v0, :cond_375

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "optionCodeInt":I
    const/4 v7, 0x0

    .line 355
    .local v7, "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    iget-object v8, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    const/4 v5, 0x2

    if-lt v8, v5, :cond_366

    .line 356
    iget-object v8, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v8

    .line 357
    .end local v0    # "optionCodeInt":I
    .local v8, "optionCodeInt":I
    invoke-static {v8}, Ljavax/jmdns/impl/constants/DNSOptionCode;->resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v7

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "optionLength":I
    iget-object v2, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v2

    if-lt v2, v5, :cond_353

    .line 364
    iget-object v2, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 369
    .end local v0    # "optionLength":I
    .local v2, "optionLength":I
    new-array v0, v3, [B

    .line 370
    .local v0, "optiondata":[B
    iget-object v5, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v5

    if-lt v5, v2, :cond_117

    .line 371
    iget-object v5, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v0

    .line 375
    .end local v0    # "optiondata":[B
    .local v5, "optiondata":[B
    :cond_117
    move-object v5, v0

    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    invoke-virtual {v7}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v21

    aget v0, v0, v21

    packed-switch v0, :pswitch_data_4fa

    .line 426
    .end local v2    # "optionLength":I
    .end local v5    # "optiondata":[B
    .end local v7    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v8    # "optionCodeInt":I
    move/from16 v24, v12

    move/from16 v40, v14

    const/16 v18, 0x10

    const/16 v19, 0x1

    .end local v12    # "type_value":I
    .end local v14    # "recordClassIndex":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    goto/16 :goto_349

    .line 420
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v2    # "optionLength":I
    .restart local v5    # "optiondata":[B
    .restart local v7    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .restart local v8    # "optionCodeInt":I
    .restart local v12    # "type_value":I
    .restart local v14    # "recordClassIndex":I
    :pswitch_12d
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    move/from16 v23, v2

    .end local v2    # "optionLength":I
    .local v23, "optionLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v12

    .end local v12    # "type_value":I
    .restart local v24    # "type_value":I
    const-string v12, "There was an OPT answer. Not currently handled. Option code: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " data: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 421
    goto :goto_188

    .line 415
    .end local v23    # "optionLength":I
    .end local v24    # "type_value":I
    .restart local v2    # "optionLength":I
    .restart local v12    # "type_value":I
    :pswitch_156
    move/from16 v23, v2

    move/from16 v24, v12

    .end local v2    # "optionLength":I
    .end local v12    # "type_value":I
    .restart local v23    # "optionLength":I
    .restart local v24    # "type_value":I
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 416
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "There was an OPT answer. Option code: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " data: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 426
    .end local v5    # "optiondata":[B
    .end local v7    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v8    # "optionCodeInt":I
    .end local v14    # "recordClassIndex":I
    .end local v23    # "optionLength":I
    .restart local v40    # "recordClassIndex":I
    :cond_188
    :goto_188
    move/from16 v40, v14

    const/16 v18, 0x10

    const/16 v19, 0x1

    goto/16 :goto_349

    .line 382
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v2    # "optionLength":I
    .restart local v5    # "optiondata":[B
    .restart local v7    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .restart local v8    # "optionCodeInt":I
    .restart local v12    # "type_value":I
    .restart local v14    # "recordClassIndex":I
    :pswitch_190
    move/from16 v23, v2

    move/from16 v24, v12

    .end local v2    # "optionLength":I
    .end local v12    # "type_value":I
    .restart local v23    # "optionLength":I
    .restart local v24    # "type_value":I
    const/4 v2, 0x0

    .line 383
    .local v2, "ownerVersion":I
    const/4 v3, 0x0

    .line 384
    .local v3, "ownerSequence":I
    const/4 v12, 0x0

    .line 385
    .local v12, "ownerPrimaryMacAddress":[B
    const/16 v21, 0x0

    .line 386
    .local v21, "ownerWakeupMacAddress":[B
    const/4 v0, 0x0

    move-object/from16 v25, v0

    .line 388
    .local v25, "ownerPassword":[B
    const/16 v22, 0x0

    :try_start_19e
    aget-byte v0, v5, v22
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a0} :catch_29f

    move v2, v0

    .line 389
    const/16 v19, 0x1

    :try_start_1a3
    aget-byte v0, v5, v19
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a5} :catch_299

    move v3, v0

    .line 390
    const/4 v0, 0x6

    move/from16 v26, v2

    .end local v2    # "ownerVersion":I
    .local v26, "ownerVersion":I
    :try_start_1a9
    new-array v2, v0, [B

    const/16 v20, 0x2

    aget-byte v27, v5, v20

    const/16 v22, 0x0

    aput-byte v27, v2, v22

    const/16 v27, 0x3

    aget-byte v28, v5, v27
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1b7} :catch_291

    const/16 v19, 0x1

    :try_start_1b9
    aput-byte v28, v2, v19
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1bb} :catch_28d

    const/4 v0, 0x4

    :try_start_1bc
    aget-byte v28, v5, v0

    const/16 v20, 0x2

    aput-byte v28, v2, v20

    const/16 v28, 0x5

    aget-byte v30, v5, v28

    aput-byte v30, v2, v27

    const/16 v29, 0x6

    aget-byte v30, v5, v29

    aput-byte v30, v2, v0

    const/16 v30, 0x7

    aget-byte v31, v5, v30

    aput-byte v31, v2, v28

    move-object v12, v2

    .line 391
    move-object/from16 v21, v12

    .line 392
    array-length v2, v5
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1d8} :catch_291

    const/16 v0, 0x8

    if-le v2, v0, :cond_212

    .line 394
    const/4 v2, 0x6

    :try_start_1dd
    new-array v0, v2, [B

    const/16 v2, 0x8

    aget-byte v31, v5, v2

    const/4 v2, 0x0

    aput-byte v31, v0, v2

    const/16 v2, 0x9

    aget-byte v2, v5, v2

    const/16 v19, 0x1

    aput-byte v2, v0, v19

    const/16 v2, 0xa

    aget-byte v2, v5, v2

    const/16 v20, 0x2

    aput-byte v2, v0, v20

    const/16 v2, 0xb

    aget-byte v2, v5, v2

    aput-byte v2, v0, v27

    const/16 v2, 0xc

    aget-byte v2, v5, v2

    const/16 v31, 0x4

    aput-byte v2, v0, v31

    const/16 v2, 0xd

    aget-byte v2, v5, v2

    aput-byte v2, v0, v28
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_20a} :catch_20d

    .line 396
    move-object/from16 v21, v0

    goto :goto_212

    .line 404
    :catch_20d
    move-exception v0

    move/from16 v2, v26

    goto/16 :goto_2a0

    .line 396
    :cond_212
    :goto_212
    :try_start_212
    array-length v0, v5
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_213} :catch_291

    const/16 v31, 0xf

    const/16 v32, 0xe

    const/16 v2, 0x12

    if-ne v0, v2, :cond_23b

    .line 398
    const/4 v0, 0x4

    :try_start_21c
    new-array v2, v0, [B

    aget-byte v0, v5, v32

    const/16 v22, 0x0

    aput-byte v0, v2, v22

    aget-byte v0, v5, v31

    const/16 v19, 0x1

    aput-byte v0, v2, v19

    const/16 v18, 0x10

    aget-byte v0, v5, v18

    const/16 v20, 0x2

    aput-byte v0, v2, v20

    const/16 v0, 0x11

    aget-byte v33, v5, v0

    aput-byte v33, v2, v27
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_238} :catch_20d

    move-object v0, v2

    .line 400
    move-object/from16 v25, v0

    :cond_23b
    :try_start_23b
    array-length v0, v5

    const/16 v2, 0x16

    if-ne v0, v2, :cond_27f

    .line 402
    const/16 v0, 0x8

    new-array v0, v0, [B

    aget-byte v2, v5, v32

    const/16 v22, 0x0

    aput-byte v2, v0, v22

    aget-byte v2, v5, v31
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_24c} :catch_291

    const/16 v19, 0x1

    :try_start_24e
    aput-byte v2, v0, v19
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_250} :catch_28d

    const/16 v18, 0x10

    :try_start_252
    aget-byte v2, v5, v18

    const/16 v20, 0x2

    aput-byte v2, v0, v20

    const/16 v2, 0x11

    aget-byte v2, v5, v2

    aput-byte v2, v0, v27

    const/16 v2, 0x12

    aget-byte v2, v5, v2

    const/16 v20, 0x4

    aput-byte v2, v0, v20

    const/16 v2, 0x13

    aget-byte v2, v5, v2

    aput-byte v2, v0, v28

    const/16 v2, 0x14

    aget-byte v2, v5, v2

    const/16 v20, 0x6

    aput-byte v2, v0, v20

    const/16 v2, 0x15

    aget-byte v2, v5, v2

    aput-byte v2, v0, v30
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_27a} :catch_27d

    move-object/from16 v25, v0

    goto :goto_283

    .line 404
    :catch_27d
    move-exception v0

    goto :goto_296

    .line 406
    :cond_27f
    const/16 v18, 0x10

    const/16 v19, 0x1

    .line 407
    :goto_283
    move-object/from16 v37, v5

    move-object/from16 v0, v21

    move-object/from16 v2, v25

    move v5, v3

    move/from16 v3, v26

    goto :goto_2ce

    .line 404
    :catch_28d
    move-exception v0

    const/16 v18, 0x10

    goto :goto_296

    :catch_291
    move-exception v0

    const/16 v18, 0x10

    const/16 v19, 0x1

    .end local v26    # "ownerVersion":I
    .restart local v2    # "ownerVersion":I
    :goto_296
    move/from16 v2, v26

    goto :goto_2a4

    :catch_299
    move-exception v0

    move/from16 v26, v2

    const/16 v18, 0x10

    .end local v2    # "ownerVersion":I
    .restart local v26    # "ownerVersion":I
    goto :goto_2a4

    .end local v26    # "ownerVersion":I
    .restart local v2    # "ownerVersion":I
    :catch_29f
    move-exception v0

    :goto_2a0
    const/16 v18, 0x10

    const/16 v19, 0x1

    .line 405
    .local v0, "exception":Ljava/lang/Exception;
    :goto_2a4
    move-object/from16 v34, v0

    .end local v0    # "exception":Ljava/lang/Exception;
    .local v34, "exception":Ljava/lang/Exception;
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    move/from16 v35, v2

    .end local v2    # "ownerVersion":I
    .local v35, "ownerVersion":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v3

    .end local v3    # "ownerSequence":I
    .local v36, "ownerSequence":I
    const-string v3, "Malformed OPT answer. Option code: Owner data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 407
    move-object/from16 v37, v5

    move-object/from16 v0, v21

    move-object/from16 v2, v25

    move/from16 v3, v35

    move/from16 v5, v36

    .end local v21    # "ownerWakeupMacAddress":[B
    .end local v25    # "ownerPassword":[B
    .end local v34    # "exception":Ljava/lang/Exception;
    .end local v35    # "ownerVersion":I
    .end local v36    # "ownerSequence":I
    .local v0, "ownerWakeupMacAddress":[B
    .local v2, "ownerPassword":[B
    .local v3, "ownerVersion":I
    .local v5, "ownerSequence":I
    .local v37, "optiondata":[B
    :goto_2ce
    move-object/from16 v38, v7

    .end local v7    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .local v38, "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    sget-object v7, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    move/from16 v39, v8

    .end local v8    # "optionCodeInt":I
    .local v39, "optionCodeInt":I
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_347

    .line 408
    sget-object v7, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v40, v14

    .end local v14    # "recordClassIndex":I
    .restart local v40    # "recordClassIndex":I
    const-string v14, "Unhandled Owner OPT version: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " sequence: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " MAC address: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v0, v12, :cond_31b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v41, v3

    .end local v3    # "ownerVersion":I
    .local v41, "ownerVersion":I
    const-string v3, " wakeup MAC address: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-direct {v1, v0}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_31f

    .end local v41    # "ownerVersion":I
    .restart local v3    # "ownerVersion":I
    :cond_31b
    move/from16 v41, v3

    .end local v3    # "ownerVersion":I
    .restart local v41    # "ownerVersion":I
    const-string v3, ""

    :goto_31f
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_33a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " password: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_33c

    :cond_33a
    const-string v3, ""

    :goto_33c
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {v7, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_349

    .line 426
    .end local v0    # "ownerWakeupMacAddress":[B
    .end local v2    # "ownerPassword":[B
    .end local v5    # "ownerSequence":I
    .end local v12    # "ownerPrimaryMacAddress":[B
    .end local v23    # "optionLength":I
    .end local v37    # "optiondata":[B
    .end local v38    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v39    # "optionCodeInt":I
    .end local v40    # "recordClassIndex":I
    .end local v41    # "ownerVersion":I
    .restart local v14    # "recordClassIndex":I
    :cond_347
    move/from16 v40, v14

    .line 351
    .end local v14    # "recordClassIndex":I
    .restart local v40    # "recordClassIndex":I
    :goto_349
    move/from16 v12, v24

    move/from16 v14, v40

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x10

    goto/16 :goto_db

    .line 366
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .local v0, "optionLength":I
    .restart local v7    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .restart local v8    # "optionCodeInt":I
    .local v12, "type_value":I
    .restart local v14    # "recordClassIndex":I
    :cond_353
    move-object/from16 v38, v7

    move/from16 v39, v8

    move/from16 v24, v12

    move/from16 v40, v14

    .end local v7    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v8    # "optionCodeInt":I
    .end local v12    # "type_value":I
    .end local v14    # "recordClassIndex":I
    .restart local v24    # "type_value":I
    .restart local v38    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .restart local v39    # "optionCodeInt":I
    .restart local v40    # "recordClassIndex":I
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "There was a problem reading the OPT record. Ignoring."

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 367
    goto/16 :goto_3ec

    .line 359
    .end local v24    # "type_value":I
    .end local v38    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v39    # "optionCodeInt":I
    .end local v40    # "recordClassIndex":I
    .local v0, "optionCodeInt":I
    .restart local v7    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .restart local v12    # "type_value":I
    .restart local v14    # "recordClassIndex":I
    :cond_366
    move/from16 v24, v12

    move/from16 v40, v14

    .end local v12    # "type_value":I
    .end local v14    # "recordClassIndex":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "There was a problem reading the OPT record. Ignoring."

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 360
    goto/16 :goto_3ec

    .line 438
    .end local v0    # "optionCodeInt":I
    .end local v4    # "extendedResultCode":Ljavax/jmdns/impl/constants/DNSResultCode;
    .end local v6    # "version":I
    .end local v7    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v12    # "type_value":I
    .restart local v14    # "recordClassIndex":I
    :cond_375
    move/from16 v24, v12

    move/from16 v40, v14

    move v12, v9

    move/from16 v20, v10

    .end local v12    # "type_value":I
    .end local v14    # "recordClassIndex":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    goto/16 :goto_4d9

    .line 428
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v4    # "extendedResultCode":Ljavax/jmdns/impl/constants/DNSResultCode;
    .restart local v6    # "version":I
    .restart local v12    # "type_value":I
    .restart local v14    # "recordClassIndex":I
    :cond_37e
    move/from16 v24, v12

    move/from16 v40, v14

    .end local v12    # "type_value":I
    .end local v14    # "recordClassIndex":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There was an OPT answer. Wrong version number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " result code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 430
    goto :goto_3ec

    .line 339
    .end local v4    # "extendedResultCode":Ljavax/jmdns/impl/constants/DNSResultCode;
    .end local v6    # "version":I
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v12    # "type_value":I
    .restart local v14    # "recordClassIndex":I
    :pswitch_3a3
    move/from16 v24, v12

    move/from16 v40, v14

    .end local v12    # "type_value":I
    .end local v14    # "recordClassIndex":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v2, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2, v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 342
    .local v12, "index":I
    if-lez v12, :cond_3c3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c7

    :cond_3c3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3c7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 343
    .local v14, "cpu":Ljava/lang/String;
    if-lez v12, :cond_3d4

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d6

    :cond_3d4
    const-string v2, ""

    :goto_3d6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 344
    .local v18, "os":Ljava/lang/String;
    new-instance v19, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    move-object/from16 v2, v19

    move-object v3, v11

    move-object v4, v15

    move/from16 v5, v16

    move v6, v10

    move-object v7, v14

    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Ljavax/jmdns/impl/DNSRecord$HostInformation;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v19

    .line 345
    nop

    .line 438
    .end local v9    # "len":I
    .end local v10    # "ttl":I
    .end local v14    # "cpu":Ljava/lang/String;
    .end local v17    # "rec":Ljavax/jmdns/impl/DNSRecord;
    .end local v18    # "os":Ljava/lang/String;
    .local v0, "rec":Ljavax/jmdns/impl/DNSRecord;
    .local v12, "len":I
    .restart local v20    # "ttl":I
    :goto_3ec
    move v12, v9

    move/from16 v20, v10

    goto/16 :goto_4d9

    .line 323
    .end local v0    # "rec":Ljavax/jmdns/impl/DNSRecord;
    .end local v20    # "ttl":I
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v9    # "len":I
    .restart local v10    # "ttl":I
    .local v12, "type_value":I
    .local v14, "recordClassIndex":I
    .restart local v17    # "rec":Ljavax/jmdns/impl/DNSRecord;
    :pswitch_3f1
    move/from16 v24, v12

    move/from16 v40, v14

    .end local v12    # "type_value":I
    .end local v14    # "recordClassIndex":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v0

    .line 324
    .local v0, "priority":I
    iget-object v2, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v12

    .line 325
    .local v12, "weight":I
    iget-object v2, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v14

    .line 326
    .local v14, "port":I
    const-string v2, ""

    .line 329
    .local v2, "target":Ljava/lang/String;
    sget-boolean v3, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    if-eqz v3, :cond_416

    .line 330
    iget-object v3, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v2

    .line 335
    .end local v2    # "target":Ljava/lang/String;
    .local v18, "target":Ljava/lang/String;
    :goto_413
    move-object/from16 v18, v2

    goto :goto_41d

    .line 333
    .end local v18    # "target":Ljava/lang/String;
    .restart local v2    # "target":Ljava/lang/String;
    :cond_416
    iget-object v3, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readNonNameString()Ljava/lang/String;

    move-result-object v2

    goto :goto_413

    .line 335
    .end local v2    # "target":Ljava/lang/String;
    .restart local v18    # "target":Ljava/lang/String;
    :goto_41d
    new-instance v19, Ljavax/jmdns/impl/DNSRecord$Service;

    move-object/from16 v2, v19

    move-object v3, v11

    move-object v4, v15

    move/from16 v5, v16

    move v6, v10

    move v7, v0

    move v8, v12

    move/from16 v42, v12

    move v12, v9

    .end local v9    # "len":I
    .local v12, "len":I
    .local v42, "weight":I
    move v9, v14

    move/from16 v20, v10

    .end local v10    # "ttl":I
    .restart local v20    # "ttl":I
    move-object/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    move-object/from16 v17, v19

    .line 337
    goto/16 :goto_4d9

    .line 320
    .end local v0    # "priority":I
    .end local v18    # "target":Ljava/lang/String;
    .end local v20    # "ttl":I
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .end local v42    # "weight":I
    .restart local v9    # "len":I
    .restart local v10    # "ttl":I
    .local v12, "type_value":I
    .local v14, "recordClassIndex":I
    :pswitch_437
    move/from16 v20, v10

    move/from16 v24, v12

    move/from16 v40, v14

    move v12, v9

    .end local v9    # "len":I
    .end local v10    # "ttl":I
    .end local v14    # "recordClassIndex":I
    .local v12, "len":I
    .restart local v20    # "ttl":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Text;

    iget-object v2, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2, v12}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    move-object v2, v0

    move-object v3, v11

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v20

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    move-object/from16 v17, v0

    .line 321
    goto/16 :goto_4db

    .line 311
    .end local v20    # "ttl":I
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v9    # "len":I
    .restart local v10    # "ttl":I
    .local v12, "type_value":I
    .restart local v14    # "recordClassIndex":I
    :pswitch_454
    move/from16 v20, v10

    move/from16 v24, v12

    move/from16 v40, v14

    move v12, v9

    .end local v9    # "len":I
    .end local v10    # "ttl":I
    .end local v14    # "recordClassIndex":I
    .local v12, "len":I
    .restart local v20    # "ttl":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    const-string v0, ""

    .line 312
    .local v0, "service":Ljava/lang/String;
    iget-object v2, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_47a

    .line 314
    new-instance v8, Ljavax/jmdns/impl/DNSRecord$Pointer;

    move-object v2, v8

    move-object v3, v11

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v20

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    move-object/from16 v17, v8

    goto/16 :goto_4d9

    .line 316
    :cond_47a
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PTR record of class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", there was a problem reading the service name of the answer for domain:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 318
    goto :goto_4d9

    .line 306
    .end local v0    # "service":Ljava/lang/String;
    .end local v20    # "ttl":I
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v9    # "len":I
    .restart local v10    # "ttl":I
    .local v12, "type_value":I
    .restart local v14    # "recordClassIndex":I
    :pswitch_49b
    move/from16 v20, v10

    move/from16 v24, v12

    move/from16 v40, v14

    move v12, v9

    .end local v9    # "len":I
    .end local v10    # "ttl":I
    .end local v14    # "recordClassIndex":I
    .local v12, "len":I
    .restart local v20    # "ttl":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    iget-object v2, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2, v12}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    move-object v2, v0

    move-object v3, v11

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v20

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    move-object/from16 v17, v0

    .line 308
    goto :goto_4db

    .line 302
    .end local v20    # "ttl":I
    .end local v24    # "type_value":I
    .end local v40    # "recordClassIndex":I
    .restart local v9    # "len":I
    .restart local v10    # "ttl":I
    .local v12, "type_value":I
    .restart local v14    # "recordClassIndex":I
    :pswitch_4b7
    move/from16 v20, v10

    move/from16 v24, v12

    move/from16 v40, v14

    move v12, v9

    .end local v9    # "len":I
    .end local v10    # "ttl":I
    .end local v14    # "recordClassIndex":I
    .local v12, "len":I
    .restart local v20    # "ttl":I
    .restart local v24    # "type_value":I
    .restart local v40    # "recordClassIndex":I
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    iget-object v2, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2, v12}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    move-object v2, v0

    move-object v3, v11

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v20

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    move-object/from16 v17, v0

    .line 304
    goto :goto_4db

    .line 435
    :cond_4d3
    :goto_4d3
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    int-to-long v2, v12

    invoke-virtual {v0, v2, v3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->skip(J)J

    .line 438
    .end local v17    # "rec":Ljavax/jmdns/impl/DNSRecord;
    .local v0, "rec":Ljavax/jmdns/impl/DNSRecord;
    :goto_4d9
    move-object/from16 v0, v17

    :goto_4db
    if-eqz v0, :cond_4e3

    .line 439
    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/DNSRecord;->setRecordSource(Ljava/net/InetAddress;)V

    goto :goto_4e5

    .line 441
    :cond_4e3
    move-object/from16 v2, p1

    :goto_4e5
    return-object v0

    :pswitch_data_4e6
    .packed-switch 0x1
        :pswitch_4b7
        :pswitch_49b
        :pswitch_454
        :pswitch_454
        :pswitch_437
        :pswitch_3f1
        :pswitch_3a3
        :pswitch_c8
    .end packed-switch

    :pswitch_data_4fa
    .packed-switch 0x1
        :pswitch_190
        :pswitch_156
        :pswitch_156
        :pswitch_156
        :pswitch_12d
    .end packed-switch
.end method

.method private readQuestion()Ljavax/jmdns/impl/DNSQuestion;
    .registers 7

    .line 272
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "domain":Ljava/lang/String;
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    .line 274
    .local v1, "type":Ljavax/jmdns/impl/constants/DNSRecordType;
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v1, v2, :cond_31

    .line 275
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find record type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 277
    :cond_31
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 278
    .local v2, "recordClassIndex":I
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v3

    .line 279
    .local v3, "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    invoke-virtual {v3, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v4

    .line 280
    .local v4, "unique":Z
    invoke-static {v0, v1, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method append(Ljavax/jmdns/impl/DNSIncoming;)V
    .registers 4
    .param p1, "that"    # Ljavax/jmdns/impl/DNSIncoming;

    .line 539
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 540
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 542
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAuthorities()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAdditionals()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 547
    return-void

    .line 545
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->clone()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/DNSIncoming;
    .registers 9

    .line 261
    new-instance v7, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isMulticast()Z

    move-result v3

    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    iget-wide v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSIncoming;-><init>(IIZLjava/net/DatagramPacket;J)V

    .line 262
    .local v0, "in":Ljavax/jmdns/impl/DNSIncoming;
    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    iput v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 263
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    return-object v0
.end method

.method public elapseSinceArrival()I
    .registers 5

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSenderUDPPayload()I
    .registers 2

    .line 559
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    return v0
.end method

.method print(Z)Ljava/lang/String;
    .registers 7
    .param p1, "dump"    # Z

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    if-eqz p1, :cond_28

    .line 451
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    new-array v1, v1, [B

    .line 452
    .local v1, "data":[B
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->print([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .end local v1    # "data":[B
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "dns[query,"

    goto :goto_10

    :cond_e
    const-string v1, "dns[response,"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 463
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_28
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, ", id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    if-eqz v1, :cond_93

    .line 472
    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_79

    .line 475
    const-string v1, ":r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_79
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_86

    .line 478
    const-string v1, ":aa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_86
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_93

    .line 481
    const-string v1, ":tc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_93
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v1

    if-lez v1, :cond_a5

    .line 485
    const-string v1, ", questions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    :cond_a5
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_b7

    .line 489
    const-string v1, ", answers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    :cond_b7
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_c9

    .line 493
    const-string v1, ", authorities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    :cond_c9
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_db

    .line 497
    const-string v1, ", additionals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    :cond_db
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v1

    if-lez v1, :cond_101

    .line 501
    const-string v1, "\nquestions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ec
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSQuestion;

    .line 503
    .local v2, "question":Ljavax/jmdns/impl/DNSQuestion;
    const-string v3, "\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .end local v2    # "question":Ljavax/jmdns/impl/DNSQuestion;
    goto :goto_ec

    .line 507
    :cond_101
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_127

    .line 508
    const-string v1, "\nanswers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_112
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_127

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 510
    .local v2, "record":Ljavax/jmdns/impl/DNSRecord;
    const-string v3, "\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 512
    .end local v2    # "record":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_112

    .line 514
    :cond_127
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_14d

    .line 515
    const-string v1, "\nauthorities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_138
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 517
    .restart local v2    # "record":Ljavax/jmdns/impl/DNSRecord;
    const-string v3, "\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    .end local v2    # "record":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_138

    .line 521
    :cond_14d
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_173

    .line 522
    const-string v1, "\nadditionals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_173

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 524
    .restart local v2    # "record":Ljavax/jmdns/impl/DNSRecord;
    const-string v3, "\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    .end local v2    # "record":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_15e

    .line 528
    :cond_173
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
