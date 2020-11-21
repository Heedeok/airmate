.class Lorg/ros/android/NodeMainExecutorService$2;
.super Ljava/lang/Object;
.source "NodeMainExecutorService.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/NodeMainExecutorService;->signalOnShutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "Lorg/ros/android/NodeMainExecutorServiceListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/NodeMainExecutorService;


# direct methods
.method constructor <init>(Lorg/ros/android/NodeMainExecutorService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/NodeMainExecutorService;

    .line 189
    iput-object p1, p0, Lorg/ros/android/NodeMainExecutorService$2;->this$0:Lorg/ros/android/NodeMainExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 189
    check-cast p1, Lorg/ros/android/NodeMainExecutorServiceListener;

    invoke-virtual {p0, p1}, Lorg/ros/android/NodeMainExecutorService$2;->run(Lorg/ros/android/NodeMainExecutorServiceListener;)V

    return-void
.end method

.method public run(Lorg/ros/android/NodeMainExecutorServiceListener;)V
    .registers 3
    .param p1, "nodeMainExecutorServiceListener"    # Lorg/ros/android/NodeMainExecutorServiceListener;

    .line 192
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService$2;->this$0:Lorg/ros/android/NodeMainExecutorService;

    invoke-interface {p1, v0}, Lorg/ros/android/NodeMainExecutorServiceListener;->onShutdown(Lorg/ros/android/NodeMainExecutorService;)V

    .line 193
    return-void
.end method
