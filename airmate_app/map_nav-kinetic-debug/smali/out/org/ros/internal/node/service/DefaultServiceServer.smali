.class public Lorg/ros/internal/node/service/DefaultServiceServer;
.super Ljava/lang/Object;
.source "DefaultServiceServer.java"

# interfaces
.implements Lorg/ros/node/service/ServiceServer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ros/node/service/ServiceServer<",
        "TT;TS;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final advertiseAddress:Lorg/ros/address/AdvertiseAddress;

.field private final listenerGroup:Lorg/ros/concurrent/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/node/service/ServiceServerListener<",
            "TT;TS;>;>;"
        }
    .end annotation
.end field

.field private final messageDeserializer:Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final messageFactory:Lorg/ros/message/MessageFactory;

.field private final messageSerializer:Lorg/ros/message/MessageSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageSerializer<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

.field private final serviceResponseBuilder:Lorg/ros/node/service/ServiceResponseBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/service/ServiceResponseBuilder<",
            "TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/service/DefaultServiceServer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/node/service/ServiceResponseBuilder;Lorg/ros/address/AdvertiseAddress;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 10
    .param p1, "serviceDeclaration"    # Lorg/ros/internal/node/service/ServiceDeclaration;
    .param p3, "advertiseAddress"    # Lorg/ros/address/AdvertiseAddress;
    .param p6, "messageFactory"    # Lorg/ros/message/MessageFactory;
    .param p7, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/ServiceDeclaration;",
            "Lorg/ros/node/service/ServiceResponseBuilder<",
            "TT;TS;>;",
            "Lorg/ros/address/AdvertiseAddress;",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;",
            "Lorg/ros/message/MessageSerializer<",
            "TS;>;",
            "Lorg/ros/message/MessageFactory;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    .local p2, "serviceResponseBuilder":Lorg/ros/node/service/ServiceResponseBuilder;, "Lorg/ros/node/service/ServiceResponseBuilder<TT;TS;>;"
    .local p4, "messageDeserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    .local p5, "messageSerializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    .line 68
    iput-object p2, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->serviceResponseBuilder:Lorg/ros/node/service/ServiceResponseBuilder;

    .line 69
    iput-object p3, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    .line 70
    iput-object p4, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->messageDeserializer:Lorg/ros/message/MessageDeserializer;

    .line 71
    iput-object p5, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->messageSerializer:Lorg/ros/message/MessageSerializer;

    .line 72
    iput-object p6, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 73
    iput-object p7, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 74
    new-instance v0, Lorg/ros/concurrent/ListenerGroup;

    invoke-direct {v0, p7}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->listenerGroup:Lorg/ros/concurrent/ListenerGroup;

    .line 75
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->listenerGroup:Lorg/ros/concurrent/ListenerGroup;

    new-instance v1, Lorg/ros/internal/node/service/DefaultServiceServer$1;

    invoke-direct {v1, p0}, Lorg/ros/internal/node/service/DefaultServiceServer$1;-><init>(Lorg/ros/internal/node/service/DefaultServiceServer;)V

    invoke-virtual {v0, v1}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 96
    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .registers 1

    .line 49
    sget-object v0, Lorg/ros/internal/node/service/DefaultServiceServer;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/ros/node/service/ServiceServerListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServerListener<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    .local p1, "listener":Lorg/ros/node/service/ServiceServerListener;, "Lorg/ros/node/service/ServiceServerListener<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->listenerGroup:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 216
    return-void
.end method

