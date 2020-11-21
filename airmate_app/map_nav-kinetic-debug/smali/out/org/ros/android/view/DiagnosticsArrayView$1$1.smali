.class Lorg/ros/android/view/DiagnosticsArrayView$1$1;
.super Ljava/lang/Object;
.source "DiagnosticsArrayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/DiagnosticsArrayView$1;->onNewMessage(Ldiagnostic_msgs/DiagnosticArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/android/view/DiagnosticsArrayView$1;

.field final synthetic val$diagnosticStatusMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/ros/android/view/DiagnosticsArrayView$1;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Lorg/ros/android/view/DiagnosticsArrayView$1;

    .line 100
    iput-object p1, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->this$1:Lorg/ros/android/view/DiagnosticsArrayView$1;

    iput-object p2, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->val$diagnosticStatusMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 103
    iget-object v0, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->this$1:Lorg/ros/android/view/DiagnosticsArrayView$1;

    iget-object v0, v0, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    invoke-virtual {v0}, Lorg/ros/android/view/DiagnosticsArrayView;->removeAllViews()V

    .line 104
    iget-object v0, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->val$diagnosticStatusMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldiagnostic_msgs/DiagnosticStatus;

    .line 105
    .local v1, "diagnosticStatusMessage":Ldiagnostic_msgs/DiagnosticStatus;
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->this$1:Lorg/ros/android/view/DiagnosticsArrayView$1;

    iget-object v3, v3, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    invoke-virtual {v3}, Lorg/ros/android/view/DiagnosticsArrayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, "button":Landroid/widget/Button;
    invoke-interface {v1}, Ldiagnostic_msgs/DiagnosticStatus;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-interface {v1}, Ldiagnostic_msgs/DiagnosticStatus;->getLevel()B

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_41

    .line 108
    iget-object v3, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->this$1:Lorg/ros/android/view/DiagnosticsArrayView$1;

    iget-object v3, v3, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    invoke-static {v3}, Lorg/ros/android/view/DiagnosticsArrayView;->access$000(Lorg/ros/android/view/DiagnosticsArrayView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_72

    .line 109
    :cond_41
    invoke-interface {v1}, Ldiagnostic_msgs/DiagnosticStatus;->getLevel()B

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_54

    .line 110
    iget-object v3, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->this$1:Lorg/ros/android/view/DiagnosticsArrayView$1;

    iget-object v3, v3, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    invoke-static {v3}, Lorg/ros/android/view/DiagnosticsArrayView;->access$100(Lorg/ros/android/view/DiagnosticsArrayView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_72

    .line 111
    :cond_54
    invoke-interface {v1}, Ldiagnostic_msgs/DiagnosticStatus;->getLevel()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_67

    .line 112
    iget-object v3, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->this$1:Lorg/ros/android/view/DiagnosticsArrayView$1;

    iget-object v3, v3, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    invoke-static {v3}, Lorg/ros/android/view/DiagnosticsArrayView;->access$200(Lorg/ros/android/view/DiagnosticsArrayView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_72

    .line 114
    :cond_67
    iget-object v3, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->this$1:Lorg/ros/android/view/DiagnosticsArrayView$1;

    iget-object v3, v3, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    invoke-static {v3}, Lorg/ros/android/view/DiagnosticsArrayView;->access$300(Lorg/ros/android/view/DiagnosticsArrayView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 116
    :goto_72
    iget-object v3, p0, Lorg/ros/android/view/DiagnosticsArrayView$1$1;->this$1:Lorg/ros/android/view/DiagnosticsArrayView$1;

    iget-object v3, v3, Lorg/ros/android/view/DiagnosticsArrayView$1;->this$0:Lorg/ros/android/view/DiagnosticsArrayView;

    invoke-virtual {v3, v2}, Lorg/ros/android/view/DiagnosticsArrayView;->addView(Landroid/view/View;)V

    .line 117
    .end local v1    # "diagnosticStatusMessage":Ldiagnostic_msgs/DiagnosticStatus;
    .end local v2    # "button":Landroid/widget/Button;
    goto :goto_d

    .line 118
    :cond_7a
    return-void
.end method
