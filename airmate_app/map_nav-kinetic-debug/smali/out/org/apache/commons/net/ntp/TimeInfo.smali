.class public Lorg/apache/commons/net/ntp/TimeInfo;
.super Ljava/lang/Object;
.source "TimeInfo.java"


# instance fields
.field private _comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _delay:Ljava/lang/Long;

.field private _detailsComputed:Z

.field private _message:Lorg/apache/commons/net/ntp/NtpV3Packet;

.field private _offset:Ljava/lang/Long;

.field private _returnTime:J


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;J)V
    .registers 10
    .param p1, "message"    # Lorg/apache/commons/net/ntp/NtpV3Packet;
    .param p2, "returnTime"    # J

    .line 56
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;)V
    .registers 11
    .param p1, "message"    # Lorg/apache/commons/net/ntp/NtpV3Packet;
    .param p2, "returnTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p4, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V
    .registers 8
    .param p1, "message"    # Lorg/apache/commons/net/ntp/NtpV3Packet;
    .param p2, "returnTime"    # J
    .param p5, "doComputeDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 102
    .local p4, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-eqz p1, :cond_11

    .line 105
    iput-wide p2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    .line 106
    iput-object p1, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 107
    iput-object p4, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    .line 108
    if-eqz p5, :cond_10

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeInfo;->computeDetails()V

    .line 110
    :cond_10
    return-void

    .line 104
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JZ)V
    .registers 11
    .param p1, "msgPacket"    # Lorg/apache/commons/net/ntp/NtpV3Packet;
    .param p2, "returnTime"    # J
    .param p4, "doComputeDetails"    # Z

    .line 85
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .registers 3
    .param p1, "comment"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    if-nez v0, :cond_b

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    .line 124
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public computeDetails()V
    .registers 22

    .line 133
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_detailsComputed:Z

    if-eqz v1, :cond_7

    .line 134
    return-void

    .line 136
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_detailsComputed:Z

    .line 137
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    if-nez v1, :cond_15

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    .line 141
    :cond_15
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getOriginateTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v1

    .line 142
    .local v1, "origNtpTime":Lorg/apache/commons/net/ntp/TimeStamp;
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v2

    .line 145
    .local v2, "origTime":J
    iget-object v4, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v4}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReceiveTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v4

    .line 146
    .local v4, "rcvNtpTime":Lorg/apache/commons/net/ntp/TimeStamp;
    invoke-virtual {v4}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v5

    .line 149
    .local v5, "rcvTime":J
    iget-object v7, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v7}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v7

    .line 150
    .local v7, "xmitNtpTime":Lorg/apache/commons/net/ntp/TimeStamp;
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v8

    .line 168
    .local v8, "xmitTime":J
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_61

    .line 172
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-eqz v14, :cond_58

    .line 174
    iget-wide v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    .line 175
    iget-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v11, "Error: zero orig time -- cannot compute delay"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10f

    .line 177
    :cond_58
    iget-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v11, "Error: zero orig time -- cannot compute delay/offset"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10f

    .line 178
    :cond_61
    invoke-virtual {v4}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-eqz v14, :cond_ce

    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-nez v14, :cond_72

    goto :goto_ce

    .line 205
    :cond_72
    iget-wide v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long/2addr v10, v2

    .line 207
    .local v10, "delayValue":J
    cmp-long v14, v8, v5

    if-gez v14, :cond_81

    .line 210
    iget-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v13, "Error: xmitTime < rcvTime"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    .line 214
    :cond_81
    const/4 v14, 0x0

    sub-long v14, v8, v5

    .line 217
    .local v14, "delta":J
    cmp-long v16, v14, v10

    if-gtz v16, :cond_8a

    .line 219
    sub-long/2addr v10, v14

    goto :goto_a9

    .line 224
    :cond_8a
    const/16 v16, 0x0

    sub-long v16, v14, v10

    const-wide/16 v18, 0x1

    cmp-long v20, v16, v18

    if-nez v20, :cond_a2

    .line 227
    cmp-long v16, v10, v12

    if-eqz v16, :cond_a9

    .line 229
    iget-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v13, "Info: processing time > total network time by 1 ms -> assume zero delay"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-wide/16 v10, 0x0

    goto :goto_a9

    .line 233
    :cond_a2
    iget-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v13, "Warning: processing time > total network time"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v14    # "delta":J
    :cond_a9
    :goto_a9
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    .line 237
    iget-wide v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v14, v2, v12

    if-lez v14, :cond_bc

    .line 238
    iget-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v13, "Error: OrigTime > DestRcvTime"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_bc
    const/4 v12, 0x0

    sub-long v12, v5, v2

    iget-wide v14, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v14, v8, v14

    add-long/2addr v12, v14

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto :goto_10f

    .line 180
    .end local v10    # "delayValue":J
    :cond_ce
    :goto_ce
    iget-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v11, "Warning: zero rcvNtpTime or xmitNtpTime"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-wide v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v14, v2, v10

    if-lez v14, :cond_e3

    .line 183
    iget-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v11, "Error: OrigTime > DestRcvTime"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 188
    :cond_e3
    iget-wide v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    .line 194
    :goto_ec
    invoke-virtual {v4}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-eqz v14, :cond_fd

    .line 197
    sub-long v10, v5, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto :goto_10f

    .line 198
    :cond_fd
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-eqz v14, :cond_10f

    .line 201
    iget-wide v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    .line 242
    :cond_10f
    :goto_10f
    return-void
.end method

.method public getComments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    return-object v0
.end method

.method public getDelay()Ljava/lang/Long;
    .registers 2

    .line 261
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessage()Lorg/apache/commons/net/ntp/NtpV3Packet;
    .registers 2

    .line 282
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    return-object v0
.end method

.method public getOffset()Ljava/lang/Long;
    .registers 2

    .line 272
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    return-object v0
.end method

.method public getReturnTime()J
    .registers 3

    .line 292
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    return-wide v0
.end method
