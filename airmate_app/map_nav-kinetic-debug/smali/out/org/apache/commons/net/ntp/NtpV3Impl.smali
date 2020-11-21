.class public Lorg/apache/commons/net/ntp/NtpV3Impl;
.super Ljava/lang/Object;
.source "NtpV3Impl.java"

# interfaces
.implements Lorg/apache/commons/net/ntp/NtpV3Packet;


# static fields
.field private static final KEY_IDENTIFIER_INDEX:I = 0x30

.field private static final LI_INDEX:I = 0x0

.field private static final LI_SHIFT:I = 0x6

.field private static final MESSAGE_DIGEST:I = 0x36

.field private static final MODE_INDEX:I = 0x0

.field private static final MODE_SHIFT:I = 0x0

.field private static final ORIGINATE_TIMESTAMP_INDEX:I = 0x18

.field private static final POLL_INDEX:I = 0x2

.field private static final PRECISION_INDEX:I = 0x3

.field private static final RECEIVE_TIMESTAMP_INDEX:I = 0x20

.field private static final REFERENCE_ID_INDEX:I = 0xc

.field private static final REFERENCE_TIMESTAMP_INDEX:I = 0x10

.field private static final ROOT_DELAY_INDEX:I = 0x4

.field private static final ROOT_DISPERSION_INDEX:I = 0x8

.field private static final STRATUM_INDEX:I = 0x1

.field private static final TRANSMIT_TIMESTAMP_INDEX:I = 0x28

.field private static final VERSION_INDEX:I = 0x0

.field private static final VERSION_SHIFT:I = 0x3


