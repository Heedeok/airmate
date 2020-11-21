.class public interface abstract Lorg/ros/node/topic/SubscriberListener;
.super Ljava/lang/Object;
.source "SubscriberListener.java"

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
        "Lorg/ros/node/topic/Subscriber<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract onNewPublisher(Lorg/ros/node/topic/Subscriber;Lorg/ros/internal/node/topic/PublisherIdentifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onShutdown(Lorg/ros/node/topic/Subscriber;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation
.end method