.method public finishHandshake(Lorg/ros/internal/transport/ConnectionHeader;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 6
    .param p1, "incomingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 102
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    invoke-virtual {p0}, Lorg/ros/internal/node/service/DefaultServiceServer;->toDeclaration()Lorg/ros/internal/node/service/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceDeclaration;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v0

    .line 103
    .local v0, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    const-string v1, "md5sum"

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "expectedChecksum":Ljava/lang/String;
    const-string v2, "md5sum"

    .line 105
    invoke-virtual {p1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "incomingChecksum":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "*"

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_25

    :cond_23
    const/4 v3, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v3, 0x1

    .line 107
    :goto_26
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 112
    invoke-virtual {v0}, Lorg/ros/internal/transport/ConnectionHeader;->encode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3
.end method

.method public getName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 122
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 3

    .line 117
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->advertiseAddress:Lorg/ros/address/AdvertiseAddress;

    const-string v1, "rosrpc"

    invoke-virtual {v0, v1}, Lorg/ros/address/AdvertiseAddress;->toUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public newRequestHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 9

    .line 136
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    new-instance v7, Lorg/ros/internal/node/service/ServiceRequestHandler;

    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    iget-object v2, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->serviceResponseBuilder:Lorg/ros/node/service/ServiceResponseBuilder;

    iget-object v3, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->messageDeserializer:Lorg/ros/message/MessageDeserializer;

    iget-object v4, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->messageSerializer:Lorg/ros/message/MessageSerializer;

    iget-object v5, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->messageFactory:Lorg/ros/message/MessageFactory;

    iget-object v6, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ros/internal/node/service/ServiceRequestHandler;-><init>(Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/node/service/ServiceResponseBuilder;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ExecutorService;)V

    return-object v7
.end method

.method public shutdown()V
    .registers 2

    .line 210
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public signalOnMasterRegistrationFailure()V
    .registers 4

    .line 165
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    move-object v0, p0

    .line 166
    .local v0, "serviceServer":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->listenerGroup:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/service/DefaultServiceServer$3;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/service/DefaultServiceServer$3;-><init>(Lorg/ros/internal/node/service/DefaultServiceServer;Lorg/ros/node/service/ServiceServer;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 172
    return-void
.end method

.method public signalOnMasterRegistrationSuccess()V
    .registers 4

    .line 148
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    move-object v0, p0

    .line 149
    .local v0, "serviceServer":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->listenerGroup:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/service/DefaultServiceServer$2;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/service/DefaultServiceServer$2;-><init>(Lorg/ros/internal/node/service/DefaultServiceServer;Lorg/ros/node/service/ServiceServer;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 155
    return-void
.end method

.method public signalOnMasterUnregistrationFailure()V
    .registers 4

    .line 199
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    move-object v0, p0

    .line 200
    .local v0, "serviceServer":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->listenerGroup:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/service/DefaultServiceServer$5;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/service/DefaultServiceServer$5;-><init>(Lorg/ros/internal/node/service/DefaultServiceServer;Lorg/ros/node/service/ServiceServer;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 206
    return-void
.end method

.method public signalOnMasterUnregistrationSuccess()V
    .registers 4

    .line 182
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    move-object v0, p0

    .line 183
    .local v0, "serviceServer":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->listenerGroup:Lorg/ros/concurrent/ListenerGroup;

    new-instance v2, Lorg/ros/internal/node/service/DefaultServiceServer$4;

    invoke-direct {v2, p0, v0}, Lorg/ros/internal/node/service/DefaultServiceServer$4;-><init>(Lorg/ros/internal/node/service/DefaultServiceServer;Lorg/ros/node/service/ServiceServer;)V

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 189
    return-void
.end method

.method toDeclaration()Lorg/ros/internal/node/service/ServiceDeclaration;
    .registers 7

    .line 130
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    new-instance v0, Lorg/ros/internal/node/service/ServiceIdentifier;

    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-virtual {v1}, Lorg/ros/internal/node/service/ServiceDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ros/internal/node/service/DefaultServiceServer;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/service/ServiceIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 131
    .local v0, "identifier":Lorg/ros/internal/node/service/ServiceIdentifier;
    new-instance v1, Lorg/ros/internal/node/service/ServiceDeclaration;

    new-instance v2, Lorg/ros/internal/message/service/ServiceDescription;

    iget-object v3, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-virtual {v3}, Lorg/ros/internal/node/service/ServiceDeclaration;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    .line 132
    invoke-virtual {v4}, Lorg/ros/internal/node/service/ServiceDeclaration;->getDefinition()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/ros/internal/node/service/DefaultServiceServer;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-virtual {v5}, Lorg/ros/internal/node/service/ServiceDeclaration;->getMd5Checksum()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/ros/internal/message/service/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lorg/ros/internal/node/service/ServiceDeclaration;-><init>(Lorg/ros/internal/node/service/ServiceIdentifier;Lorg/ros/internal/message/service/ServiceDescription;)V

    .line 131
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 220
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<TT;TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceServer<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ros/internal/node/service/DefaultServiceServer;->toDeclaration()Lorg/ros/internal/node/service/ServiceDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
