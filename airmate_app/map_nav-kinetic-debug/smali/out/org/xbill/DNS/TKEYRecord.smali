.class public Lorg/xbill/DNS/TKEYRecord;
.super Lorg/xbill/DNS/Record;
.source "TKEYRecord.java"


# static fields
.field public static final DELETE:I = 0x5

.field public static final DIFFIEHELLMAN:I = 0x2

.field public static final GSSAPI:I = 0x3

.field public static final RESOLVERASSIGNED:I = 0x4

.field public static final SERVERASSIGNED:I = 0x1

.field private static final serialVersionUID:J = 0x7a84fbe2ffd5b7ccL


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private error:I

.field private key:[B

.field private mode:I

.field private other:[B

.field private timeExpire:Ljava/util/Date;

.field private timeInception:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;Ljava/util/Date;II[B[B)V
    .registers 20
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "alg"    # Lorg/xbill/DNS/Name;
    .param p6, "timeInception"    # Ljava/util/Date;
    .param p7, "timeExpire"    # Ljava/util/Date;
    .param p8, "mode"    # I
    .param p9, "error"    # I
    .param p10, "key"    # [B
    .param p11, "other"    # [B

    .line 68
    move-object v6, p0

    const/16 v2, 0xf9

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 69
    const-string v0, "alg"

    move-object v1, p5

    invoke-static {v0, p5}, Lorg/xbill/DNS/TKEYRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, v6, Lorg/xbill/DNS/TKEYRecord;->alg:Lorg/xbill/DNS/Name;

    .line 70
    move-object v0, p6

    iput-object v0, v6, Lorg/xbill/DNS/TKEYRecord;->timeInception:Ljava/util/Date;

    .line 71
    move-object v2, p7

    iput-object v2, v6, Lorg/xbill/DNS/TKEYRecord;->timeExpire:Ljava/util/Date;

    .line 72
    const-string v3, "mode"

    move/from16 v4, p8

    invoke-static {v3, v4}, Lorg/xbill/DNS/TKEYRecord;->checkU16(Ljava/lang/String;I)I

    move-result v3

    iput v3, v6, Lorg/xbill/DNS/TKEYRecord;->mode:I

    .line 73
    const-string v3, "error"

    move/from16 v5, p9

    invoke-static {v3, v5}, Lorg/xbill/DNS/TKEYRecord;->checkU16(Ljava/lang/String;I)I

    move-result v3

    iput v3, v6, Lorg/xbill/DNS/TKEYRecord;->error:I

    .line 74
    move-object/from16 v3, p10

    iput-object v3, v6, Lorg/xbill/DNS/TKEYRecord;->key:[B

    .line 75
    move-object/from16 v7, p11

    iput-object v7, v6, Lorg/xbill/DNS/TKEYRecord;->other:[B

    .line 76
    return-void
.end method


# virtual methods
.method public getAlgorithm()Lorg/xbill/DNS/Name;
    .registers 2

    .line 155
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getError()I
    .registers 2

    .line 185
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->error:I

    return v0
.end method

.method public getKey()[B
    .registers 2

    .line 191
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 179
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->mode:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .registers 2

    .line 47
    new-instance v0, Lorg/xbill/DNS/TKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/TKEYRecord;-><init>()V

    return-object v0
.end method

.method public getOther()[B
    .registers 2

    .line 197
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    return-object v0
.end method

.method public getTimeExpire()Ljava/util/Date;
    .registers 2

    .line 173
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->timeExpire:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeInception()Ljava/util/Date;
    .registers 2

    .line 164
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->timeInception:Ljava/util/Date;

    return-object v0
.end method

.method protected modeString()Ljava/lang/String;
    .registers 2

    .line 106
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->mode:I

    packed-switch v0, :pswitch_data_1c

    .line 112
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_c
    const-string v0, "DELETE"

    return-object v0

    .line 110
    :pswitch_f
    const-string v0, "RESOLVERASSIGNED"

    return-object v0

    .line 109
    :pswitch_12
    const-string v0, "GSSAPI"

    return-object v0

    .line 108
    :pswitch_15
    const-string v0, "DIFFIEHELLMAN"

    return-object v0

    .line 107
    :pswitch_18
    const-string v0, "SERVERASSIGNED"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .registers 4
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const-string v0, "no text format defined for TKEY"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .registers 7
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->alg:Lorg/xbill/DNS/Name;

    .line 81
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->timeInception:Ljava/util/Date;

    .line 82
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v1

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->timeExpire:Ljava/util/Date;

    .line 83
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TKEYRecord;->mode:I

    .line 84
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TKEYRecord;->error:I

    .line 86
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 87
    .local v0, "keylen":I
    const/4 v1, 0x0

    if-lez v0, :cond_3d

    .line 88
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    goto :goto_3f

    .line 90
    :cond_3d
    iput-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    .line 92
    :goto_3f
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v2

    .line 93
    .local v2, "otherlen":I
    if-lez v2, :cond_4c

    .line 94
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    goto :goto_4e

    .line 96
    :cond_4c
    iput-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    .line 97
    :goto_4e
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .registers 6

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 121
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 123
    const-string v1, "(\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :cond_1c
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->timeInception:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->timeExpire:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p0}, Lorg/xbill/DNS/TKEYRecord;->modeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget v1, p0, Lorg/xbill/DNS/TKEYRecord;->error:I

    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 132
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-eqz v1, :cond_71

    .line 134
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    const-string v4, "\t"

    invoke-static {v1, v3, v4, v2}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_71
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    if-eqz v1, :cond_80

    .line 138
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    const-string v4, "\t"

    invoke-static {v1, v3, v4, v2}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_80
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_aa

    .line 141
    :cond_86
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    if-eqz v1, :cond_9d

    .line 143
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_9d
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    if-eqz v1, :cond_aa

    .line 147
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_aa
    :goto_aa
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .registers 8
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 202
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->alg:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 204
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->timeInception:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 205
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->timeExpire:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 207
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->mode:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 208
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->error:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 210
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 211
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 212
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_3a

    .line 215
    :cond_37
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 217
    :goto_3a
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    if-eqz v0, :cond_4a

    .line 218
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 219
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_4d

    .line 222
    :cond_4a
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 223
    :goto_4d
    return-void
.end method
