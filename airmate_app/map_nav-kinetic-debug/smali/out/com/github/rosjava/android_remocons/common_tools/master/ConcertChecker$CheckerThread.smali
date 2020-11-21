.class Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;
.super Ljava/lang/Thread;
.source "ConcertChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckerThread"
.end annotation


# instance fields
.field private concertUri:Ljava/net/URI;

.field private masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;


# direct methods
.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/net/URI;)V
    .registers 5
    .param p2, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .param p3, "concertUri"    # Ljava/net/URI;

    .line 130
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 131
    iput-object p3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->concertUri:Ljava/net/URI;

    .line 132
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->setDaemon(Z)V

    .line 135
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread$1;

    invoke-direct {v0, p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread$1;-><init>(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;)V

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 141
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 151
    :try_start_0
    new-instance v0, Lorg/ros/internal/node/client/ParameterClient;

    const-string v1, "/concert_checker"

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->concertUri:Ljava/net/URI;

    .line 152
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ros/internal/node/server/NodeIdentifier;->forNameAndUri(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->concertUri:Ljava/net/URI;

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/client/ParameterClient;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Ljava/net/URI;)V

    .line 153
    .local v0, "paramClient":Lorg/ros/internal/node/client/ParameterClient;
    const-string v1, "/rosversion"

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/client/ParameterClient;->getParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "version":Ljava/lang/String;
    const-string v2, "Remocon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r ros master found ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Lorg/ros/android/NodeMainExecutorService;

    invoke-direct {v2}, Lorg/ros/android/NodeMainExecutorService;-><init>()V

    .line 158
    .local v2, "nodeMainExecutorService":Lorg/ros/android/NodeMainExecutorService;
    invoke-static {}, Lorg/ros/address/InetAddressFactory;->newNonLoopback()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->concertUri:Ljava/net/URI;

    .line 157
    invoke-static {v3, v4}, Lorg/ros/node/NodeConfiguration;->newPublic(Ljava/lang/String;Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    move-result-object v3

    .line 161
    .local v3, "nodeConfiguration":Lorg/ros/node/NodeConfiguration;
    new-instance v4, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;

    invoke-direct {v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;-><init>()V

    .line 162
    .local v4, "masterInfo":Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;
    new-instance v5, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;

    sget-object v6, Lcom/github/rosjava/android_remocons/common_tools/rocon/Constants;->ANDROID_PLATFORM_INFO:Lrocon_std_msgs/PlatformInfo;

    invoke-interface {v6}, Lrocon_std_msgs/PlatformInfo;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;-><init>(Ljava/lang/String;)V

    .line 164
    .local v5, "roconInteractions":Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;
    const-string v6, "master_info_node"

    .line 166
    invoke-virtual {v3, v6}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v6

    .line 164
    invoke-virtual {v2, v4, v6}, Lorg/ros/android/NodeMainExecutorService;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 168
    invoke-virtual {v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->waitForResponse()V

    .line 169
    const-string v6, "Remocon"

    const-string v7, "master info found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v6, "rocon_interactions_node"

    .line 172
    invoke-virtual {v3, v6}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v6

    .line 170
    invoke-virtual {v2, v5, v6}, Lorg/ros/android/NodeMainExecutorService;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 174
    invoke-virtual {v5}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->waitForResponse()V

    .line 175
    const-string v6, "Remocon"

    const-string v7, "rocon interactions found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 179
    .local v14, "timeLastSeen":Ljava/util/Date;
    new-instance v6, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;

    iget-object v9, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 181
    invoke-virtual {v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->getName()Ljava/lang/String;

    move-result-object v10

    .line 182
    invoke-virtual {v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->getDescription()Ljava/lang/String;

    move-result-object v11

    .line 183
    invoke-virtual {v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;->getIcon()Lrocon_std_msgs/Icon;

    move-result-object v12

    .line 184
    invoke-virtual {v5}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->getNamespace()Ljava/lang/String;

    move-result-object v13

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;-><init>(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/lang/String;Ljava/lang/String;Lrocon_std_msgs/Icon;Ljava/lang/String;Ljava/util/Date;)V

    .line 187
    .local v6, "description":Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    const-string v7, "ok"

    invoke-virtual {v6, v7}, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->setConnectionStatus(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v5}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;->getRoles()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;->setUserRoles(Ljava/util/List;)V

    .line 189
    iget-object v7, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;

    invoke-static {v7}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->access$100(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;)Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$ConcertDescriptionReceiver;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$ConcertDescriptionReceiver;->receive(Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;)V

    .line 191
    invoke-virtual {v2, v4}, Lorg/ros/android/NodeMainExecutorService;->shutdownNodeMain(Lorg/ros/node/NodeMain;)V

    .line 192
    invoke-virtual {v2, v5}, Lorg/ros/android/NodeMainExecutorService;->shutdownNodeMain(Lorg/ros/node/NodeMain;)V
    :try_end_bf
    .catch Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException; {:try_start_0 .. :try_end_bf} :catch_1b9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_bf} :catch_183
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException; {:try_start_0 .. :try_end_bf} :catch_135
    .catch Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException; {:try_start_0 .. :try_end_bf} :catch_fe
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_bf} :catch_c0

    .line 193
    return-void

    .line 207
    .end local v0    # "paramClient":Lorg/ros/internal/node/client/ParameterClient;
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "nodeMainExecutorService":Lorg/ros/android/NodeMainExecutorService;
    .end local v3    # "nodeConfiguration":Lorg/ros/node/NodeConfiguration;
    .end local v4    # "masterInfo":Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfo;
    .end local v5    # "roconInteractions":Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/RoconInteractions;
    .end local v6    # "description":Lcom/github/rosjava/android_remocons/common_tools/master/RoconDescription;
    .end local v14    # "timeLastSeen":Ljava/util/Date;
    :catch_c0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Remocon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception while creating node in concert checker for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->concertUri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;)Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown exception in the rocon checker ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    goto/16 :goto_1ef

    .line 204
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_fe
    move-exception v0

    .line 205
    .local v0, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
    const-string v1, "Remocon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "master info unavailable ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->concertUri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;)Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    move-result-object v1

    const-string v2, "Rocon master info unavailable. Is your ROS_IP set? Is the rocon_master_info node running?"

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .end local v0    # "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/master_info/MasterInfoException;
    goto/16 :goto_1ee

    .line 201
    :catch_135
    move-exception v0

    .line 202
    .local v0, "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException;
    const-string v1, "Remocon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rocon interactions unavailable ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->concertUri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;)Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rocon interactions unavailable ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .end local v0    # "e":Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionsException;
    goto :goto_1ee

    .line 197
    :catch_183
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Remocon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection refused. Is the master running? ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->concertUri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;)Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    move-result-object v1

    const-string v2, "Connection refused. Is the master running?"

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_1ee

    .line 194
    :catch_1b9
    move-exception v0

    .line 195
    .local v0, "e":Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;
    const-string v1, "Remocon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timed out trying to connect to the master ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->concertUri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;)Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    move-result-object v1

    const-string v2, "Timed out trying to connect to the master. Is your network interface up?"

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 210
    .end local v0    # "e":Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;
    :goto_1ee
    nop

    .line 211
    :goto_1ef
    return-void
.end method
