.class Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1$1;
.super Ljava/lang/Object;
.source "RosAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;

    .line 283
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1$1;->this$1:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 286
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1$1;->this$1:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;

    iget-object v0, v0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;->this$0:Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->finish()V

    .line 287
    return-void
.end method
