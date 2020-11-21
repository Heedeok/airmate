.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

.field final synthetic val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 3

    .line 535
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;, "Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture.1;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 542
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;, "Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture.1;"
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->set(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_c} :catch_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_c} :catch_14
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 554
    :goto_c
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->access$102(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 555
    goto :goto_1f

    .line 554
    :catchall_12
    move-exception v1

    goto :goto_2d

    .line 549
    :catch_14
    move-exception v1

    .line 551
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_15
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z

    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_c

    .line 556
    :goto_1f
    return-void

    .line 543
    :catch_20
    move-exception v1

    .line 547
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Z)Z
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_12

    .line 554
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v2, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->access$102(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :goto_2d
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v2, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->access$102(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    throw v1
.end method
