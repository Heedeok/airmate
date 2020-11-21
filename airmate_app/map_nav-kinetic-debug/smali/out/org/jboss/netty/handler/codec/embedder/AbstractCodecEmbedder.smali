.class abstract Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;
.super Ljava/lang/Object;
.source "AbstractCodecEmbedder.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/embedder/CodecEmbedder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelPipeline;,
        Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/handler/codec/embedder/CodecEmbedder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private final pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

.field final productQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final sink:Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<",
            "TE;>.EmbeddedChannelSink;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;[Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 4
    .param p1, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .param p2, "handlers"    # [Lorg/jboss/netty/channel/ChannelHandler;

    .line 70
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 71
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/ChannelConfig;->setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V

    .line 72
    return-void
.end method

.method protected varargs constructor <init>([Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 5
    .param p1, "handlers"    # [Lorg/jboss/netty/channel/ChannelHandler;

    .line 55
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;-><init>(Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->sink:Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->productQueue:Ljava/util/Queue;

    .line 56
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelPipeline;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelPipeline;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    .line 57
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->configurePipeline([Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 58
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->sink:Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;-><init>(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    .line 59
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->fireInitialEvents()V

    .line 60
    return-void
.end method

.method private varargs configurePipeline([Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 7
    .param p1, "handlers"    # [Lorg/jboss/netty/channel/ChannelHandler;

    .line 82
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    if-eqz p1, :cond_63

    .line 86
    array-length v0, p1

    if-eqz v0, :cond_41

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_37

    .line 93
    aget-object v1, p1, v0

    .line 94
    .local v1, "h":Lorg/jboss/netty/channel/ChannelHandler;
    if-eqz v1, :cond_1b

    .line 97
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-interface {v2, v3, v4}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 92
    .end local v1    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 95
    .restart local v1    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    :cond_1b
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlers["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v0    # "i":I
    .end local v1    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    :cond_37
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    const-string v1, "SINK"

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->sink:Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 100
    return-void

    .line 87
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlers should contain at least one "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/jboss/netty/channel/ChannelHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlers"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fireInitialEvents()V
    .registers 3

    .line 76
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 77
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 78
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 79
    return-void
.end method


# virtual methods
.method public finish()Z
    .registers 2

    .line 103
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 104
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    .line 105
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 106
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 107
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->productQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final getChannel()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 115
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 2

    .line 181
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    return-object v0
.end method

.method protected final isEmpty()Z
    .registers 2

    .line 123
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->productQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->productQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->productQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollAll()[Ljava/lang/Object;
    .registers 6

    .line 135
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->size()I

    move-result v0

    .line 136
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 137
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1a

    .line 138
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->poll()Ljava/lang/Object;

    move-result-object v3

    .line 139
    .local v3, "product":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_14

    .line 142
    aput-object v3, v1, v2

    .line 137
    .end local v3    # "product":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 140
    .restart local v3    # "product":Ljava/lang/Object;, "TE;"
    :cond_14
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 144
    .end local v2    # "i":I
    .end local v3    # "product":Ljava/lang/Object;, "TE;"
    :cond_1a
    return-object v1
.end method

.method public final pollAll([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_2d

    .line 153
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->size()I

    move-result v0

    .line 156
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_18

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 160
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    :cond_18
    move-object v1, p1

    const/4 p1, 0x0

    .line 161
    .local p1, "i":I
    :goto_1a
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 162
    .local v2, "product":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_28

    .line 163
    nop

    .line 169
    .end local v2    # "product":Ljava/lang/Object;, "TT;"
    .end local p1    # "i":I
    array-length p1, v1

    if-le p1, v0, :cond_27

    .line 170
    const/4 p1, 0x0

    aput-object p1, v1, v0

    .line 173
    :cond_27
    return-object v1

    .line 165
    .restart local v2    # "product":Ljava/lang/Object;, "TT;"
    .restart local p1    # "i":I
    :cond_28
    aput-object v2, v1, p1

    .line 160
    .end local v2    # "product":Ljava/lang/Object;, "TT;"
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    .line 150
    .end local v0    # "size":I
    .end local v1    # "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final size()I
    .registers 2

    .line 177
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->productQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
