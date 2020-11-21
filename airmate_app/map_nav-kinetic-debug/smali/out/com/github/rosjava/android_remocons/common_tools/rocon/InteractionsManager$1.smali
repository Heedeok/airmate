.class Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$1;
.super Landroid/os/AsyncTask;
.source "InteractionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->getAppsForRole(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    .line 160
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 160
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .line 163
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->access$000(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)V

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method
