.class Lorg/ros/internal/node/DefaultNode$7;
.super Ljava/lang/Object;
.source "DefaultNode.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/DefaultNode;->signalOnShutdownComplete()V
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

    .line 555
    iput-object p1, p0, Lorg/ros/internal/node/DefaultNode$7;->this$0:Lorg/ros/internal/node/DefaultNode;

    iput-object p2, p0, Lorg/ros/internal/node/DefaultNode$7;->val$node:Lorg/ros/node/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 555
    check-cast p1, Lorg/ros/node/NodeListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/DefaultNode$7;->run(Lorg/ros/node/NodeListener;)V

    return-void
.end method

.method public run(Lorg/ros/node/NodeListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/ros/node/NodeListener;

    .line 559
    :try_start_0
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode$7;->val$node:Lorg/ros/node/Node;

    invoke-interface {p1, v0}, Lorg/ros/node/NodeListener;->onShutdownComplete(Lorg/ros/node/Node;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 562
    goto :goto_c

    .line 560
    :catch_6
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 563
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c
    return-void
.end method
