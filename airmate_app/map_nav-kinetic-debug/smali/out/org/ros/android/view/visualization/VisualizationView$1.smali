.class Lorg/ros/android/view/visualization/VisualizationView$1;
.super Ljava/lang/Object;
.source "VisualizationView.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/VisualizationView;->startTransformListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Ltf2_msgs/TFMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/visualization/VisualizationView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/VisualizationView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/visualization/VisualizationView;

    .line 139
    iput-object p1, p0, Lorg/ros/android/view/visualization/VisualizationView$1;->this$0:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 139
    check-cast p1, Ltf2_msgs/TFMessage;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/visualization/VisualizationView$1;->onNewMessage(Ltf2_msgs/TFMessage;)V

    return-void
.end method

.method public onNewMessage(Ltf2_msgs/TFMessage;)V
    .registers 6
    .param p1, "message"    # Ltf2_msgs/TFMessage;

    .line 142
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView$1;->this$0:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-static {v0}, Lorg/ros/android/view/visualization/VisualizationView;->access$000(Lorg/ros/android/view/visualization/VisualizationView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 143
    :try_start_7
    invoke-interface {p1}, Ltf2_msgs/TFMessage;->getTransforms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeometry_msgs/TransformStamped;

    .line 144
    .local v2, "transform":Lgeometry_msgs/TransformStamped;
    iget-object v3, p0, Lorg/ros/android/view/visualization/VisualizationView$1;->this$0:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-static {v3}, Lorg/ros/android/view/visualization/VisualizationView;->access$100(Lorg/ros/android/view/visualization/VisualizationView;)Lorg/ros/rosjava_geometry/FrameTransformTree;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/ros/rosjava_geometry/FrameTransformTree;->update(Lgeometry_msgs/TransformStamped;)V

    .line 145
    .end local v2    # "transform":Lgeometry_msgs/TransformStamped;
    goto :goto_f

    .line 146
    :cond_25
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1
.end method
