.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeShowWaitingDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

.field final synthetic val$message:Ljava/lang/CharSequence;

.field final synthetic val$title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    .line 320
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$10;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    iput-object p2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$10;->val$title:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$10;->val$message:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$10;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$10;->val$title:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$10;->val$message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->showWaitingDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 323
    return-void
.end method
