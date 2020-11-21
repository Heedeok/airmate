.class public Lorg/ros/node/topic/CountDownPublisherListener;
.super Lorg/ros/internal/node/CountDownRegistrantListener;
.source "CountDownPublisherListener.java"

# interfaces
.implements Lorg/ros/node/topic/PublisherListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/internal/node/CountDownRegistrantListener<",
        "Lorg/ros/node/topic/Publisher<",
        "TT;>;>;",
        "Lorg/ros/node/topic/PublisherListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final newSubscriberLatch:Ljava/util/concurrent/CountDownLatch;

.field private final shutdownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .registers 8
    .param p1, "masterRegistrationSuccessLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "masterRegistrationFailureLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "masterUnregistrationSuccessLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p4, "masterUnregistrationFailureLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p5, "newSubscriberLatch"    # Ljava/util/concurrent/CountDownLatch;

    .line 68
    .local p0, "this":Lorg/ros/node/topic/CountDownPublisherListener;, "Lorg/ros/node/topic/CountDownPublisherListener<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ros/internal/node/CountDownRegistrantListener;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    .line 70
    iput-object p5, p0, Lorg/ros/node/topic/CountDownPublisherListener;->newSubscriberLatch:Ljava/util/concurrent/CountDownLatch;

    .line 71
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/ros/node/topic/CountDownPublisherListener;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 72
    return-void
.end method

.method public static newDefault()Lorg/ros/node/topic/CountDownPublisherListener;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/ros/node/topic/CountDownPublisherListener<",
            "TT;>;"
        }
    .end annotation

    .line 39
    const/4 v0, 0x1

    invoke-static {v0, v0, v0, v0, v0}, Lorg/ros/node/topic/CountDownPublisherListener;->newFromCounts(IIIII)Lorg/ros/node/topic/CountDownPublisherListener;

    move-result-object v0

    return-object v0
.end method

.method public static newFromCounts(IIIII)Lorg/ros/node/topic/CountDownPublisherListener;
    .registers 12
    .param p0, "masterRegistrationSuccessCount"    # I
    .param p1, "masterRegistrationFailureCount"    # I
    .param p2, "masterUnregistrationSuccessCount"    # I
    .param p3, "masterUnregistrationFailureCount"    # I
    .param p4, "newSubscriberCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IIIII)",
            "Lorg/ros/node/topic/CountDownPublisherListener<",
            "TT;>;"
        }
    .end annotation

    .line 57
    new-instance v6, Lorg/ros/node/topic/CountDownPublisherListener;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, p4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/ros/node/topic/CountDownPublisherListener;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    return-object v6
.end method


# virtual methods
.method public awaitNewSubscriber()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/ros/node/topic/CountDownPublisherListener;, "Lorg/ros/node/topic/CountDownPublisherListener<TT;>;"
    iget-object v0, p0, Lorg/ros/node/topic/CountDownPublisherListener;->newSubscriberLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 91
    return-void
.end method

.method public awaitNewSubscriber(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/ros/node/topic/CountDownPublisherListener;, "Lorg/ros/node/topic/CountDownPublisherListener<TT;>;"
    iget-object v0, p0, Lorg/ros/node/topic/CountDownPublisherListener;->newSubscriberLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public awaitShutdown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/ros/node/topic/CountDownPublisherListener;, "Lorg/ros/node/topic/CountDownPublisherListener<TT;>;"
    iget-object v0, p0, Lorg/ros/node/topic/CountDownPublisherListener;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 116
    return-void
.end method

.method public awaitShutdown(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/ros/node/topic/CountDownPublisherListener;, "Lorg/ros/node/topic/CountDownPublisherListener<TT;>;"
    iget-object v0, p0, Lorg/ros/node/topic/CountDownPublisherListener;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public onNewSubscriber(Lorg/ros/node/topic/Publisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V
    .registers 4
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

    .line 76
    .local p0, "this":Lorg/ros/node/topic/CountDownPublisherListener;, "Lorg/ros/node/topic/CountDownPublisherListener<TT;>;"
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    iget-object v0, p0, Lorg/ros/node/topic/CountDownPublisherListener;->newSubscriberLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    return-void
.end method

.method public onShutdown(Lorg/ros/node/topic/Publisher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/ros/node/topic/CountDownPublisherListener;, "Lorg/ros/node/topic/CountDownPublisherListener<TT;>;"
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    iget-object v0, p0, Lorg/ros/node/topic/CountDownPublisherListener;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 82
    return-void
.end method
