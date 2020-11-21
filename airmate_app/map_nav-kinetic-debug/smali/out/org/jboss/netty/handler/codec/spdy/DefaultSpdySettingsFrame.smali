.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;
.super Ljava/lang/Object;
.source "DefaultSpdySettingsFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    }
.end annotation


# instance fields
.field private clear:Z

.field private final settingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    .line 36
    return-void
.end method

.method private appendSettings(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->getSettings()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    .line 137
    .local v2, "setting":Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    const-string v3, "--> "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->getValue()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v3, " (persist value: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersist()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    const-string v3, "; persisted: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersisted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    sget-object v3, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;>;"
    .end local v2    # "setting":Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    goto :goto_8

    .line 148
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5b
    return-void
.end method

.method private getSettings()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;",
            ">;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearPreviouslyPersistedSettings()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->clear:Z

    return v0
.end method

.method public getIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->getIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)I
    .registers 4
    .param p1, "ID"    # I

    .line 52
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 53
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 54
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->getValue()I

    move-result v1

    return v1

    .line 56
    :cond_1a
    const/4 v1, -0x1

    return v1
.end method

.method public isPersistValue(I)Z
    .registers 4
    .param p1, "ID"    # I

    .line 91
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 92
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 93
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersist()Z

    move-result v1

    return v1

    .line 95
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public isPersisted(I)Z
    .registers 4
    .param p1, "ID"    # I

    .line 107
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 108
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 109
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->isPersisted()Z

    move-result v1

    return v1

    .line 111
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public isSet(I)Z
    .registers 4
    .param p1, "ID"    # I

    .line 47
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 48
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public persistValue(I)Z
    .registers 3
    .param p1, "ID"    # I

    .line 87
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->isPersistValue(I)Z

    move-result v0

    return v0
.end method

.method public removeValue(I)V
    .registers 4
    .param p1, "ID"    # I

    .line 80
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 81
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 82
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_12
    return-void
.end method

.method public setClearPreviouslyPersistedSettings(Z)V
    .registers 2
    .param p1, "clear"    # Z

    .line 127
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->clear:Z

    .line 128
    return-void
.end method

.method public setPersistValue(IZ)V
    .registers 5
    .param p1, "ID"    # I
    .param p2, "persistValue"    # Z

    .line 100
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 101
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 102
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v1, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersist(Z)V

    .line 104
    :cond_18
    return-void
.end method

.method public setPersisted(IZ)V
    .registers 5
    .param p1, "ID"    # I
    .param p2, "persisted"    # Z

    .line 116
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 117
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 118
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-virtual {v1, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersisted(Z)V

    .line 120
    :cond_18
    return-void
.end method

.method public setValue(II)V
    .registers 4
    .param p1, "ID"    # I
    .param p2, "value"    # I

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->setValue(IIZZ)V

    .line 62
    return-void
.end method

.method public setValue(IIZZ)V
    .registers 8
    .param p1, "ID"    # I
    .param p2, "value"    # I
    .param p3, "persistValue"    # Z
    .param p4, "persisted"    # Z

    .line 65
    if-lez p1, :cond_31

    const v0, 0xffffff

    if-gt p1, v0, :cond_31

    .line 68
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 69
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 70
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    .line 71
    .local v1, "setting":Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    invoke-virtual {v1, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setValue(I)V

    .line 72
    invoke-virtual {v1, p3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersist(Z)V

    .line 73
    invoke-virtual {v1, p4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->setPersisted(Z)V

    .line 74
    .end local v1    # "setting":Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
    goto :goto_30

    .line 75
    :cond_26
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->settingsMap:Ljava/util/Map;

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;

    invoke-direct {v2, p2, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;-><init>(IZZ)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_30
    return-void

    .line 66
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ID is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;->appendSettings(Ljava/lang/StringBuilder;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
