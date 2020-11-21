.class Lorg/ros/android/view/VirtualJoystickView$2$1;
.super Ljava/lang/Object;
.source "VirtualJoystickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/VirtualJoystickView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/android/view/VirtualJoystickView$2;


# direct methods
.method constructor <init>(Lorg/ros/android/view/VirtualJoystickView$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/ros/android/view/VirtualJoystickView$2;

    .line 740
    iput-object p1, p0, Lorg/ros/android/view/VirtualJoystickView$2$1;->this$1:Lorg/ros/android/view/VirtualJoystickView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 743
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView$2$1;->this$1:Lorg/ros/android/view/VirtualJoystickView$2;

    iget-object v0, v0, Lorg/ros/android/view/VirtualJoystickView$2;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-static {v0}, Lorg/ros/android/view/VirtualJoystickView;->access$100(Lorg/ros/android/view/VirtualJoystickView;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 744
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView$2$1;->this$1:Lorg/ros/android/view/VirtualJoystickView$2;

    iget-object v0, v0, Lorg/ros/android/view/VirtualJoystickView$2;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-static {v0}, Lorg/ros/android/view/VirtualJoystickView;->access$200(Lorg/ros/android/view/VirtualJoystickView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 745
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView$2$1;->this$1:Lorg/ros/android/view/VirtualJoystickView$2;

    iget-object v0, v0, Lorg/ros/android/view/VirtualJoystickView$2;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-static {v0}, Lorg/ros/android/view/VirtualJoystickView;->access$300(Lorg/ros/android/view/VirtualJoystickView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 746
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView$2$1;->this$1:Lorg/ros/android/view/VirtualJoystickView$2;

    iget-object v0, v0, Lorg/ros/android/view/VirtualJoystickView$2;->this$0:Lorg/ros/android/view/VirtualJoystickView;

    invoke-static {v0}, Lorg/ros/android/view/VirtualJoystickView;->access$400(Lorg/ros/android/view/VirtualJoystickView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 748
    :cond_30
    return-void
.end method
