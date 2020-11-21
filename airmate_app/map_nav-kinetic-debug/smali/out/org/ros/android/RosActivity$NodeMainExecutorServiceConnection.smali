.class final Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;
.super Ljava/lang/Object;
.source "RosActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/RosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NodeMainExecutorServiceConnection"
.end annotation


# instance fields
.field private customMasterUri:Ljava/net/URI;

.field private serviceListener:Lorg/ros/android/NodeMainExecutorServiceListener;

.field final synthetic this$0:Lorg/ros/android/RosActivity;


# direct methods
.method public constructor <init>(Lorg/ros/android/RosActivity;Ljava/net/URI;)V
    .registers 3
    .param p2, "customUri"    # Ljava/net/URI;

    .line 106
    iput-object p1, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->customMasterUri:Ljava/net/URI;

    .line 109
    return-void
.end method


# virtual methods
.method public getServiceListener()Lorg/ros/android/NodeMainExecutorServiceListener;
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->serviceListener:Lorg/ros/android/NodeMainExecutorServiceListener;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 113
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    move-object v1, p2

    check-cast v1, Lorg/ros/android/NodeMainExecutorService$LocalBinder;

    invoke-virtual {v1}, Lorg/ros/android/NodeMainExecutorService$LocalBinder;->getService()Lorg/ros/android/NodeMainExecutorService;

    move-result-object v1

    iput-object v1, v0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    .line 115
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->customMasterUri:Ljava/net/URI;

    if-eqz v0, :cond_25

    .line 116
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    iget-object v0, v0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    iget-object v1, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->customMasterUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lorg/ros/android/NodeMainExecutorService;->setMasterUri(Ljava/net/URI;)V

    .line 117
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    iget-object v0, v0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    iget-object v1, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    invoke-static {v1}, Lorg/ros/android/RosActivity;->access$000(Lorg/ros/android/RosActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/android/NodeMainExecutorService;->setRosHostname(Ljava/lang/String;)V

    .line 120
    :cond_25
    new-instance v0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection$1;

    invoke-direct {v0, p0}, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection$1;-><init>(Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;)V

    iput-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->serviceListener:Lorg/ros/android/NodeMainExecutorServiceListener;

    .line 130
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    iget-object v0, v0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    iget-object v1, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->serviceListener:Lorg/ros/android/NodeMainExecutorServiceListener;

    invoke-virtual {v0, v1}, Lorg/ros/android/NodeMainExecutorService;->addListener(Lorg/ros/android/NodeMainExecutorServiceListener;)V

    .line 131
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    invoke-virtual {v0}, Lorg/ros/android/RosActivity;->getMasterUri()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_43

    .line 132
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    invoke-virtual {v0}, Lorg/ros/android/RosActivity;->startMasterChooser()V

    goto :goto_48

    .line 134
    :cond_43
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    invoke-virtual {v0}, Lorg/ros/android/RosActivity;->init()V

    .line 136
    :goto_48
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 140
    iget-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->this$0:Lorg/ros/android/RosActivity;

    iget-object v0, v0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    iget-object v1, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->serviceListener:Lorg/ros/android/NodeMainExecutorServiceListener;

    invoke-virtual {v0, v1}, Lorg/ros/android/NodeMainExecutorService;->removeListener(Lorg/ros/android/NodeMainExecutorServiceListener;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->serviceListener:Lorg/ros/android/NodeMainExecutorServiceListener;

    .line 142
    return-void
.end method
