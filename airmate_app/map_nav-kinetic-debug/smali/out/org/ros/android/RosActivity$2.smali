.class Lorg/ros/android/RosActivity$2;
.super Landroid/os/AsyncTask;
.source "RosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/RosActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/RosActivity;


# direct methods
.method constructor <init>(Lorg/ros/android/RosActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/RosActivity;

    .line 220
    iput-object p1, p0, Lorg/ros/android/RosActivity$2;->this$0:Lorg/ros/android/RosActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 220
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/ros/android/RosActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 223
    iget-object v0, p0, Lorg/ros/android/RosActivity$2;->this$0:Lorg/ros/android/RosActivity;

    iget-object v1, p0, Lorg/ros/android/RosActivity$2;->this$0:Lorg/ros/android/RosActivity;

    iget-object v1, v1, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    invoke-virtual {v0, v1}, Lorg/ros/android/RosActivity;->init(Lorg/ros/node/NodeMainExecutor;)V

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method
