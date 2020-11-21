.class Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$2;
.super Landroid/os/AsyncTask;
.source "RosAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->startMasterChooser()V
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
.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;

    .line 300
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$2;->this$0:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 300
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 303
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$2;->this$0:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$2;->this$0:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->access$000(Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;)Lorg/ros/android/NodeMainExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->init(Lorg/ros/node/NodeMainExecutor;)V

    .line 304
    const/4 v0, 0x0

    return-object v0
.end method
