.class Lorg/ros/concurrent/RetryingExecutorService$RetryLoop$1;
.super Ljava/lang/Object;
.source "RetryingExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->loop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;

.field final synthetic val$finalCallable:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;Ljava/util/concurrent/Callable;)V
    .registers 3
    .param p1, "this$1"    # Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;

    .line 84
    iput-object p1, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop$1;->this$1:Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;

    iput-object p2, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop$1;->val$finalCallable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 87
    iget-object v0, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop$1;->this$1:Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;

    iget-object v0, v0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop;->this$0:Lorg/ros/concurrent/RetryingExecutorService;

    iget-object v1, p0, Lorg/ros/concurrent/RetryingExecutorService$RetryLoop$1;->val$finalCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Lorg/ros/concurrent/RetryingExecutorService;->submit(Ljava/util/concurrent/Callable;)V

    .line 88
    return-void
.end method
