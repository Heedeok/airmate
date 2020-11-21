.class public interface abstract Lorg/ros/node/NodeMainExecutor;
.super Ljava/lang/Object;
.source "NodeMainExecutor.java"


# virtual methods
.method public abstract execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V
.end method

.method public abstract execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/NodeMain;",
            "Lorg/ros/node/NodeConfiguration;",
            "Ljava/util/Collection<",
            "Lorg/ros/node/NodeListener;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract shutdown()V
.end method

.method public abstract shutdownNodeMain(Lorg/ros/node/NodeMain;)V
.end method
