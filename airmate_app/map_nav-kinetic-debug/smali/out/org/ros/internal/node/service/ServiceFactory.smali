.class public Lorg/ros/internal/node/service/ServiceFactory;
.super Ljava/lang/Object;
.source "ServiceFactory.java"


# instance fields
.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mutex:Ljava/lang/Object;

.field private final nodeName:Lorg/ros/namespace/GraphName;

.field private final serviceManager:Lorg/ros/internal/node/service/ServiceManager;

.field private final slaveServer:Lorg/ros/internal/node/server/SlaveServer;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Lorg/ros/internal/node/server/SlaveServer;Lorg/ros/internal/node/service/ServiceManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "slaveServer"    # Lorg/ros/internal/node/server/SlaveServer;
    .param p3, "serviceManager"    # Lorg/ros/internal/node/service/ServiceManager;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/ros/internal/node/service/ServiceFactory;->nodeName:Lorg/ros/namespace/GraphName;

    .line 50
    iput-object p2, p0, Lorg/ros/internal/node/service/ServiceFactory;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    .line 51
    iput-object p3, p0, Lorg/ros/internal/node/service/ServiceFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    .line 52
    iput-object p4, p0, Lorg/ros/internal/node/service/ServiceFactory;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/node/service/ServiceFactory;->mutex:Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public getServer(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/service/DefaultServiceServer;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "TT;TS;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v0, p1}, Lorg/ros/internal/node/service/ServiceManager;->hasServer(Lorg/ros/namespace/GraphName;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 101
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v0, p1}, Lorg/ros/internal/node/service/ServiceManager;->getServer(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/service/DefaultServiceServer;

    move-result-object v0

    return-object v0

    .line 103
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public newClient(Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageFactory;)Lorg/ros/internal/node/service/DefaultServiceClient;
    .registers 15
    .param p1, "serviceDeclaration"    # Lorg/ros/internal/node/service/ServiceDeclaration;
    .param p4, "messageFactory"    # Lorg/ros/message/MessageFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/internal/node/service/ServiceDeclaration;",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;",
            "Lorg/ros/message/MessageDeserializer<",
            "TS;>;",
            "Lorg/ros/message/MessageFactory;",
            ")",
            "Lorg/ros/internal/node/service/DefaultServiceClient<",
            "TT;TS;>;"
        }
    .end annotation

    .line 126
    .local p2, "serializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TT;>;"
    .local p3, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TS;>;"
    invoke-virtual {p1}, Lorg/ros/internal/node/service/ServiceDeclaration;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Lorg/ros/internal/node/service/ServiceDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 129
    .local v0, "name":Lorg/ros/namespace/GraphName;
    const/4 v1, 0x0

    .line 131
    .local v1, "createdNewClient":Z
    iget-object v2, p0, Lorg/ros/internal/node/service/ServiceFactory;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_f
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v3, v0}, Lorg/ros/internal/node/service/ServiceManager;->hasClient(Lorg/ros/namespace/GraphName;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 133
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v3, v0}, Lorg/ros/internal/node/service/ServiceManager;->getClient(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/service/DefaultServiceClient;

    move-result-object v3

    .line 134
    .local v3, "serviceClient":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    invoke-virtual {v3}, Lorg/ros/internal/node/service/DefaultServiceClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 135
    monitor-exit v2

    return-object v3

    .line 138
    .end local v3    # "serviceClient":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    :cond_25
    iget-object v4, p0, Lorg/ros/internal/node/service/ServiceFactory;->nodeName:Lorg/ros/namespace/GraphName;

    iget-object v9, p0, Lorg/ros/internal/node/service/ServiceFactory;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 139
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v4 .. v9}, Lorg/ros/internal/node/service/DefaultServiceClient;->newDefault(Lorg/ros/namespace/GraphName;Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/ros/internal/node/service/DefaultServiceClient;

    move-result-object v3

    .line 141
    .restart local v3    # "serviceClient":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    iget-object v4, p0, Lorg/ros/internal/node/service/ServiceFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v4, v3}, Lorg/ros/internal/node/service/ServiceManager;->addClient(Lorg/ros/internal/node/service/DefaultServiceClient;)V

    .line 142
    const/4 v1, 0x1

    .line 143
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_42

    .line 145
    if-eqz v1, :cond_41

    .line 146
    invoke-virtual {p1}, Lorg/ros/internal/node/service/ServiceDeclaration;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/ros/internal/node/service/DefaultServiceClient;->connect(Ljava/net/URI;)V

    .line 148
    :cond_41
    return-object v3

    .line 143
    .end local v3    # "serviceClient":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    :catchall_42
    move-exception v3

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v3
.end method

.method public newServer(Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/node/service/ServiceResponseBuilder;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageFactory;)Lorg/ros/internal/node/service/DefaultServiceServer;
    .registers 18
    .param p1, "serviceDeclaration"    # Lorg/ros/internal/node/service/ServiceDeclaration;
    .param p5, "messageFactory"    # Lorg/ros/message/MessageFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/internal/node/service/ServiceDeclaration;",
            "Lorg/ros/node/service/ServiceResponseBuilder<",
            "TT;TS;>;",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;",
            "Lorg/ros/message/MessageSerializer<",
            "TS;>;",
            "Lorg/ros/message/MessageFactory;",
            ")",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "TT;TS;>;"
        }
    .end annotation

    .line 76
    .local p2, "responseBuilder":Lorg/ros/node/service/ServiceResponseBuilder;, "Lorg/ros/node/service/ServiceResponseBuilder<TT;TS;>;"
    .local p3, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    .local p4, "serializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TS;>;"
    move-object v1, p0

    invoke-virtual {p1}, Lorg/ros/internal/node/service/ServiceDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    .line 78
    .local v2, "name":Lorg/ros/namespace/GraphName;
    iget-object v3, v1, Lorg/ros/internal/node/service/ServiceFactory;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 79
    :try_start_8
    iget-object v0, v1, Lorg/ros/internal/node/service/ServiceFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v0, v2}, Lorg/ros/internal/node/service/ServiceManager;->hasServer(Lorg/ros/namespace/GraphName;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 82
    new-instance v0, Lorg/ros/internal/node/service/DefaultServiceServer;

    iget-object v4, v1, Lorg/ros/internal/node/service/ServiceFactory;->slaveServer:Lorg/ros/internal/node/server/SlaveServer;

    .line 84
    invoke-virtual {v4}, Lorg/ros/internal/node/server/SlaveServer;->getTcpRosAdvertiseAddress()Lorg/ros/address/AdvertiseAddress;

    move-result-object v7

    iget-object v11, v1, Lorg/ros/internal/node/service/ServiceFactory;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lorg/ros/internal/node/service/DefaultServiceServer;-><init>(Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/node/service/ServiceResponseBuilder;Lorg/ros/address/AdvertiseAddress;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 86
    .local v0, "serviceServer":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    iget-object v4, v1, Lorg/ros/internal/node/service/ServiceFactory;->serviceManager:Lorg/ros/internal/node/service/ServiceManager;

    invoke-virtual {v4, v0}, Lorg/ros/internal/node/service/ServiceManager;->addServer(Lorg/ros/internal/node/service/DefaultServiceServer;)V

    .line 88
    monitor-exit v3

    .line 89
    return-object v0

    .line 80
    .end local v0    # "serviceServer":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    :cond_2c
    new-instance v0, Lorg/ros/exception/DuplicateServiceException;

    const-string v4, "ServiceServer %s already exists."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/ros/exception/DuplicateServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :catchall_3e
    move-exception v0

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_3e

    throw v0
.end method
