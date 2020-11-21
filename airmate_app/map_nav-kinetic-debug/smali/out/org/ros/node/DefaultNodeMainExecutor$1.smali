.class Lorg/ros/node/DefaultNodeMainExecutor$1;
.super Ljava/lang/Object;
.source "DefaultNodeMainExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/node/DefaultNodeMainExecutor;-><init>(Lorg/ros/node/NodeFactory;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/node/DefaultNodeMainExecutor;


# direct methods
.method constructor <init>(Lorg/ros/node/DefaultNodeMainExecutor;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/node/DefaultNodeMainExecutor;

    .line 105
    iput-object p1, p0, Lorg/ros/node/DefaultNodeMainExecutor$1;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 108
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor$1;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    invoke-virtual {v0}, Lorg/ros/node/DefaultNodeMainExecutor;->shutdown()V

    .line 109
    return-void
.end method
