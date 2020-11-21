.class Lorg/ros/android/NodeMainExecutorService$3;
.super Landroid/os/AsyncTask;
.source "NodeMainExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/NodeMainExecutorService;->startMaster(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/NodeMainExecutorService;


# direct methods
.method constructor <init>(Lorg/ros/android/NodeMainExecutorService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/NodeMainExecutorService;

    .line 269
    iput-object p1, p0, Lorg/ros/android/NodeMainExecutorService$3;->this$0:Lorg/ros/android/NodeMainExecutorService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 269
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/ros/android/NodeMainExecutorService$3;->doInBackground([Ljava/lang/Boolean;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/Boolean;)Ljava/net/URI;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Boolean;

    .line 272
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService$3;->this$0:Lorg/ros/android/NodeMainExecutorService;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/ros/android/NodeMainExecutorService;->access$000(Lorg/ros/android/NodeMainExecutorService;Z)V

    .line 273
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService$3;->this$0:Lorg/ros/android/NodeMainExecutorService;

    invoke-virtual {v0}, Lorg/ros/android/NodeMainExecutorService;->getMasterUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
