.class public interface abstract Lorg/ros/node/topic/PublisherListener;
.super Ljava/lang/Object;
.source "PublisherListener.java"

# interfaces
.implements Lorg/ros/internal/node/RegistrantListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/RegistrantListener<",
        "Lorg/ros/node/topic/Publisher<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract onNewSubscriber(Lorg/ros/node/topic/Publisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;",
            "Lorg/ros/internal/node/topic/SubscriberIdentifier;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onShutdown(Lorg/ros/node/topic/Publisher;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation
.end method
