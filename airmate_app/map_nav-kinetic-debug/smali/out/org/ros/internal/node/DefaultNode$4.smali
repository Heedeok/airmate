.class Lorg/ros/internal/node/DefaultNode$4;
.super Ljava/lang/Object;
.source "DefaultNode.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/DefaultNode;->signalOnError(Ljava/lang/Throwable;)V
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

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/DefaultNode;Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "this$0"    # Lorg/ros/internal/node/DefaultNode;

    .line 497
    iput-object p1, p0, Lorg/ros/internal/node/DefaultNode$4;->this$0:Lorg/ros/internal/node/DefaultNode;

    iput-object p2, p0, Lorg/ros/internal/node/DefaultNode$4;->val$node:Lorg/ros/node/Node;

    iput-object p3, p0, Lorg/ros/internal/node/DefaultNode$4;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 497
    check-cast p1, Lorg/ros/node/NodeListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode$4;->run(Lorg/ros/node/NodeListener;)V

    return-void
.end method

.method public run(Lorg/ros/node/NodeListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/ros/node/NodeListener;

    .line 500
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode$4;->val$node:Lorg/ros/node/Node;

    iget-object v1, p0, Lorg/ros/internal/node/DefaultNode$4;->val$throwable:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1}, Lorg/ros/node/NodeListener;->onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V

    .line 501
    return-void
.end method
