.class public interface abstract Lorg/ros/internal/node/topic/TopicParticipantManagerListener;
.super Ljava/lang/Object;
.source "TopicParticipantManagerListener.java"


# virtual methods
.method public abstract onPublisherAdded(Lorg/ros/internal/node/topic/DefaultPublisher;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onPublisherRemoved(Lorg/ros/internal/node/topic/DefaultPublisher;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onSubscriberAdded(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onSubscriberRemoved(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;)V"
        }
    .end annotation
.end method
