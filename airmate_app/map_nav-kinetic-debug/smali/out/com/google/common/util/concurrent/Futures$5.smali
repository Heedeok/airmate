.class final Lcom/google/common/util/concurrent/Futures$5;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/common/util/concurrent/FutureCallback;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .registers 3

    .line 761
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$5;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 768
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_b} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_13
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_24

    .line 773
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catch_c
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 771
    .end local v0    # "e":Ljava/lang/Error;
    :catch_13
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_24

    .line 769
    :catch_1a
    move-exception v0

    .line 770
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 775
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_24
    nop

    .line 776
    :goto_25
    return-void
.end method
