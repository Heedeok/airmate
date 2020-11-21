.class Lorg/ros/android/RosActivity$1;
.super Ljava/lang/Object;
.source "RosActivity.java"

# interfaces
.implements Lorg/ros/android/RosActivity$OnActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/RosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/RosActivity;


# direct methods
.method constructor <init>(Lorg/ros/android/RosActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/RosActivity;

    .line 55
    iput-object p1, p0, Lorg/ros/android/RosActivity$1;->this$0:Lorg/ros/android/RosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 58
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7e

    .line 59
    if-nez p1, :cond_77

    .line 61
    const-string v0, "ROS_MASTER_NETWORK_INTERFACE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "networkInterfaceName":Ljava/lang/String;
    if-eqz v0, :cond_2b

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2b

    .line 67
    :cond_16
    :try_start_16
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 68
    .local v1, "networkInterface":Ljava/net/NetworkInterface;
    invoke-static {v1}, Lorg/ros/address/InetAddressFactory;->newNonLoopbackForNetworkInterface(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catch Ljava/net/SocketException; {:try_start_16 .. :try_end_22} :catch_24

    move-object v1, v2

    .line 71
    .local v1, "host":Ljava/lang/String;
    goto :goto_31

    .line 69
    .end local v1    # "host":Ljava/lang/String;
    :catch_24
    move-exception v1

    .line 70
    .local v1, "e":Ljava/net/SocketException;
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 64
    .end local v1    # "e":Ljava/net/SocketException;
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lorg/ros/android/RosActivity$1;->this$0:Lorg/ros/android/RosActivity;

    invoke-static {v1}, Lorg/ros/android/RosActivity;->access$000(Lorg/ros/android/RosActivity;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "host":Ljava/lang/String;
    :goto_31
    nop

    .line 73
    iget-object v2, p0, Lorg/ros/android/RosActivity$1;->this$0:Lorg/ros/android/RosActivity;

    iget-object v2, v2, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    invoke-virtual {v2, v1}, Lorg/ros/android/NodeMainExecutorService;->setRosHostname(Ljava/lang/String;)V

    .line 74
    const-string v2, "ROS_MASTER_CREATE_NEW"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 75
    iget-object v2, p0, Lorg/ros/android/RosActivity$1;->this$0:Lorg/ros/android/RosActivity;

    iget-object v2, v2, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    const-string v4, "ROS_MASTER_PRIVATE"

    const/4 v5, 0x1

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/ros/android/NodeMainExecutorService;->startMaster(Z)V

    goto :goto_65

    .line 79
    :cond_51
    :try_start_51
    new-instance v2, Ljava/net/URI;

    const-string v4, "ROS_MASTER_URI"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/net/URISyntaxException; {:try_start_51 .. :try_end_5c} :catch_70

    .line 82
    .local v2, "uri":Ljava/net/URI;
    nop

    .line 81
    nop

    .line 83
    iget-object v4, p0, Lorg/ros/android/RosActivity$1;->this$0:Lorg/ros/android/RosActivity;

    iget-object v4, v4, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    invoke-virtual {v4, v2}, Lorg/ros/android/NodeMainExecutorService;->setMasterUri(Ljava/net/URI;)V

    .line 86
    .end local v2    # "uri":Ljava/net/URI;
    :goto_65
    new-instance v2, Lorg/ros/android/RosActivity$1$1;

    invoke-direct {v2, p0}, Lorg/ros/android/RosActivity$1$1;-><init>(Lorg/ros/android/RosActivity$1;)V

    new-array v3, v3, [Ljava/lang/Void;

    .line 92
    invoke-virtual {v2, v3}, Lorg/ros/android/RosActivity$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    .end local v0    # "networkInterfaceName":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    goto :goto_7e

    .line 80
    .restart local v0    # "networkInterfaceName":Ljava/lang/String;
    .restart local v1    # "host":Ljava/lang/String;
    :catch_70
    move-exception v2

    .line 81
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v3, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v3, v2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 95
    .end local v0    # "networkInterfaceName":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_77
    iget-object v0, p0, Lorg/ros/android/RosActivity$1;->this$0:Lorg/ros/android/RosActivity;

    iget-object v0, v0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    invoke-virtual {v0}, Lorg/ros/android/NodeMainExecutorService;->forceShutdown()V

    .line 98
    :cond_7e
    :goto_7e
    return-void
.end method
