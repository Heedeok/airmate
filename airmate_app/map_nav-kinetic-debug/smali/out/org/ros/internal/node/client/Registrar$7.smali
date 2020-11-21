.class Lorg/ros/internal/node/client/Registrar$7;
.super Ljava/lang/Object;
.source "Registrar.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/client/Registrar;->onSubscriberRemoved(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
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

.field final synthetic val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/client/Registrar;

    .line 233
    iput-object p1, p0, Lorg/ros/internal/node/client/Registrar$7;->this$0:Lorg/ros/internal/node/client/Registrar;

    iput-object p2, p0, Lorg/ros/internal/node/client/Registrar$7;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

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

    .line 236
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar$7;->this$0:Lorg/ros/internal/node/client/Registrar;

    new-instance v1, Lorg/ros/internal/node/client/Registrar$7$1;

    invoke-direct {v1, p0}, Lorg/ros/internal/node/client/Registrar$7$1;-><init>(Lorg/ros/internal/node/client/Registrar$7;)V

    invoke-static {v0, v1}, Lorg/ros/internal/node/client/Registrar;->access$100(Lorg/ros/internal/node/client/Registrar;Ljava/util/concurrent/Callable;)Z

    move-result v0

    .line 242
    .local v0, "success":Z
    if-eqz v0, :cond_13

    .line 243
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar$7;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/DefaultSubscriber;->signalOnMasterUnregistrationSuccess()V

    goto :goto_18

    .line 245
    :cond_13
    iget-object v1, p0, Lorg/ros/internal/node/client/Registrar$7;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/DefaultSubscriber;->signalOnMasterUnregistrationFailure()V

    .line 247
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

    .line 233
    invoke-virtual {p0}, Lorg/ros/internal/node/client/Registrar$7;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
