.class public Lorg/ros/concurrent/Holder;
.super Ljava/lang/Object;
.source "Holder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 49
    .local p0, "this":Lorg/ros/concurrent/Holder;, "Lorg/ros/concurrent/Holder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/ros/concurrent/Holder;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/concurrent/Holder;->value:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public static newEmpty()Lorg/ros/concurrent/Holder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/ros/concurrent/Holder<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/ros/concurrent/Holder;

    invoke-direct {v0}, Lorg/ros/concurrent/Holder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public await()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/ros/concurrent/Holder;, "Lorg/ros/concurrent/Holder<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/Holder;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 68
    return-void
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/ros/concurrent/Holder;, "Lorg/ros/concurrent/Holder<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/Holder;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lorg/ros/concurrent/Holder;, "Lorg/ros/concurrent/Holder<TT;>;"
    if-ne p0, p1, :cond_4

    .line 77
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/ros/concurrent/Holder;, "Lorg/ros/concurrent/Holder<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/Holder;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/ros/concurrent/Holder;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/ros/concurrent/Holder;, "Lorg/ros/concurrent/Holder<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/concurrent/Holder;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 56
    iput-object p1, p0, Lorg/ros/concurrent/Holder;->value:Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/ros/concurrent/Holder;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 58
    return-object p1
.end method
