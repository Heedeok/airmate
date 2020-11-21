.class final Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;
.super Ljava/lang/Object;
.source "EmbeddedChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFactory;


# static fields
.field static final INSTANCE:Lorg/jboss/netty/channel/ChannelFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;->INSTANCE:Lorg/jboss/netty/channel/ChannelFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .registers 3
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public releaseExternalResources()V
    .registers 1

    .line 38
    return-void
.end method
