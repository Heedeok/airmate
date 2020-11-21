.class Lorg/ros/android/MasterChooser$2;
.super Ljava/lang/Object;
.source "MasterChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/MasterChooser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/MasterChooser;


# direct methods
.method constructor <init>(Lorg/ros/android/MasterChooser;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/MasterChooser;

    .line 202
    iput-object p1, p0, Lorg/ros/android/MasterChooser$2;->this$0:Lorg/ros/android/MasterChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 205
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/ros/android/MasterChooser$2;->this$0:Lorg/ros/android/MasterChooser;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/android/MasterChooser;->access$202(Lorg/ros/android/MasterChooser;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lorg/ros/android/MasterChooser$2;->this$0:Lorg/ros/android/MasterChooser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/android/MasterChooser$2;->this$0:Lorg/ros/android/MasterChooser;

    invoke-static {v2}, Lorg/ros/android/MasterChooser;->access$200(Lorg/ros/android/MasterChooser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/android/MasterChooser;->toast(Ljava/lang/String;)V

    .line 207
    return-void
.end method
