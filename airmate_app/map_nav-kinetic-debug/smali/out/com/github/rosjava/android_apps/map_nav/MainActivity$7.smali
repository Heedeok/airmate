.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity;->showMapListDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

.field final synthetic val$availableMapNames:[Ljava/lang/CharSequence;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;[Ljava/lang/CharSequence;Ljava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    .line 252
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    iput-object p2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->val$availableMapNames:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Choose a map"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 256
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->val$availableMapNames:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7$1;

    invoke-direct {v2, p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->chooseMapDialog:Landroid/app/AlertDialog;

    move-object v1, v2

    .line 262
    .local v1, "unused":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->chooseMapDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 263
    return-void
.end method
