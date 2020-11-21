.class Lorg/ros/internal/node/parameter/ParameterManager$1;
.super Ljava/lang/Object;
.source "ParameterManager.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/parameter/ParameterManager;->updateParameter(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "Lorg/ros/node/parameter/ParameterListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/parameter/ParameterManager;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/parameter/ParameterManager;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/parameter/ParameterManager;

    .line 62
    iput-object p1, p0, Lorg/ros/internal/node/parameter/ParameterManager$1;->this$0:Lorg/ros/internal/node/parameter/ParameterManager;

    iput-object p2, p0, Lorg/ros/internal/node/parameter/ParameterManager$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 62
    check-cast p1, Lorg/ros/node/parameter/ParameterListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/parameter/ParameterManager$1;->run(Lorg/ros/node/parameter/ParameterListener;)V

    return-void
.end method

.method public run(Lorg/ros/node/parameter/ParameterListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/ros/node/parameter/ParameterListener;

    .line 65
    iget-object v0, p0, Lorg/ros/internal/node/parameter/ParameterManager$1;->val$value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/ros/node/parameter/ParameterListener;->onNewValue(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
