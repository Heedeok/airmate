.class Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "EmbeddedChannel.java"


# static fields
.field private static final DUMMY_ID:Ljava/lang/Integer;


# instance fields
.field private final config:Lorg/jboss/netty/channel/ChannelConfig;

.field private final localAddress:Ljava/net/SocketAddress;

.field private final remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->DUMMY_ID:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .registers 9
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .line 40
    sget-object v1, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->DUMMY_ID:Ljava/lang/Integer;

    sget-object v3, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;->INSTANCE:Lorg/jboss/netty/channel/ChannelFactory;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 36
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedSocketAddress;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/embedder/EmbeddedSocketAddress;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->localAddress:Ljava/net/SocketAddress;

    .line 37
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedSocketAddress;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/embedder/EmbeddedSocketAddress;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->remoteAddress:Ljava/net/SocketAddress;

    .line 41
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelConfig;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->config:Lorg/jboss/netty/channel/ChannelConfig;

    .line 42
    return-void
.end method


# virtual methods
.method public getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->config:Lorg/jboss/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 49
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 53
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 61
    const/4 v0, 0x1

    return v0
.end method
