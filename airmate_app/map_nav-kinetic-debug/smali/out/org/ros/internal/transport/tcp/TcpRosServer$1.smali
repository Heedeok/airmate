.class Lorg/ros/internal/transport/tcp/TcpRosServer$1;
.super Ljava/lang/Object;
.source "TcpRosServer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/transport/tcp/TcpRosServer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/transport/tcp/TcpRosServer;


# direct methods
.method constructor <init>(Lorg/ros/internal/transport/tcp/TcpRosServer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/internal/transport/tcp/TcpRosServer;

    .line 88
    iput-object p1, p0, Lorg/ros/internal/transport/tcp/TcpRosServer$1;->this$0:Lorg/ros/internal/transport/tcp/TcpRosServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/ros/internal/transport/tcp/TcpRosServer$1;->this$0:Lorg/ros/internal/transport/tcp/TcpRosServer;

    invoke-static {v0}, Lorg/ros/internal/transport/tcp/TcpRosServer;->access$000(Lorg/ros/internal/transport/tcp/TcpRosServer;)Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lorg/ros/internal/transport/tcp/TcpRosServer$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
