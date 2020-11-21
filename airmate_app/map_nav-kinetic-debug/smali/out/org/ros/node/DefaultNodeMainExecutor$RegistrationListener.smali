.class Lorg/ros/node/DefaultNodeMainExecutor$RegistrationListener;
.super Ljava/lang/Object;
.source "DefaultNodeMainExecutor.java"

# interfaces
.implements Lorg/ros/node/NodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/node/DefaultNodeMainExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/node/DefaultNodeMainExecutor;


# direct methods
.method private constructor <init>(Lorg/ros/node/DefaultNodeMainExecutor;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lorg/ros/node/DefaultNodeMainExecutor$RegistrationListener;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/node/DefaultNodeMainExecutor;Lorg/ros/node/DefaultNodeMainExecutor$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/ros/node/DefaultNodeMainExecutor;
    .param p2, "x1"    # Lorg/ros/node/DefaultNodeMainExecutor$1;

    .line 52
    invoke-direct {p0, p1}, Lorg/ros/node/DefaultNodeMainExecutor$RegistrationListener;-><init>(Lorg/ros/node/DefaultNodeMainExecutor;)V

    return-void
.end method


# virtual methods
.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 69
    invoke-static {}, Lorg/ros/node/DefaultNodeMainExecutor;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "Node error."

    invoke-interface {v0, v1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 70
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor$RegistrationListener;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    invoke-static {v0, p1}, Lorg/ros/node/DefaultNodeMainExecutor;->access$100(Lorg/ros/node/DefaultNodeMainExecutor;Lorg/ros/node/Node;)V

    .line 71
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 60
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 64
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor$RegistrationListener;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    invoke-static {v0, p1}, Lorg/ros/node/DefaultNodeMainExecutor;->access$100(Lorg/ros/node/DefaultNodeMainExecutor;Lorg/ros/node/Node;)V

    .line 65
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 3
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 55
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor$RegistrationListener;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    invoke-static {v0, p1}, Lorg/ros/node/DefaultNodeMainExecutor;->access$000(Lorg/ros/node/DefaultNodeMainExecutor;Lorg/ros/node/ConnectedNode;)V

    .line 56
    return-void
.end method
