.class public interface abstract Lorg/ros/node/topic/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"

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


# static fields
.field public static final TOPIC_MESSAGE_TYPE_WILDCARD:Ljava/lang/String; = "*"


# virtual methods
.method public abstract addMessageListener(Lorg/ros/message/MessageListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract addMessageListener(Lorg/ros/message/MessageListener;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public abstract addSubscriberListener(Lorg/ros/node/topic/SubscriberListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/SubscriberListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract getLatchMode()Z
.end method

.method public abstract removeAllMessageListeners()V
.end method

.method public abstract removeMessageListener(Lorg/ros/message/MessageListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method

.method public abstract shutdown(JLjava/util/concurrent/TimeUnit;)V
.end method
