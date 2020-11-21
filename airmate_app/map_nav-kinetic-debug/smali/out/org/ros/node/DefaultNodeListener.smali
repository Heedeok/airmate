.class public Lorg/ros/node/DefaultNodeListener;
.super Ljava/lang/Object;
.source "DefaultNodeListener.java"

# interfaces
.implements Lorg/ros/node/NodeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 40
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 32
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 36
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 2
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 28
    return-void
.end method
