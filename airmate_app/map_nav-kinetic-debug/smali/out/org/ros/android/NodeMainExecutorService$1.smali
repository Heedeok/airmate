.class Lorg/ros/android/NodeMainExecutorService$1;
.super Ljava/lang/Object;
.source "NodeMainExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/NodeMainExecutorService;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/NodeMainExecutorService;


# direct methods
.method constructor <init>(Lorg/ros/android/NodeMainExecutorService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/NodeMainExecutorService;

    .line 150
    iput-object p1, p0, Lorg/ros/android/NodeMainExecutorService$1;->this$0:Lorg/ros/android/NodeMainExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/ros/android/NodeMainExecutorService$1;->this$0:Lorg/ros/android/NodeMainExecutorService;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Continue shutting down?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    const-string v1, "Shutdown"

    new-instance v2, Lorg/ros/android/NodeMainExecutorService$1$1;

    invoke-direct {v2, p0}, Lorg/ros/android/NodeMainExecutorService$1$1;-><init>(Lorg/ros/android/NodeMainExecutorService$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    const-string v1, "Cancel"

    new-instance v2, Lorg/ros/android/NodeMainExecutorService$1$2;

    invoke-direct {v2, p0}, Lorg/ros/android/NodeMainExecutorService$1$2;-><init>(Lorg/ros/android/NodeMainExecutorService$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 167
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 168
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 169
    return-void
.end method
