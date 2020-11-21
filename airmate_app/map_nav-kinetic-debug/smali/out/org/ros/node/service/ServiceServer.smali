.class public interface abstract Lorg/ros/node/service/ServiceServer;
.super Ljava/lang/Object;
.source "ServiceServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lorg/ros/node/service/ServiceServerListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServerListener<",
            "TT;TS;>;)V"
        }
    .end annotation
.end method

.method public abstract getName()Lorg/ros/namespace/GraphName;
.end method

.method public abstract getUri()Ljava/net/URI;
.end method

.method public abstract shutdown()V
.end method
