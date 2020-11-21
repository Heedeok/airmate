.class Lorg/ros/internal/node/service/DefaultServiceServer$5;
.super Ljava/lang/Object;
.source "DefaultServiceServer.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/service/DefaultServiceServer;->signalOnMasterUnregistrationFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "Lorg/ros/node/service/ServiceServerListener<",
        "TT;TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/service/DefaultServiceServer;

.field final synthetic val$serviceServer:Lorg/ros/node/service/ServiceServer;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/service/DefaultServiceServer;Lorg/ros/node/service/ServiceServer;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/service/DefaultServiceServer;

    .line 200
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer$5;, "Lorg/ros/internal/node/service/DefaultServiceServer$5;"
    iput-object p1, p0, Lorg/ros/internal/node/service/DefaultServiceServer$5;->this$0:Lorg/ros/internal/node/service/DefaultServiceServer;

    iput-object p2, p0, Lorg/ros/internal/node/service/DefaultServiceServer$5;->val$serviceServer:Lorg/ros/node/service/ServiceServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 200
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer$5;, "Lorg/ros/internal/node/service/DefaultServiceServer$5;"
    check-cast p1, Lorg/ros/node/service/ServiceServerListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/service/DefaultServiceServer$5;->run(Lorg/ros/node/service/ServiceServerListener;)V

    return-void
.end method

.method public run(Lorg/ros/node/service/ServiceServerListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServerListener<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer$5;, "Lorg/ros/internal/node/service/DefaultServiceServer$5;"
    .local p1, "listener":Lorg/ros/node/service/ServiceServerListener;, "Lorg/ros/node/service/ServiceServerListener<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceServer$5;->val$serviceServer:Lorg/ros/node/service/ServiceServer;

    invoke-interface {p1, v0}, Lorg/ros/node/service/ServiceServerListener;->onMasterUnregistrationFailure(Ljava/lang/Object;)V

    .line 204
    return-void
.end method
