.class Lorg/ros/internal/node/DefaultNode$6;
.super Ljava/lang/Object;
.source "DefaultNode.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/DefaultNode;->signalOnShutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "Lorg/ros/node/NodeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/DefaultNode;

.field final synthetic val$node:Lorg/ros/node/Node;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/DefaultNode;Lorg/ros/node/Node;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/DefaultNode;

    .line 534
    iput-object p1, p0, Lorg/ros/internal/node/DefaultNode$6;->this$0:Lorg/ros/internal/node/DefaultNode;

    iput-object p2, p0, Lorg/ros/internal/node/DefaultNode$6;->val$node:Lorg/ros/node/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 534
    check-cast p1, Lorg/ros/node/NodeListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode$6;->run(Lorg/ros/node/NodeListener;)V

    return-void
.end method

.method public run(Lorg/ros/node/NodeListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/ros/node/NodeListener;

    .line 537
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode$6;->val$node:Lorg/ros/node/Node;

    invoke-interface {p1, v0}, Lorg/ros/node/NodeListener;->onShutdown(Lorg/ros/node/Node;)V

    .line 538
    return-void
.end method
