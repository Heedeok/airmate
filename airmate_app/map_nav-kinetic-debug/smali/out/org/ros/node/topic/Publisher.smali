.class public interface abstract Lorg/ros/node/topic/Publisher;
.super Ljava/lang/Object;
.source "Publisher.java"

# interfaces
.implements Lorg/ros/internal/node/topic/TopicParticipant;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/topic/TopicParticipant;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lorg/ros/node/topic/PublisherListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/PublisherListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract getLatchMode()Z
.end method

.method public abstract getNumberOfSubscribers()I
.end method

.method public abstract hasSubscribers()Z
.end method

.method public abstract newMessage()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract publish(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract setLatchMode(Z)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract shutdown(JLjava/util/concurrent/TimeUnit;)V
.end method
