.class Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;
.super Ljava/lang/Object;
.source "MapPosePublisherLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

.field final synthetic val$view:Lorg/ros/android/view/visualization/VisualizationView;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;Lorg/ros/android/view/visualization/VisualizationView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    .line 134
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    iput-object p2, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/VisualizationView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;

    invoke-direct {v3, p0}, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, v0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->gestureDetector:Landroid/view/GestureDetector;

    move-object v0, v1

    .line 146
    .local v0, "unused":Landroid/view/GestureDetector;
    return-void
.end method
