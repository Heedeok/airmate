.class public Lorg/ros/node/topic/DefaultPublisherListener;
.super Ljava/lang/Object;
.source "DefaultPublisherListener.java"

# interfaces
.implements Lorg/ros/node/topic/PublisherListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ros/node/topic/PublisherListener<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMasterRegistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    check-cast p1, Lorg/ros/node/topic/Publisher;

    invoke-virtual {p0, p1}, Lorg/ros/node/topic/DefaultPublisherListener;->onMasterRegistrationFailure(Lorg/ros/node/topic/Publisher;)V

    return-void
.end method

.method public onMasterRegistrationFailure(Lorg/ros/node/topic/Publisher;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    return-void
.end method

.method public bridge synthetic onMasterRegistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    check-cast p1, Lorg/ros/node/topic/Publisher;

    invoke-virtual {p0, p1}, Lorg/ros/node/topic/DefaultPublisherListener;->onMasterRegistrationSuccess(Lorg/ros/node/topic/Publisher;)V

    return-void
.end method

.method public onMasterRegistrationSuccess(Lorg/ros/node/topic/Publisher;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    check-cast p1, Lorg/ros/node/topic/Publisher;

    invoke-virtual {p0, p1}, Lorg/ros/node/topic/DefaultPublisherListener;->onMasterUnregistrationFailure(Lorg/ros/node/topic/Publisher;)V

    return-void
.end method

.method public onMasterUnregistrationFailure(Lorg/ros/node/topic/Publisher;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 26
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    check-cast p1, Lorg/ros/node/topic/Publisher;

    invoke-virtual {p0, p1}, Lorg/ros/node/topic/DefaultPublisherListener;->onMasterUnregistrationSuccess(Lorg/ros/node/topic/Publisher;)V

    return-void
.end method

.method public onMasterUnregistrationSuccess(Lorg/ros/node/topic/Publisher;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    return-void
.end method

.method public onNewSubscriber(Lorg/ros/node/topic/Publisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V
    .registers 3
    .param p2, "subscriberIdentifier"    # Lorg/ros/internal/node/topic/SubscriberIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;",
            "Lorg/ros/internal/node/topic/SubscriberIdentifier;",
            ")V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    return-void
.end method

.method public onShutdown(Lorg/ros/node/topic/Publisher;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/ros/node/topic/DefaultPublisherListener;, "Lorg/ros/node/topic/DefaultPublisherListener<TT;>;"
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    return-void
.end method
