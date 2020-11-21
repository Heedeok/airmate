.class Lorg/ros/internal/node/client/Registrar$4;
.super Ljava/lang/Object;
.source "Registrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/client/Registrar;->onPublisherRemoved(Lorg/ros/internal/node/topic/DefaultPublisher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/client/Registrar;

.field final synthetic val$publisher:Lorg/ros/internal/node/topic/DefaultPublisher;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/topic/DefaultPublisher;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/client/Registrar;

    .line 182
    iput-object p1, p0, Lorg/ros/internal/node/client/Registrar$4;->this$0:Lorg/ros/internal/node/client/Registrar;

    iput-object p2, p0, Lorg/ros/internal/node/client/Registrar$4;->val$publisher:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 185
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar$4;->val$publisher:Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/DefaultPublisher;->signalOnMasterUnregistrationFailure()V

    .line 186
    return-void
.end method
