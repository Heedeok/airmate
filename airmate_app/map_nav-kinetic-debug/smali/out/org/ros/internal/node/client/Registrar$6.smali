.class Lorg/ros/internal/node/client/Registrar$6;
.super Ljava/lang/Object;
.source "Registrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/client/Registrar;->onSubscriberAdded(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/client/Registrar;

.field final synthetic val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/client/Registrar;

    .line 219
    iput-object p1, p0, Lorg/ros/internal/node/client/Registrar$6;->this$0:Lorg/ros/internal/node/client/Registrar;

    iput-object p2, p0, Lorg/ros/internal/node/client/Registrar$6;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 222
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar$6;->val$subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/DefaultSubscriber;->signalOnMasterRegistrationFailure()V

    .line 223
    return-void
.end method
