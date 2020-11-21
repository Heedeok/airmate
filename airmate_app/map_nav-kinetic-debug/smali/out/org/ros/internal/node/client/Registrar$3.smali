.class Lorg/ros/internal/node/client/Registrar$3;
.super Ljava/lang/Object;
.source "Registrar.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/client/Registrar;->onPublisherRemoved(Lorg/ros/internal/node/topic/DefaultPublisher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/client/Registrar;

.field final synthetic val$publisher:Lorg/ros/internal/node/topic/DefaultPublisher;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultPublisher;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/client/Registrar;

    .line 164
    iput-object p1, p0, Lorg/ros/internal/node/client/Registrar$3;->this$0:Lorg/ros/internal/node/client/Registrar;

    iput-object p2, p0, Lorg/ros/internal/node/client/Registrar$3;->val$publisher:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar$3;->this$0:Lorg/ros/internal/node/client/Registrar;

    new-instance v1, Lorg/ros/internal/node/client/Registrar$3$1;

    invoke-direct {v1, p0}, Lorg/ros/internal/node/client/Registrar$3$1;-><init>(Lorg/ros/internal/node/client/Registrar$3;)V

    invoke-static {v0, v1}, Lorg/ros/internal/node/client/Registrar;->access$100(Lorg/ros/internal/node/client/Registrar;Ljava/util/concurrent/Callable;)Z

    move-result v0

    .line 173
    .local v0, "success":Z
    if-eqz v0, :cond_13

    .line 174
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar$3;->val$publisher:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/DefaultPublisher;->signalOnMasterUnregistrationSuccess()V

    goto :goto_18

    .line 176
    :cond_13
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar$3;->val$publisher:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/DefaultPublisher;->signalOnMasterUnregistrationFailure()V

    .line 178
    :goto_18
    xor-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/ros/internal/node/client/Registrar$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
