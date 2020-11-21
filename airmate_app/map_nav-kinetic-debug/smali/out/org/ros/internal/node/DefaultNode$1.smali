.class Lorg/ros/internal/node/DefaultNode$1;
.super Ljava/lang/Object;
.source "DefaultNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/DefaultNode;-><init>(Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/DefaultNode;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/DefaultNode;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/internal/node/DefaultNode;

    .line 170
    iput-object p1, p0, Lorg/ros/internal/node/DefaultNode$1;->this$0:Lorg/ros/internal/node/DefaultNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 173
    iget-object v0, p0, Lorg/ros/internal/node/DefaultNode$1;->this$0:Lorg/ros/internal/node/DefaultNode;

    invoke-static {v0}, Lorg/ros/internal/node/DefaultNode;->access$000(Lorg/ros/internal/node/DefaultNode;)V

    .line 174
    return-void
.end method
