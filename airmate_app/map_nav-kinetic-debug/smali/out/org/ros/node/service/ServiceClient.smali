.class public interface abstract Lorg/ros/node/service/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


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
.method public abstract call(Ljava/lang/Object;Lorg/ros/node/service/ServiceResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "TS;>;)V"
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/URI;)V
.end method

.method public abstract getName()Lorg/ros/namespace/GraphName;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract newMessage()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
