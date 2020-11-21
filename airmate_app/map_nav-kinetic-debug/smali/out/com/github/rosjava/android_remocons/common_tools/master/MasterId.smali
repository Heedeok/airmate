.class public Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
.super Ljava/lang/Object;
.source "MasterId.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x10743f8e8df3ace4L


# instance fields
.field private masterUri:Ljava/lang/String;

.field private wifi:Ljava/lang/String;

.field private wifiEncryption:Ljava/lang/String;

.field private wifiPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "masterUri"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->masterUri:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "masterUri"    # Ljava/lang/String;
    .param p2, "wifi"    # Ljava/lang/String;
    .param p3, "wifiEncryption"    # Ljava/lang/String;
    .param p4, "wifiPassword"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->masterUri:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifi:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiEncryption:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiPassword:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "URL"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 64
    const-string v0, "URL"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->masterUri:Ljava/lang/String;

    .line 66
    :cond_17
    const-string v0, "WIFI"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 67
    const-string v0, "WIFI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifi:Ljava/lang/String;

    .line 69
    :cond_2b
    const-string v0, "WIFIENC"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 70
    const-string v0, "WIFIENC"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiEncryption:Ljava/lang/String;

    .line 72
    :cond_3f
    const-string v0, "WIFIPW"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 73
    const-string v0, "WIFIPW"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiPassword:Ljava/lang/String;

    .line 75
    :cond_53
    return-void
.end method

.method private nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 108
    if-ne p1, p2, :cond_4

    .line 109
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_4
    if-eqz p1, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 115
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 112
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 124
    return v0

    .line 128
    :cond_4
    instance-of v1, p1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 129
    return v2

    .line 133
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 134
    .local v1, "lhs":Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->masterUri:Ljava/lang/String;

    iget-object v4, v1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->masterUri:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifi:Ljava/lang/String;

    iget-object v4, v1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifi:Ljava/lang/String;

    .line 135
    invoke-direct {p0, v3, v4}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiEncryption:Ljava/lang/String;

    iget-object v4, v1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiEncryption:Ljava/lang/String;

    .line 136
    invoke-direct {p0, v3, v4}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiPassword:Ljava/lang/String;

    iget-object v4, v1, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiPassword:Ljava/lang/String;

    .line 137
    invoke-direct {p0, v3, v4}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    .line 134
    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0
.end method

.method public getMasterUri()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->masterUri:Ljava/lang/String;

    return-object v0
.end method

.method public getWifi()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifi:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiEncryption()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiPassword()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiPassword:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 143
    const/16 v0, 0x11

    .line 145
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->masterUri:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_11

    :cond_b
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->masterUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v1, v2

    .line 146
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifi:Ljava/lang/String;

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_20

    :cond_1a
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    .line 147
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiEncryption:Ljava/lang/String;

    if-nez v2, :cond_29

    const/4 v2, 0x0

    goto :goto_2f

    :cond_29
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiEncryption:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2f
    add-int/2addr v1, v2

    .line 148
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiPassword:Ljava/lang/String;

    if-nez v2, :cond_37

    goto :goto_3d

    :cond_37
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->wifiPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3d
    add-int/2addr v0, v3

    .line 149
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 99
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getMasterUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getMasterUri()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "str":Ljava/lang/String;
    :goto_d
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " On Wifi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_2b
    return-object v0
.end method
