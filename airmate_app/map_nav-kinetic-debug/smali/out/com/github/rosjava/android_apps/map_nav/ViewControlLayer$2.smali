.class Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;
.super Ljava/lang/Object;
.source "ViewControlLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

.field final synthetic val$view:Lorg/ros/android/view/visualization/VisualizationView;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;Lorg/ros/android/view/visualization/VisualizationView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    .line 123
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    iput-object p2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 125
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->context:Landroid/content/Context;

    new-instance v3, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;

    invoke-direct {v3, p0}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->translateGestureDetector:Landroid/view/GestureDetector;

    move-object v0, v1

    .line 139
    .local v0, "unused":Landroid/view/GestureDetector;
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    new-instance v2, Lorg/ros/android/view/visualization/RotateGestureDetector;

    new-instance v3, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;

    invoke-direct {v3, p0}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;-><init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;)V

    invoke-direct {v2, v3}, Lorg/ros/android/view/visualization/RotateGestureDetector;-><init>(Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;)V

    iput-object v2, v1, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->rotateGestureDetector:Lorg/ros/android/view/visualization/RotateGestureDetector;

    move-object v1, v2

    .line 158
    .local v1, "unused2":Lorg/ros/android/view/visualization/RotateGestureDetector;
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    new-instance v3, Landroid/view/ScaleGestureDetector;

    iget-object v4, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    iget-object v4, v4, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->context:Landroid/content/Context;

    new-instance v5, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;

    invoke-direct {v5, p0}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;-><init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;)V

    invoke-direct {v3, v4, v5}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, v2, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->zoomGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object v2, v3

    .line 175
    .local v2, "unused3":Landroid/view/ScaleGestureDetector;
    return-void
.end method
