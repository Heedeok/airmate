.class public Lorg/ros/node/topic/DefaultSubscriberListener;
.super Ljava/lang/Object;
.source "DefaultSubscriberListener.java"

# interfaces
.implements Lorg/ros/node/topic/SubscriberListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ros/node/topic/SubscriberListener<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMasterRegistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    check-cast p1, Lorg/ros/node/topic/Subscriber;

    invoke-virtual {p0, p1}, Lorg/ros/node/topic/DefaultSubscriberListener;->onMasterRegistrationFailure(Lorg/ros/node/topic/Subscriber;)V

    return-void
.end method

.method public onMasterRegistrationFailure(Lorg/ros/node/topic/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    .local p1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    return-void
.end method

.method public bridge synthetic onMasterRegistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    check-cast p1, Lorg/ros/node/topic/Subscriber;

    invoke-virtual {p0, p1}, Lorg/ros/node/topic/DefaultSubscriberListener;->onMasterRegistrationSuccess(Lorg/ros/node/topic/Subscriber;)V

    return-void
.end method

.method public onMasterRegistrationSuccess(Lorg/ros/node/topic/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    .local p1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    check-cast p1, Lorg/ros/node/topic/Subscriber;

    invoke-virtual {p0, p1}, Lorg/ros/node/topic/DefaultSubscriberListener;->onMasterUnregistrationFailure(Lorg/ros/node/topic/Subscriber;)V

    return-void
.end method

.method public onMasterUnregistrationFailure(Lorg/ros/node/topic/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    .local p1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    check-cast p1, Lorg/ros/node/topic/Subscriber;

    invoke-virtual {p0, p1}, Lorg/ros/node/topic/DefaultSubscriberListener;->onMasterUnregistrationSuccess(Lorg/ros/node/topic/Subscriber;)V

    return-void
.end method

.method public onMasterUnregistrationSuccess(Lorg/ros/node/topic/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    .local p1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    return-void
.end method

.method public onNewPublisher(Lorg/ros/node/topic/Subscriber;Lorg/ros/internal/node/topic/PublisherIdentifier;)V
    .registers 3
    .param p2, "publisherIdentifier"    # Lorg/ros/internal/node/topic/PublisherIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ")V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    .local p1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    return-void
.end method

.method public onShutdown(Lorg/ros/node/topic/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/ros/node/topic/DefaultSubscriberListener;, "Lorg/ros/node/topic/DefaultSubscriberListener<TT;>;"
    .local p1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    return-void
.end method
