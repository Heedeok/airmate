.class public Lorg/jboss/netty/channel/DefaultServerChannelConfig;
.super Ljava/lang/Object;
.source "DefaultServerChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelConfig;


# instance fields
.field private volatile bufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

.field private volatile pipelineFactory:Lorg/jboss/netty/channel/ChannelPipelineFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->bufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 38
    return-void
.end method


# virtual methods
.method public getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .registers 2

    .line 73
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->bufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->pipelineFactory:Lorg/jboss/netty/channel/ChannelPipelineFactory;

    return-object v0
.end method

.method public setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V
    .registers 4
    .param p1, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 77
    if-eqz p1, :cond_5

    .line 81
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->bufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 82
    return-void

    .line 78
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bufferFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnectTimeoutMillis(I)V
    .registers 2
    .param p1, "connectTimeoutMillis"    # I

    .line 90
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 51
    const-string v0, "pipelineFactory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 52
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelPipelineFactory;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    goto :goto_1d

    .line 53
    :cond_f
    const-string v0, "bufferFactory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBufferFactory;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V

    .line 58
    :goto_1d
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setOptions(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 43
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_8

    .line 44
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_22
    return-void
.end method

.method public setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V
    .registers 4
    .param p1, "pipelineFactory"    # Lorg/jboss/netty/channel/ChannelPipelineFactory;

    .line 66
    if-eqz p1, :cond_5

    .line 69
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultServerChannelConfig;->pipelineFactory:Lorg/jboss/netty/channel/ChannelPipelineFactory;

    .line 70
    return-void

    .line 67
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pipelineFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
