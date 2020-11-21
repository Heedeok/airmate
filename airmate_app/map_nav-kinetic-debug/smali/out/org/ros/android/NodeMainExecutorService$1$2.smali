.class Lorg/ros/android/NodeMainExecutorService$1$2;
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

    .line 161
    iput-object p1, p0, Lorg/ros/android/NodeMainExecutorService$1$2;->this$1:Lorg/ros/android/NodeMainExecutorService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 164
    return-void
.end method
