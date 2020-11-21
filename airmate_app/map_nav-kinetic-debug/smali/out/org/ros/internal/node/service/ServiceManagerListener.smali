.class public interface abstract Lorg/ros/internal/node/service/ServiceManagerListener;
.super Ljava/lang/Object;
.source "ServiceManagerListener.java"


# virtual methods
.method public abstract onServiceServerAdded(Lorg/ros/internal/node/service/DefaultServiceServer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract onServiceServerRemoved(Lorg/ros/internal/node/service/DefaultServiceServer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "**>;)V"
        }
    .end annotation
.end method
