.class public final Lorg/apache/commons/net/ntp/NtpUtils;
.super Ljava/lang/Object;
.source "NtpUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostAddress(I)Ljava/lang/String;
    .registers 3
    .param p0, "address"    # I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v1, p0, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 91
    packed-switch p0, :pswitch_data_1e

    .line 109
    const-string v0, "Unknown"

    return-object v0

    .line 107
    :pswitch_6
    const-string v0, "Private"

    return-object v0

    .line 105
    :pswitch_9
    const-string v0, "Control"

    return-object v0

    .line 103
    :pswitch_c
    const-string v0, "Broadcast"

    return-object v0

    .line 101
    :pswitch_f
    const-string v0, "Server"

    return-object v0

    .line 99
    :pswitch_12
    const-string v0, "Client"

    return-object v0

    .line 97
    :pswitch_15
    const-string v0, "Symmetric Passive"

    return-object v0

    .line 95
    :pswitch_18
    const-string v0, "Symmetric Active"

    return-object v0

    .line 93
    :pswitch_1b
    const-string v0, "Reserved"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getRefAddress(Lorg/apache/commons/net/ntp/NtpV3Packet;)Ljava/lang/String;
    .registers 3
    .param p0, "packet"    # Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 51
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReferenceId()I

    move-result v0

    .line 52
    .local v0, "address":I
    :goto_8
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpUtils;->getHostAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getReferenceClock(Lorg/apache/commons/net/ntp/NtpV3Packet;)Ljava/lang/String;
    .registers 6
    .param p0, "message"    # Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 65
    if-nez p0, :cond_5

    .line 66
    const-string v0, ""

    return-object v0

    .line 67
    :cond_5
    invoke-interface {p0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReferenceId()I

    move-result v0

    .line 68
    .local v0, "refId":I
    if-nez v0, :cond_e

    .line 69
    const-string v1, ""

    return-object v1

    .line 70
    :cond_e
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 72
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x18

    .local v2, "shiftBits":I
    :goto_16
    if-ltz v2, :cond_2f

    .line 74
    ushr-int v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 75
    .local v3, "c":C
    if-nez v3, :cond_20

    .end local v2    # "shiftBits":I
    .end local v3    # "c":C
    goto :goto_2f

    .line 76
    .restart local v2    # "shiftBits":I
    .restart local v3    # "c":C
    :cond_20
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_29

    .line 77
    const-string v4, ""

    return-object v4

    .line 78
    :cond_29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    .end local v3    # "c":C
    add-int/lit8 v2, v2, -0x8

    goto :goto_16

    .line 80
    .end local v2    # "shiftBits":I
    :cond_2f
    :goto_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
