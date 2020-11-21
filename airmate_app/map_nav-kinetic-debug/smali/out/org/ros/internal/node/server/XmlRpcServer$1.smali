.class Lorg/ros/internal/node/server/XmlRpcServer$1;
.super Ljava/lang/Object;
.source "XmlRpcServer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/server/XmlRpcServer;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V
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
.field final synthetic this$0:Lorg/ros/internal/node/server/XmlRpcServer;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/server/XmlRpcServer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/internal/node/server/XmlRpcServer;

    .line 55
    iput-object p1, p0, Lorg/ros/internal/node/server/XmlRpcServer$1;->this$0:Lorg/ros/internal/node/server/XmlRpcServer;

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

    .line 58
    iget-object v0, p0, Lorg/ros/internal/node/server/XmlRpcServer$1;->this$0:Lorg/ros/internal/node/server/XmlRpcServer;

    invoke-static {v0}, Lorg/ros/internal/node/server/XmlRpcServer;->access$000(Lorg/ros/internal/node/server/XmlRpcServer;)Lorg/apache/xmlrpc/webserver/WebServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/WebServer;->getPort()I

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

    .line 55
    invoke-virtual {p0}, Lorg/ros/internal/node/server/XmlRpcServer$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
