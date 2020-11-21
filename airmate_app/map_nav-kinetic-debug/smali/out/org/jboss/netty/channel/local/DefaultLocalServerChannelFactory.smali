.class public Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;
.super Ljava/lang/Object;
.source "DefaultLocalServerChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/local/LocalServerChannelFactory;


# instance fields
.field private final group:Lorg/jboss/netty/channel/group/DefaultChannelGroup;

.field private final sink:Lorg/jboss/netty/channel/ChannelSink;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    invoke-direct {v0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->group:Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    .line 29
    new-instance v0, Lorg/jboss/netty/channel/local/LocalServerChannelSink;

    invoke-direct {v0}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .registers 3
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 26
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/local/LocalServerChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ServerChannel;
    .registers 3
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 26
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/local/LocalServerChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/local/LocalServerChannel;
    .registers 4
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 39
    new-instance v0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-direct {v0, p0, p1, v1}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 40
    .local v0, "channel":Lorg/jboss/netty/channel/local/LocalServerChannel;
    iget-object v1, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->group:Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->add(Lorg/jboss/netty/channel/Channel;)Z

    .line 41
    return-object v0
.end method

.method public releaseExternalResources()V
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannelFactory;->group:Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->close()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroupFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    .line 51
    return-void
.end method