# instance fields
.field private buf:[B

.field private volatile dp:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 65
    return-void
.end method

.method private getInt(I)I
    .registers 5
    .param p1, "index"    # I

    .line 451
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v2, p1, 0x3

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    or-int/2addr v0, v1

    .line 456
    .local v0, "i":I
    return v0
.end method

.method private getLong(I)J
    .registers 7
    .param p1, "index"    # I

    .line 477
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x2

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x4

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x5

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x6

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, p1, 0x7

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 485
    .local v0, "i":J
    return-wide v0
.end method

.method private getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;
    .registers 5
    .param p1, "index"    # I

    .line 467
    new-instance v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-direct {p0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;-><init>(J)V

    return-object v0
.end method

.method private idAsHex()Ljava/lang/String;
    .registers 2

    .line 344
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getReferenceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private idAsIPAddress()Ljava/lang/String;
    .registers 4

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/16 v2, 0xc

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/16 v2, 0xf

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private idAsString()Ljava/lang/String;
    .registers 5

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v0, "id":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/4 v2, 0x3

    if-gt v1, v2, :cond_19

    .line 335
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v3, v1, 0xc

    aget-byte v2, v2, v3

    int-to-char v2, v2

    .line 336
    .local v2, "c":C
    if-nez v2, :cond_13

    .end local v1    # "i":I
    .end local v2    # "c":C
    goto :goto_19

    .line 337
    .restart local v1    # "i":I
    .restart local v2    # "c":C
    :cond_13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 339
    .end local v1    # "i":I
    :cond_19
    :goto_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "t"    # Lorg/apache/commons/net/ntp/TimeStamp;

    .line 496
    if-nez p2, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v0

    .line 499
    .local v0, "ntpTime":J
    :goto_9
    const/4 v2, 0x7

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_1d

    .line 500
    iget-object v3, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int v4, p1, v2

    const-wide/16 v5, 0xff

    and-long/2addr v5, v0

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 501
    const/16 v3, 0x8

    ushr-long/2addr v0, v3

    .line 499
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 504
    .end local v2    # "i":I
    :cond_1d
    return-void
.end method

.method protected static final ui(B)I
    .registers 2
    .param p0, "b"    # B

    .line 545
    and-int/lit16 v0, p0, 0xff

    .line 546
    .local v0, "i":I
    return v0
.end method

.method protected static final ul(B)J
    .registers 3
    .param p0, "b"    # B

    .line 559
    and-int/lit16 v0, p0, 0xff

    int-to-long v0, v0

    .line 560
    .local v0, "i":J
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized getDatagramPacket()Ljava/net/DatagramPacket;
    .registers 4

    monitor-enter p0

    .line 513
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;

    if-nez v0, :cond_18

    .line 514
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;

    .line 515
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 517
    :cond_18
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 512
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLeapIndicator()I
    .registers 3

    .line 108
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getMode()I
    .registers 3

    .line 75
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 2

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getMode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpUtils;->getModeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginateTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .registers 2

    .line 388
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public getPoll()I
    .registers 3

    .line 131
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public getPrecision()I
    .registers 3

    .line 153
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    return v0
.end method

.method public getReceiveTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .registers 2

    .line 421
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceId()I
    .registers 2

    .line 287
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getReferenceIdString()Ljava/lang/String;
    .registers 5

    .line 300
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getVersion()I

    move-result v0

    .line 301
    .local v0, "version":I
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getStratum()I

    move-result v1

    .line 302
    .local v1, "stratum":I
    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e

    if-ne v0, v2, :cond_1b

    .line 303
    :cond_e
    if-eqz v1, :cond_28

    const/4 v3, 0x1

    if-ne v1, v3, :cond_14

    goto :goto_28

    .line 307
    :cond_14
    if-ne v0, v2, :cond_1b

    .line 308
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsHex()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 313
    :cond_1b
    const/4 v2, 0x2

    if-lt v1, v2, :cond_23

    .line 314
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsIPAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 316
    :cond_23
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsHex()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 304
    :cond_28
    :goto_28
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getReferenceTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .registers 2

    .line 399
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public getRootDelay()I
    .registers 2

    .line 216
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getRootDelayInMillisDouble()D
    .registers 5

    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDelay()I

    move-result v0

    int-to-double v0, v0

    .line 230
    .local v0, "l":D
    const-wide v2, 0x4050624dd2f1a9fcL    # 65.536

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v0, v2

    return-wide v2
.end method

.method public getRootDispersion()I
    .registers 2

    .line 239
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getRootDispersionInMillis()J
    .registers 7

    .line 249
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDispersion()I

    move-result v0

    int-to-long v0, v0

    .line 250
    .local v0, "l":J
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v0

    const-wide/32 v4, 0x10000

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getRootDispersionInMillisDouble()D
    .registers 5

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDispersion()I

    move-result v0

    int-to-double v0, v0

    .line 262
    .local v0, "l":D
    const-wide v2, 0x4050624dd2f1a9fcL    # 65.536

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v0, v2

    return-wide v2
.end method

.method public getStratum()I
    .registers 3

    .line 194
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    return v0
.end method

.method public getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .registers 2

    .line 355
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 443
    const-string v0, "NTP"

    return-object v0
.end method

.method public getVersion()I
    .registers 3

    .line 172
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public setDatagramPacket(Ljava/net/DatagramPacket;)V
    .registers 6
    .param p1, "srcDp"    # Ljava/net/DatagramPacket;

    .line 527
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 528
    .local v0, "incomingBuf":[B
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 529
    .local v1, "len":I
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_10

    .line 530
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    array-length v1, v2

    .line 532
    :cond_10
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    return-void
.end method

.method public setLeapIndicator(I)V
    .registers 6
    .param p1, "li"    # I

    .line 117
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    and-int/lit8 v3, p1, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 118
    return-void
.end method

.method public setMode(I)V
    .registers 6
    .param p1, "mode"    # I

    .line 94
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xf8

    and-int/lit8 v3, p1, 0x7

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 95
    return-void
.end method

.method public setOriginateTimeStamp(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .registers 3
    .param p1, "ts"    # Lorg/apache/commons/net/ntp/TimeStamp;

    .line 377
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 378
    return-void
.end method

.method public setPoll(I)V
    .registers 5
    .param p1, "poll"    # I

    .line 141
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 142
    return-void
.end method

.method public setPrecision(I)V
    .registers 5
    .param p1, "precision"    # I

    .line 162
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 163
    return-void
.end method

.method public setReceiveTimeStamp(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .registers 3
    .param p1, "ts"    # Lorg/apache/commons/net/ntp/TimeStamp;

    .line 432
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 433
    return-void
.end method

.method public setReferenceId(I)V
    .registers 6
    .param p1, "refId"    # I

    .line 273
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_11

    .line 274
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    add-int/lit8 v2, v0, 0xc

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 275
    ushr-int/lit8 p1, p1, 0x8

    .line 273
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 277
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public setReferenceTime(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .registers 3
    .param p1, "ts"    # Lorg/apache/commons/net/ntp/TimeStamp;

    .line 410
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 411
    return-void
.end method

.method public setStratum(I)V
    .registers 5
    .param p1, "stratum"    # I

    .line 204
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 205
    return-void
.end method

.method public setTransmitTime(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .registers 3
    .param p1, "ts"    # Lorg/apache/commons/net/ntp/TimeStamp;

    .line 366
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 367
    return-void
.end method

.method public setVersion(I)V
    .registers 6
    .param p1, "version"    # I

    .line 182
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xc7

    and-int/lit8 v3, p1, 0x7

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", poll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getPoll()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getPrecision()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDelay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dispersion(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDispersionInMillisDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getReferenceIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", xmitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->toDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
