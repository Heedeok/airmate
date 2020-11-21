.class Lorg/ros/internal/node/DefaultNode$8;
.super Ljava/lang/Object;
.source "DefaultNode.java"

# interfaces
.implements Lorg/ros/node/NodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/DefaultNode;->executeCancellableLoop(Lorg/ros/concurrent/CancellableLoop;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/DefaultNode;

.field final synthetic val$cancellableLoop:Lorg/ros/concurrent/CancellableLoop;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/DefaultNode;Lorg/ros/concurrent/CancellableLoop;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/DefaultNode;

    .line 580
    iput-object p1, p0, Lorg/ros/internal/node/DefaultNode$8;->this$0:Lorg/ros/internal/node/DefaultNode;

    iput-object p2, p0, Lorg/ros/internal/node/DefaultNode$8;->val$cancellableLoop:Lorg/ros/concurrent/CancellableLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 596
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode$8;->val$cancellableLoop:Lorg/ros/concurrent/CancellableLoop;

    invoke-virtual {v0}, Lorg/ros/concurrent/CancellableLoop;->cancel()V

    .line 597
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 587
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode$8;->val$cancellableLoop:Lorg/ros/concurrent/CancellableLoop;

    invoke-virtual {v0}, Lorg/ros/concurrent/CancellableLoop;->cancel()V

    .line 588
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 592
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 2
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 583
    return-void
.end method
