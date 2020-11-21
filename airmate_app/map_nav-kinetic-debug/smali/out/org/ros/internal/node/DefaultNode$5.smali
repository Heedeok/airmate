.class Lorg/ros/internal/node/DefaultNode$5;
.super Ljava/lang/Object;
.source "DefaultNode.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/DefaultNode;->signalOnStart()V
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

.field final synthetic val$connectedNode:Lorg/ros/node/ConnectedNode;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/DefaultNode;Lorg/ros/node/ConnectedNode;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/DefaultNode;

    .line 517
    iput-object p1, p0, Lorg/ros/internal/node/DefaultNode$5;->this$0:Lorg/ros/internal/node/DefaultNode;

    iput-object p2, p0, Lorg/ros/internal/node/DefaultNode$5;->val$connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 517
    check-cast p1, Lorg/ros/node/NodeListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode$5;->run(Lorg/ros/node/NodeListener;)V

    return-void
.end method

.method public run(Lorg/ros/node/NodeListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/ros/node/NodeListener;

    .line 520
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode$5;->val$connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {p1, v0}, Lorg/ros/node/NodeListener;->onStart(Lorg/ros/node/ConnectedNode;)V

    .line 521
    return-void
.end method
