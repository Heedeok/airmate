.class Lorg/ros/android/MasterChooser$4;
.super Ljava/lang/Object;
.source "MasterChooser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/MasterChooser;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/MasterChooser;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/ros/android/MasterChooser;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/android/MasterChooser;

    .line 323
    iput-object p1, p0, Lorg/ros/android/MasterChooser$4;->this$0:Lorg/ros/android/MasterChooser;

    iput-object p2, p0, Lorg/ros/android/MasterChooser$4;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 326
    iget-object v0, p0, Lorg/ros/android/MasterChooser$4;->this$0:Lorg/ros/android/MasterChooser;

    iget-object v1, p0, Lorg/ros/android/MasterChooser$4;->val$text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 327
    return-void
.end method
