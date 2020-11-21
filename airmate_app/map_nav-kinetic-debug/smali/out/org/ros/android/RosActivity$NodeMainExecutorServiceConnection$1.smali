.class Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection$1;
.super Ljava/lang/Object;
.source "RosActivity.java"

# interfaces
.implements Lorg/ros/android/NodeMainExecutorServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;


# direct methods
.method constructor <init>(Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;)V
    .registers 2
    .param p1, "this$1"    # Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

    .line 120
    iput-object p1, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection$1;->this$1:Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutdown(Lorg/ros/android/NodeMainExecutorService;)V
    .registers 3
    .param p1, "nodeMainExecutorService"    # Lorg/ros/android/NodeMainExecutorService;

    .line 125
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection$1;->this$1:Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

    iget-object v0, v0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    invoke-virtual {v0}, Lorg/ros/android/RosActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 126
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection$1;->this$1:Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

    iget-object v0, v0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    invoke-virtual {v0}, Lorg/ros/android/RosActivity;->finish()V

    .line 128
    :cond_11
    return-void
.end method
