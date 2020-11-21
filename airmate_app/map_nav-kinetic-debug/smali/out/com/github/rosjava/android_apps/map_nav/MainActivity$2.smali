.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 114
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-virtual {v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->onBackPressed()V

    .line 117
    return-void
.end method
