.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$7$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;)V
    .registers 2
    .param p1, "this$1"    # Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;

    .line 256
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "itemIndex"    # I

    .line 258
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;

    iget-object v1, v1, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;->val$list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lworld_canvas_msgs/MapListEntry;

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->loadMap(Lworld_canvas_msgs/MapListEntry;)V

    .line 259
    return-void
.end method
