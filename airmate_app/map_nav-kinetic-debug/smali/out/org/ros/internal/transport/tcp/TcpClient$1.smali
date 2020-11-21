.class Lorg/ros/internal/transport/tcp/TcpClient$1;
.super Lorg/ros/internal/transport/tcp/TcpClientPipelineFactory;
.source "TcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/transport/tcp/TcpClient;->connect(Ljava/lang/String;Ljava/net/SocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/transport/tcp/TcpClient;


# direct methods
.method constructor <init>(Lorg/ros/internal/transport/tcp/TcpClient;Lorg/jboss/netty/channel/group/ChannelGroup;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/transport/tcp/TcpClient;
    .param p2, "channelGroup"    # Lorg/jboss/netty/channel/group/ChannelGroup;

    .line 90
    iput-object p1, p0, Lorg/ros/internal/transport/tcp/TcpClient$1;->this$0:Lorg/ros/internal/transport/tcp/TcpClient;

    invoke-direct {p0, p2}, Lorg/ros/internal/transport/tcp/TcpClientPipelineFactory;-><init>(Lorg/jboss/netty/channel/group/ChannelGroup;)V

    return-void
.end method


# virtual methods
.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 5

    .line 93
    invoke-super {p0}, Lorg/ros/internal/transport/tcp/TcpClientPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 94
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    iget-object v1, p0, Lorg/ros/internal/transport/tcp/TcpClient$1;->this$0:Lorg/ros/internal/transport/tcp/TcpClient;

    invoke-static {v1}, Lorg/ros/internal/transport/tcp/TcpClient;->access$000(Lorg/ros/internal/transport/tcp/TcpClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/transport/tcp/NamedChannelHandler;

    .line 95
    .local v2, "namedChannelHandler":Lorg/ros/internal/transport/tcp/NamedChannelHandler;
    invoke-interface {v2}, Lorg/ros/internal/transport/tcp/NamedChannelHandler;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 96
    .end local v2    # "namedChannelHandler":Lorg/ros/internal/transport/tcp/NamedChannelHandler;
    goto :goto_e

    .line 97
    :cond_22
    return-object v0
.end method
