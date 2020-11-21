.class public Lorg/ros/internal/node/CountDownRegistrantListener;
.super Ljava/lang/Object;
.source "CountDownRegistrantListener.java"

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
        "TT;>;"
    }
.end annotation


# instance fields
.field private final masterRegistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

.field private final masterRegistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;

.field private final masterUnregistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

.field private final masterUnregistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0, v0}, Lorg/ros/internal/node/CountDownRegistrantListener;-><init>(IIII)V

    .line 39
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 9
    .param p1, "masterRegistrationSuccessCount"    # I
    .param p2, "masterRegistrationFailureCount"    # I
    .param p3, "masterUnregistrationSuccessCount"    # I
    .param p4, "masterUnregistrationFailureCount"    # I

    .line 54
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, p4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/ros/internal/node/CountDownRegistrantListener;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5
    .param p1, "masterRegistrationSuccessLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "masterRegistrationFailureLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "masterUnregistrationSuccessLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p4, "masterUnregistrationFailureLatch"    # Ljava/util/concurrent/CountDownLatch;

    .line 62
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterRegistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 64
    iput-object p2, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterRegistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

    .line 65
    iput-object p3, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterUnregistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 66
    iput-object p4, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterUnregistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

    .line 67
    return-void
.end method


# virtual methods
.method public awaitMasterRegistrationFailure()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterRegistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 148
    return-void
.end method

.method public awaitMasterRegistrationFailure(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterRegistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public awaitMasterRegistrationSuccess()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterRegistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 96
    return-void
.end method

.method public awaitMasterRegistrationSuccess(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterRegistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public awaitMasterUnregistrationFailure()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterUnregistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 174
    return-void
.end method

.method public awaitMasterUnregistrationFailure(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterUnregistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public awaitMasterUnregistrationSuccess()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterUnregistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 122
    return-void
.end method

.method public awaitMasterUnregistrationSuccess(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterUnregistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public onMasterRegistrationFailure(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    .local p1, "registrant":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterRegistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    return-void
.end method

.method public onMasterRegistrationSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    .local p1, "registrant":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterRegistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 72
    return-void
.end method

.method public onMasterUnregistrationFailure(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    .local p1, "registrant":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterUnregistrationFailureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 87
    return-void
.end method

.method public onMasterUnregistrationSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/ros/internal/node/CountDownRegistrantListener;, "Lorg/ros/internal/node/CountDownRegistrantListener<TT;>;"
    .local p1, "registrant":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/internal/node/CountDownRegistrantListener;->masterUnregistrationSuccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 82
    return-void
.end method
