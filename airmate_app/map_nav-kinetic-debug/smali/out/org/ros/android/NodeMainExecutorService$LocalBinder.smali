.class public Lorg/ros/android/NodeMainExecutorService$LocalBinder;
.super Landroid/os/Binder;
.source "NodeMainExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/NodeMainExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/NodeMainExecutorService;


# direct methods
.method public constructor <init>(Lorg/ros/android/NodeMainExecutorService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/NodeMainExecutorService;

    .line 93
    iput-object p1, p0, Lorg/ros/android/NodeMainExecutorService$LocalBinder;->this$0:Lorg/ros/android/NodeMainExecutorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lorg/ros/android/NodeMainExecutorService;
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService$LocalBinder;->this$0:Lorg/ros/android/NodeMainExecutorService;

    return-object v0
.end method
