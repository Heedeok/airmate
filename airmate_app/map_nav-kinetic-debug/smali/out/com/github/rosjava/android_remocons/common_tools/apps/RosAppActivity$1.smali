.class Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;
.super Ljava/lang/Object;
.source "RosAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->onAppTerminate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;

    .line 274
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "App Termination"

    .line 278
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "The application has terminated on the server, so the client is exiting."

    .line 279
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Exit"

    new-instance v2, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1$1;

    invoke-direct {v2, p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1$1;-><init>(Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;)V

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 289
    return-void
.end method
