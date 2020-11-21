.class Lorg/ros/internal/node/server/ParameterServer$1;
.super Ljava/lang/Object;
.source "ParameterServer.java"

# interfaces
.implements Lorg/ros/internal/node/server/ParameterServer$Updater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/server/ParameterServer;->set(Lorg/ros/namespace/GraphName;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/server/ParameterServer;

.field final synthetic val$name:Lorg/ros/namespace/GraphName;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lorg/ros/internal/node/server/ParameterServer;Lorg/ros/namespace/GraphName;Z)V
    .registers 4
    .param p1, "this$0"    # Lorg/ros/internal/node/server/ParameterServer;

    .line 122
    iput-object p1, p0, Lorg/ros/internal/node/server/ParameterServer$1;->this$0:Lorg/ros/internal/node/server/ParameterServer;

    iput-object p2, p0, Lorg/ros/internal/node/server/ParameterServer$1;->val$name:Lorg/ros/namespace/GraphName;

    iput-boolean p3, p0, Lorg/ros/internal/node/server/ParameterServer$1;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lorg/ros/internal/node/client/SlaveClient;)V
    .registers 4
    .param p1, "client"    # Lorg/ros/internal/node/client/SlaveClient;

    .line 125
    iget-object v0, p0, Lorg/ros/internal/node/server/ParameterServer$1;->val$name:Lorg/ros/namespace/GraphName;

    iget-boolean v1, p0, Lorg/ros/internal/node/server/ParameterServer$1;->val$value:Z

    invoke-virtual {p1, v0, v1}, Lorg/ros/internal/node/client/SlaveClient;->paramUpdate(Lorg/ros/namespace/GraphName;Z)Lorg/ros/internal/node/response/Response;

    .line 126
    return-void
.end method
