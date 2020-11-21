.class Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;
.super Ljava/lang/Object;
.source "PosePublisherLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

.field final synthetic val$view:Lorg/ros/android/view/visualization/VisualizationView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;Lorg/ros/android/view/visualization/VisualizationView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

    .line 101
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

    iput-object p2, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 104
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    .line 105
    invoke-virtual {v2}, Lorg/ros/android/view/visualization/VisualizationView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1$1;

    invoke-direct {v3, p0}, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1$1;-><init>(Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 104
    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->access$002(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    .line 115
    return-void
.end method
