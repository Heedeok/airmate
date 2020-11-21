.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeDismissWaitingDialog()V
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

    .line 329
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$11;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$11;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-virtual {v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->dismissWaitingDialog()V

    .line 332
    return-void
.end method
