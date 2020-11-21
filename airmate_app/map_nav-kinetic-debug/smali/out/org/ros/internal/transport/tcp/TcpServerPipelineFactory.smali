.class public Lorg/ros/internal/transport/tcp/TcpServerPipelineFactory;
.super Lorg/ros/internal/transport/tcp/ConnectionTrackingChannelPipelineFactory;
.source "TcpServerPipelineFactory.java"


# static fields
.field public static final HANDSHAKE_HANDLER:Ljava/lang/String; = "HandshakeHandler"

.field public static final LENGTH_FIELD_BASED_FRAME_DECODER:Ljava/lang/String; = "LengthFieldBasedFrameDecoder"

.field public static final LENGTH_FIELD_PREPENDER:Ljava/lang/String; = "LengthFieldPrepender"


# instance fields
.field private final serviceManager:Lorg/ros/internal/node/service/ServiceManager;

.field private final topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/group/ChannelGroup;Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/internal/node/service/ServiceManager;)V
    .registers 4
    .param p1, "channelGroup"    # Lorg/jboss/netty/channel/group/ChannelGroup;
    .param p2, "topicParticipantManager"    # Lorg/ros/internal/node/topic/TopicParticipantManager;
    .param p3, "serviceManager"    # Lorg/ros/internal/node/service/ServiceManager;

    .line 40
    invoke-direct {p0, p1}, Lorg/ros/internal/transport/tcp/ConnectionTrackingChannelPipelineFactory;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;)V

    .line 41
    iput-object p2, p0, Lorg/ros/internal/transport/tcp/TcpServerPipelineFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 42
    iput-object p3, p0, Lorg/ros/internal/transport/tcp/TcpServerPipelineFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    .line 43
    return-void
.end method


# virtual methods
.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 10

    .line 47
    invoke-super {p0}, Lorg/ros/internal/transport/tcp/ConnectionTrackingChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 48
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    const-string v1, "LengthFieldPrepender"

    new-instance v2, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 49
    const-string v1, "LengthFieldBasedFrameDecoder"

    new-instance v8, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    invoke-interface {v0, v1, v8}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 51
    const-string v1, "HandshakeHandler"

    new-instance v2, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;

    iget-object v3, p0, Lorg/ros/internal/transport/tcp/TcpServerPipelineFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    iget-object v4, p0, Lorg/ros/internal/transport/tcp/TcpServerPipelineFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-direct {v2, v3, v4}, Lorg/ros/internal/transport/tcp/TcpServerHandshakeHandler;-><init>(Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/internal/node/service/ServiceManager;)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 53
    return-object v0
.end method
