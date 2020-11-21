.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeDismissChooseMapDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    .line 294
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$9;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$9;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->chooseMapDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    .line 297
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$9;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->chooseMapDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 298
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$9;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->chooseMapDialog:Landroid/app/AlertDialog;

    .line 300
    :cond_12
    return-void
.end method
