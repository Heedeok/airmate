.class public interface abstract Lorg/ros/node/service/ServiceServerListener;
.super Ljava/lang/Object;
.source "ServiceServerListener.java"

# interfaces
.implements Lorg/ros/internal/node/RegistrantListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/RegistrantListener<",
        "Lorg/ros/node/service/ServiceServer<",
        "TT;TS;>;>;"
    }
.end annotation


# virtual methods
.method public abstract onShutdown(Lorg/ros/node/service/ServiceServer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;)V"
        }
    .end annotation
.end method
