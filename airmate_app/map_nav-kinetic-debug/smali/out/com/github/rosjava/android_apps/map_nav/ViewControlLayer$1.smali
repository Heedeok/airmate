.class Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$1;
.super Ljava/lang/Object;
.source "ViewControlLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lorg/ros/android/view/RosImageView;Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    .line 54
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    invoke-virtual {v0}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->swapViews()V

    .line 57
    return-void
.end method
