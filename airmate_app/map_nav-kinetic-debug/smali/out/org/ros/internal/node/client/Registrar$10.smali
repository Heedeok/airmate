.class Lorg/ros/internal/node/client/Registrar$10;
.super Ljava/lang/Object;
.source "Registrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/client/Registrar;->onServiceServerAdded(Lorg/ros/internal/node/service/DefaultServiceServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/client/Registrar;

.field final synthetic val$serviceServer:Lorg/ros/internal/node/service/DefaultServiceServer;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/client/Registrar;Lorg/ros/internal/node/service/DefaultServiceServer;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/client/Registrar;

    .line 283
    iput-object p1, p0, Lorg/ros/internal/node/client/Registrar$10;->this$0:Lorg/ros/internal/node/client/Registrar;

    iput-object p2, p0, Lorg/ros/internal/node/client/Registrar$10;->val$serviceServer:Lorg/ros/internal/node/service/DefaultServiceServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 286
    iget-object v0, p0, Lorg/ros/internal/node/client/Registrar$10;->val$serviceServer:Lorg/ros/internal/node/service/DefaultServiceServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/service/DefaultServiceServer;->signalOnMasterRegistrationFailure()V

    .line 287
    return-void
.end method
