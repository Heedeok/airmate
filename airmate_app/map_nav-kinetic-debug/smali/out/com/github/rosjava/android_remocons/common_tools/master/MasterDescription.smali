.class public Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;
.super Ljava/lang/Object;
.source "MasterDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONNECTING:Ljava/lang/String; = "connecting..."

.field public static final CONTROL:Ljava/lang/String; = "not started"

.field public static final ERROR:Ljava/lang/String; = "exception"

.field public static final NAME_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final OK:Ljava/lang/String; = "ok"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final UNAVAILABLE:Ljava/lang/String; = "unavailable"

.field public static final UNIQUE_KEY:Ljava/lang/String; = "com.github.rosjava.android_remocons.master.MasterDescription"

.field public static final WIFI:Ljava/lang/String; = "invalid wifi"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appsNameSpace:Ljava/lang/String;

.field private connectionStatus:Ljava/lang/String;

.field private masterIconData:[B

.field private masterIconDataLength:I

.field private masterIconDataOffset:I

.field private masterIconFormat:Ljava/lang/String;

.field private masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

.field private masterName:Ljava/lang/String;

.field private masterType:Ljava/lang/String;

.field private timeLastSeen:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/lang/String;Ljava/lang/String;Lrocon_std_msgs/Icon;Ljava/lang/String;Ljava/util/Date;)V
    .registers 8
    .param p1, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .param p2, "masterName"    # Ljava/lang/String;
    .param p3, "masterType"    # Ljava/lang/String;
    .param p4, "masterIcon"    # Lrocon_std_msgs/Icon;
    .param p5, "appsNameSpace"    # Ljava/lang/String;
    .param p6, "timeLastSeen"    # Ljava/util/Date;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p2}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->setMasterName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->setMasterId(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;)V

    .line 88
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterType:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->appsNameSpace:Ljava/lang/String;

    .line 91
    if-eqz p4, :cond_35

    .line 92
    invoke-interface {p4}, Lrocon_std_msgs/Icon;->getFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconFormat:Ljava/lang/String;

    .line 93
    invoke-interface {p4}, Lrocon_std_msgs/Icon;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconData:[B

    .line 94
    invoke-interface {p4}, Lrocon_std_msgs/Icon;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v0

    iput v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconDataOffset:I

    .line 95
    invoke-interface {p4}, Lrocon_std_msgs/Icon;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iput v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconDataLength:I

    .line 97
    :cond_35
    iput-object p6, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->timeLastSeen:Ljava/util/Date;

    .line 98
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;)V
    .registers 3
    .param p1, "other"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    .line 101
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 102
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterType:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterType:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->appsNameSpace:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->appsNameSpace:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconFormat:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconData:[B

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconData:[B

    .line 107
    iget v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconDataOffset:I

    iput v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconDataOffset:I

    .line 108
    iget v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconDataLength:I

    iput v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconDataLength:I

    .line 109
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->connectionStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->connectionStatus:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->timeLastSeen:Ljava/util/Date;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->timeLastSeen:Ljava/util/Date;

    .line 111
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 246
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 247
    return v0

    .line 252
    :cond_4
    instance-of v1, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 253
    return v2

    .line 258
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    .line 262
    .local v1, "lhs":Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;
    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    if-nez v3, :cond_18

    iget-object v3, v1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    if-nez v3, :cond_16

    goto :goto_20

    :cond_16
    const/4 v0, 0x0

    goto :goto_20

    :cond_18
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    iget-object v2, v1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v0, v2}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_20
    return v0
.end method

.method public getAppsNameSpace()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->appsNameSpace:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionStatus()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->connectionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterFriendlyName()Ljava/lang/String;
    .registers 9

    .line 154
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    .line 156
    .local v0, "friendlyName":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-le v1, v3, :cond_37

    .line 157
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "possibleUuidPart":Ljava/lang/String;
    const-string v4, "[^a-f0-9]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 159
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 160
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_37

    .line 161
    iget-object v6, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    iget-object v7, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 164
    .end local v1    # "possibleUuidPart":Ljava/lang/String;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_37
    const/16 v1, 0x5f

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v3, "\\s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "words":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v3

    .local v5, "l":I
    :goto_4e
    if-ge v4, v5, :cond_71

    .line 168
    if-lez v4, :cond_57

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_57
    aget-object v6, v3, v4

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    .line 170
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 172
    .end local v4    # "i":I
    .end local v5    # "l":I
    :cond_71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMasterIconData()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconData:[B

    if-nez v0, :cond_6

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconData:[B

    iget v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconDataOffset:I

    iget v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconDataLength:I

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 201
    .local v0, "channelBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    return-object v0
.end method

.method public getMasterIconFormat()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterId()Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    return-object v0
.end method

.method public getMasterName()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterType()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterType:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterUri()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getMasterUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeLastSeen()Ljava/util/Date;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->timeLastSeen:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 269
    const/16 v0, 0x11

    .line 271
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_10

    :cond_a
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v2}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v1, v2

    .line 272
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isUnknown()Z
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setConnectionStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "connectionStatus"    # Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->connectionStatus:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setMasterIcon(Lrocon_std_msgs/Icon;)V
    .registers 3
    .param p1, "masterIcon"    # Lrocon_std_msgs/Icon;

    .line 214
    invoke-interface {p1}, Lrocon_std_msgs/Icon;->getFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconFormat:Ljava/lang/String;

    .line 215
    invoke-interface {p1}, Lrocon_std_msgs/Icon;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconData:[B

    .line 216
    return-void
.end method

.method public setMasterIconData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p1, "iconData"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 210
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconData:[B

    .line 211
    return-void
.end method

.method public setMasterIconFormat(Ljava/lang/String;)V
    .registers 2
    .param p1, "iconFormat"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterIconFormat:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setMasterId(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;)V
    .registers 2
    .param p1, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 136
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 137
    return-void
.end method

.method public setMasterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "masterName"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterName:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setMasterType(Ljava/lang/String;)V
    .registers 2
    .param p1, "masterType"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->masterType:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setTimeLastSeen(Ljava/util/Date;)V
    .registers 2
    .param p1, "timeLastSeen"    # Ljava/util/Date;

    .line 231
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->timeLastSeen:Ljava/util/Date;

    .line 232
    return-void
.end method
