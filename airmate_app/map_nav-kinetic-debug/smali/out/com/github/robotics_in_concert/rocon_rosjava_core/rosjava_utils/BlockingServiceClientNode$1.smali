.class Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;
.super Ljava/lang/Object;
.source "BlockingServiceClientNode.java"

# interfaces
.implements Lorg/ros/node/service/ServiceResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->setupListener()Lorg/ros/node/service/ServiceResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/node/service/ServiceResponseListener<",
        "TResponseType;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;


# direct methods
.method constructor <init>(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;)V
    .registers 2

    .line 55
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode.1;"
    iput-object p1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;->this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/ros/exception/RemoteException;)V
    .registers 5
    .param p1, "e"    # Lorg/ros/exception/RemoteException;

    .line 65
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode.1;"
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;->this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    invoke-static {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->access$000(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;)Lorg/ros/node/service/ServiceClient;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_7
    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;->this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    invoke-virtual {p1}, Lorg/ros/exception/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->access$202(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;->this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    invoke-static {v1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->access$000(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;)Lorg/ros/node/service/ServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 68
    monitor-exit v0

    .line 70
    return-void

    .line 68
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode.1;"
    .local p1, "r":Ljava/lang/Object;, "TResponseType;"
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;->this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    invoke-static {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->access$000(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;)Lorg/ros/node/service/ServiceClient;

    move-result-object v0

    monitor-enter v0

    .line 59
    :try_start_7
    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;->this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    invoke-static {v1, p1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->access$102(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;->this$0:Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    invoke-static {v1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->access$000(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;)Lorg/ros/node/service/ServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 61
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method
