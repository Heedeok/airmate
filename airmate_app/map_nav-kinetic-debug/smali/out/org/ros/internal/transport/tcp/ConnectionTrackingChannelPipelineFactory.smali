.class public Lorg/ros/internal/transport/tcp/ConnectionTrackingChannelPipelineFactory;
.super Ljava/lang/Object;
.source "ConnectionTrackingChannelPipelineFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipelineFactory;


# static fields
.field public static final CONNECTION_TRACKING_HANDLER:Ljava/lang/String; = "ConnectionTrackingHandler"


# instance fields
.field private final connectionTrackingHandler:Lorg/ros/internal/transport/ConnectionTrackingHandler;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/group/ChannelGroup;)V
    .registers 3
    .param p1, "channelGroup"    # Lorg/jboss/netty/channel/group/ChannelGroup;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/ros/internal/transport/ConnectionTrackingHandler;

    invoke-direct {v0, p1}, Lorg/ros/internal/transport/ConnectionTrackingHandler;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;)V

    iput-object v0, p0, Lorg/ros/internal/transport/tcp/ConnectionTrackingChannelPipelineFactory;->connectionTrackingHandler:Lorg/ros/internal/transport/ConnectionTrackingHandler;

    .line 37
    return-void
.end method


# virtual methods
.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 4

    .line 41
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 42
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    const-string v1, "ConnectionTrackingHandler"

    iget-object v2, p0, Lorg/ros/internal/transport/tcp/ConnectionTrackingChannelPipelineFactory;->connectionTrackingHandler:Lorg/ros/internal/transport/ConnectionTrackingHandler;

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 43
    return-object v0
.end method
