.class public Lorg/ros/internal/node/service/DefaultServiceClient;
.super Ljava/lang/Object;
.source "DefaultServiceClient.java"

# interfaces
.implements Lorg/ros/node/service/ServiceClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ros/node/service/ServiceClient<",
        "TT;TS;>;"
    }
.end annotation


# instance fields
.field private final connectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

.field private final handshakeLatch:Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/node/service/DefaultServiceClient<",
            "TT;TS;>.Handshake",
            "Latch;"
        }
    .end annotation
.end field

.field private final messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

.field private final messageFactory:Lorg/ros/message/MessageFactory;

.field private final responseListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private final serializer:Lorg/ros/message/MessageSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

.field private tcpClient:Lorg/ros/internal/transport/tcp/TcpClient;

.field private final tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;


# direct methods
.method private constructor <init>(Lorg/ros/namespace/GraphName;Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 10
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "serviceDeclaration"    # Lorg/ros/internal/node/service/ServiceDeclaration;
    .param p5, "messageFactory"    # Lorg/ros/message/MessageFactory;
    .param p6, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/service/ServiceDeclaration;",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;",
            "Lorg/ros/message/MessageDeserializer<",
            "TS;>;",
            "Lorg/ros/message/MessageFactory;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    .local p3, "serializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TT;>;"
    .local p4, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    .line 112
    iput-object p3, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->serializer:Lorg/ros/message/MessageSerializer;

    .line 113
    iput-object p5, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 114
    new-instance v0, Lorg/ros/internal/message/MessageBufferPool;

    invoke-direct {v0}, Lorg/ros/internal/message/MessageBufferPool;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

    .line 115
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->responseListeners:Ljava/util/Queue;

    .line 116
    new-instance v0, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {v0}, Lorg/ros/internal/transport/ConnectionHeader;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->connectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    .line 117
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->connectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    const-string v1, "callerid"

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->connectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    const-string v1, "persistent"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->connectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    invoke-virtual {p2}, Lorg/ros/internal/node/service/ServiceDeclaration;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->merge(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 121
    new-instance v0, Lorg/ros/internal/transport/tcp/TcpClientManager;

    invoke-direct {v0, p6}, Lorg/ros/internal/transport/tcp/TcpClientManager;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;

    .line 122
    new-instance v0, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;

    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->connectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    iget-object v2, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->responseListeners:Ljava/util/Queue;

    invoke-direct {v0, v1, v2, p4, p6}, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;-><init>(Lorg/ros/internal/transport/ConnectionHeader;Ljava/util/Queue;Lorg/ros/message/MessageDeserializer;Ljava/util/concurrent/ExecutorService;)V

    .line 125
    .local v0, "serviceClientHandshakeHandler":Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;, "Lorg/ros/internal/node/service/ServiceClientHandshakeHandler<TT;TS;>;"
    new-instance v1, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;-><init>(Lorg/ros/internal/node/service/DefaultServiceClient;Lorg/ros/internal/node/service/DefaultServiceClient$1;)V

    iput-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->handshakeLatch:Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;

    .line 126
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->handshakeLatch:Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/service/ServiceClientHandshakeHandler;->addListener(Lorg/ros/internal/transport/ClientHandshakeListener;)V

    .line 127
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;

    invoke-virtual {v1, v0}, Lorg/ros/internal/transport/tcp/TcpClientManager;->addNamedChannelHandler(Lorg/ros/internal/transport/tcp/NamedChannelHandler;)V

    .line 128
    return-void
.end method

.method public static newDefault(Lorg/ros/namespace/GraphName;Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/ros/internal/node/service/DefaultServiceClient;
    .registers 14
    .param p0, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p1, "serviceDeclaration"    # Lorg/ros/internal/node/service/ServiceDeclaration;
    .param p4, "messageFactory"    # Lorg/ros/message/MessageFactory;
    .param p5, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/service/ServiceDeclaration;",
            "Lorg/ros/message/MessageSerializer<",
            "TS;>;",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;",
            "Lorg/ros/message/MessageFactory;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lorg/ros/internal/node/service/DefaultServiceClient<",
            "TS;TT;>;"
        }
    .end annotation

    .line 103
    .local p2, "serializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TS;>;"
    .local p3, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    new-instance v7, Lorg/ros/internal/node/service/DefaultServiceClient;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ros/internal/node/service/DefaultServiceClient;-><init>(Lorg/ros/namespace/GraphName;Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v7
.end method


# virtual methods
.method public call(Ljava/lang/Object;Lorg/ros/node/service/ServiceResponseListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "TS;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    .local p1, "request":Ljava/lang/Object;, "TT;"
    .local p2, "listener":Lorg/ros/node/service/ServiceResponseListener;, "Lorg/ros/node/service/ServiceResponseListener<TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

    invoke-virtual {v0}, Lorg/ros/internal/message/MessageBufferPool;->acquire()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 155
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->serializer:Lorg/ros/message/MessageSerializer;

    invoke-interface {v1, p1, v0}, Lorg/ros/message/MessageSerializer;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 156
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->responseListeners:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->tcpClient:Lorg/ros/internal/transport/tcp/TcpClient;

    invoke-virtual {v1, v0}, Lorg/ros/internal/transport/tcp/TcpClient;->write(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 158
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

    invoke-virtual {v1, v0}, Lorg/ros/internal/message/MessageBufferPool;->release(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 159
    return-void
.end method

.method public connect(Ljava/net/URI;)V
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;

    .line 132
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    const-string v0, "URI must be specified."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rosrpc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Invalid service URI."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->tcpClient:Lorg/ros/internal/transport/tcp/TcpClient;

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string v1, "Already connected."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 135
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 136
    .local v0, "address":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->handshakeLatch:Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;

    invoke-virtual {v1}, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->reset()V

    .line 137
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;

    invoke-virtual {p0}, Lorg/ros/internal/node/service/DefaultServiceClient;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/ros/internal/transport/tcp/TcpClientManager;->connect(Ljava/lang/String;Ljava/net/SocketAddress;)Lorg/ros/internal/transport/tcp/TcpClient;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->tcpClient:Lorg/ros/internal/transport/tcp/TcpClient;

    .line 139
    :try_start_3e
    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->handshakeLatch:Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 144
    nop

    .line 145
    return-void

    .line 140
    :cond_4c
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    iget-object v2, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->handshakeLatch:Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;

    invoke-virtual {v2}, Lorg/ros/internal/node/service/DefaultServiceClient$HandshakeLatch;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_58} :catch_58

    .line 142
    :catch_58
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    const-string v3, "Handshake timed out."

    invoke-direct {v2, v3}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 163
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 178
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->tcpClient:Lorg/ros/internal/transport/tcp/TcpClient;

    invoke-virtual {v0}, Lorg/ros/internal/transport/tcp/TcpClient;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public newMessage()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->messageFactory:Lorg/ros/message/MessageFactory;

    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-virtual {v1}, Lorg/ros/internal/node/service/ServiceDeclaration;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/message/MessageFactory;->newFromType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .registers 2

    .line 149
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->tcpClientManager:Lorg/ros/internal/transport/tcp/TcpClientManager;

    invoke-virtual {v0}, Lorg/ros/internal/transport/tcp/TcpClientManager;->shutdown()V

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 168
    .local p0, "this":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<TT;TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceClient<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/service/DefaultServiceClient;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
