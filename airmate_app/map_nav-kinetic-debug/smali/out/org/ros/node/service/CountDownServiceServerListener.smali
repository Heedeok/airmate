.class public Lorg/ros/node/service/CountDownServiceServerListener;
.super Lorg/ros/internal/node/CountDownRegistrantListener;
.source "CountDownServiceServerListener.java"

# interfaces
.implements Lorg/ros/node/service/ServiceServerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/internal/node/CountDownRegistrantListener<",
        "Lorg/ros/node/service/ServiceServer<",
        "TT;TS;>;>;",
        "Lorg/ros/node/service/ServiceServerListener<",
        "TT;TS;>;"
    }
.end annotation


# instance fields
.field private final shutdownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7
    .param p1, "masterRegistrationSuccessLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "masterRegistrationFailureLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "masterUnregistrationSuccessLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p4, "masterUnregistrationFailureLatch"    # Ljava/util/concurrent/CountDownLatch;

    .line 66
    .local p0, "this":Lorg/ros/node/service/CountDownServiceServerListener;, "Lorg/ros/node/service/CountDownServiceServerListener<TT;TS;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ros/internal/node/CountDownRegistrantListener;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    .line 68
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/ros/node/service/CountDownServiceServerListener;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 69
    return-void
.end method

.method public static newDefault()Lorg/ros/node/service/CountDownServiceServerListener;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/ros/node/service/CountDownServiceServerListener<",
            "TT;TS;>;"
        }
    .end annotation

    .line 40
    const/4 v0, 0x1

    invoke-static {v0, v0, v0, v0}, Lorg/ros/node/service/CountDownServiceServerListener;->newFromCounts(IIII)Lorg/ros/node/service/CountDownServiceServerListener;

    move-result-object v0

    return-object v0
.end method

.method public static newFromCounts(IIII)Lorg/ros/node/service/CountDownServiceServerListener;
    .registers 9
    .param p0, "masterRegistrationSuccessCount"    # I
    .param p1, "masterRegistrationFailureCount"    # I
    .param p2, "masterUnregistrationSuccessCount"    # I
    .param p3, "masterUnregistrationFailureCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(IIII)",
            "Lorg/ros/node/service/CountDownServiceServerListener<",
            "TT;TS;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/ros/node/service/CountDownServiceServerListener;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ros/node/service/CountDownServiceServerListener;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method


# virtual methods
.method public awaitShutdown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/ros/node/service/CountDownServiceServerListener;, "Lorg/ros/node/service/CountDownServiceServerListener<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/node/service/CountDownServiceServerListener;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 83
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

    .line 97
    .local p0, "this":Lorg/ros/node/service/CountDownServiceServerListener;, "Lorg/ros/node/service/CountDownServiceServerListener<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/node/service/CountDownServiceServerListener;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public onShutdown(Lorg/ros/node/service/ServiceServer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/ros/node/service/CountDownServiceServerListener;, "Lorg/ros/node/service/CountDownServiceServerListener<TT;TS;>;"
    .local p1, "server":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/node/service/CountDownServiceServerListener;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    return-void
.end method
