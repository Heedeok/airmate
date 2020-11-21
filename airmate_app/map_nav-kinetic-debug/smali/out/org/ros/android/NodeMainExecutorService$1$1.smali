.class Lorg/ros/android/NodeMainExecutorService$1$1;
.super Ljava/lang/Object;
.source "NodeMainExecutorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/NodeMainExecutorService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/android/NodeMainExecutorService$1;


# direct methods
.method constructor <init>(Lorg/ros/android/NodeMainExecutorService$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/ros/android/NodeMainExecutorService$1;

    .line 155
    iput-object p1, p0, Lorg/ros/android/NodeMainExecutorService$1$1;->this$1:Lorg/ros/android/NodeMainExecutorService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 158
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService$1$1;->this$1:Lorg/ros/android/NodeMainExecutorService$1;

    iget-object v0, v0, Lorg/ros/android/NodeMainExecutorService$1;->this$0:Lorg/ros/android/NodeMainExecutorService;

    invoke-virtual {v0}, Lorg/ros/android/NodeMainExecutorService;->forceShutdown()V

    .line 159
    return-void
.end method
