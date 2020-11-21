.class Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 169
    :try_start_9
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->runOneIteration()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_1d
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 180
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_1b
    move-exception v0

    goto :goto_3c

    .line 170
    :catch_1d
    move-exception v0

    .line 172
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1e
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 176
    goto :goto_32

    .line 173
    :catch_26
    move-exception v1

    .line 174
    .local v1, "ignored":Ljava/lang/Exception;
    :try_start_27
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractScheduledService;->access$200()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .end local v1    # "ignored":Ljava/lang/Exception;
    :goto_32
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyFailed(Ljava/lang/Throwable;)V

    .line 178
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_1b

    .line 180
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3c
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
