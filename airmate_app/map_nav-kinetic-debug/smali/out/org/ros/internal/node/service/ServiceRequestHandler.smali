.class Lorg/ros/internal/node/service/ServiceRequestHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "ServiceRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jboss/netty/channel/SimpleChannelHandler;"
    }
.end annotation


# instance fields
.field private final deserializer:Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

.field private final messageFactory:Lorg/ros/message/MessageFactory;

.field private final responseBuilder:Lorg/ros/node/service/ServiceResponseBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/service/ServiceResponseBuilder<",
            "TT;TS;>;"
        }
    .end annotation
.end field

.field private final serializer:Lorg/ros/message/MessageSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageSerializer<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/service/ServiceDeclaration;Lorg/ros/node/service/ServiceResponseBuilder;Lorg/ros/message/MessageDeserializer;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ExecutorService;)V
    .registers 8
    .param p1, "serviceDeclaration"    # Lorg/ros/internal/node/service/ServiceDeclaration;
    .param p5, "messageFactory"    # Lorg/ros/message/MessageFactory;
    .param p6, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/ServiceDeclaration;",
            "Lorg/ros/node/service/ServiceResponseBuilder<",
            "TT;TS;>;",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;",
            "Lorg/ros/message/MessageSerializer<",
            "TS;>;",
            "Lorg/ros/message/MessageFactory;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/ros/internal/node/service/ServiceRequestHandler;, "Lorg/ros/internal/node/service/ServiceRequestHandler<TT;TS;>;"
    .local p2, "responseBuilder":Lorg/ros/node/service/ServiceResponseBuilder;, "Lorg/ros/node/service/ServiceResponseBuilder<TT;TS;>;"
    .local p3, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    .local p4, "serializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TS;>;"
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    .line 53
    iput-object p3, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->deserializer:Lorg/ros/message/MessageDeserializer;

    .line 54
    iput-object p4, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->serializer:Lorg/ros/message/MessageSerializer;

    .line 55
    iput-object p2, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->responseBuilder:Lorg/ros/node/service/ServiceResponseBuilder;

    .line 56
    iput-object p5, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 57
    iput-object p6, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 58
    new-instance v0, Lorg/ros/internal/message/MessageBufferPool;

    invoke-direct {v0}, Lorg/ros/internal/message/MessageBufferPool;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/node/service/ServiceRequestHandler;)Lorg/ros/internal/message/MessageBufferPool;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/service/ServiceRequestHandler;

    .line 38
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->messageBufferPool:Lorg/ros/internal/message/MessageBufferPool;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/internal/node/service/ServiceRequestHandler;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p0, "x0"    # Lorg/ros/internal/node/service/ServiceRequestHandler;
    .param p1, "x1"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "x2"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/ServiceException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/node/service/ServiceRequestHandler;->handleRequest(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method static synthetic access$200(Lorg/ros/internal/node/service/ServiceRequestHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/ros/internal/node/service/ServiceServerResponse;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lorg/ros/internal/node/service/ServiceRequestHandler;
    .param p1, "x1"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lorg/ros/internal/node/service/ServiceServerResponse;
    .param p3, "x3"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/ros/internal/node/service/ServiceRequestHandler;->handleError(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/ros/internal/node/service/ServiceServerResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/ros/internal/node/service/ServiceRequestHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/ros/internal/node/service/ServiceServerResponse;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p0, "x0"    # Lorg/ros/internal/node/service/ServiceRequestHandler;
    .param p1, "x1"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lorg/ros/internal/node/service/ServiceServerResponse;
    .param p3, "x3"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/ros/internal/node/service/ServiceRequestHandler;->handleSuccess(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/ros/internal/node/service/ServiceServerResponse;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method private handleError(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/ros/internal/node/service/ServiceServerResponse;Ljava/lang/String;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "response"    # Lorg/ros/internal/node/service/ServiceServerResponse;
    .param p3, "message"    # Ljava/lang/String;

    .line 79
    .local p0, "this":Lorg/ros/internal/node/service/ServiceRequestHandler;, "Lorg/ros/internal/node/service/ServiceRequestHandler<TT;TS;>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/ros/internal/node/service/ServiceServerResponse;->setErrorCode(I)V

    .line 80
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    .local v0, "encodedMessage":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/ros/internal/node/service/ServiceServerResponse;->setMessageLength(I)V

    .line 82
    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/ros/internal/node/service/ServiceServerResponse;->setMessage(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 83
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 84
    return-void
.end method

.method private handleRequest(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 6
    .param p1, "requestBuffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "responseBuffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/ServiceException;
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/ros/internal/node/service/ServiceRequestHandler;, "Lorg/ros/internal/node/service/ServiceRequestHandler<TT;TS;>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->deserializer:Lorg/ros/message/MessageDeserializer;

    invoke-interface {v0, p1}, Lorg/ros/message/MessageDeserializer;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "request":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->messageFactory:Lorg/ros/message/MessageFactory;

    iget-object v2, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->serviceDeclaration:Lorg/ros/internal/node/service/ServiceDeclaration;

    invoke-virtual {v2}, Lorg/ros/internal/node/service/ServiceDeclaration;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/ros/message/MessageFactory;->newFromType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "response":Ljava/lang/Object;, "TS;"
    iget-object v2, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->responseBuilder:Lorg/ros/node/service/ServiceResponseBuilder;

    invoke-interface {v2, v0, v1}, Lorg/ros/node/service/ServiceResponseBuilder;->build(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->serializer:Lorg/ros/message/MessageSerializer;

    invoke-interface {v2, v1, p2}, Lorg/ros/message/MessageSerializer;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 67
    return-void
.end method

.method private handleSuccess(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/ros/internal/node/service/ServiceServerResponse;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "response"    # Lorg/ros/internal/node/service/ServiceServerResponse;
    .param p3, "responseBuffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 71
    .local p0, "this":Lorg/ros/internal/node/service/ServiceRequestHandler;, "Lorg/ros/internal/node/service/ServiceRequestHandler<TT;TS;>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/ros/internal/node/service/ServiceServerResponse;->setErrorCode(I)V

    .line 72
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/ros/internal/node/service/ServiceServerResponse;->setMessageLength(I)V

    .line 73
    invoke-virtual {p2, p3}, Lorg/ros/internal/node/service/ServiceServerResponse;->setMessage(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 74
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 75
    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/ros/internal/node/service/ServiceRequestHandler;, "Lorg/ros/internal/node/service/ServiceRequestHandler<TT;TS;>;"
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 92
    .local v0, "requestBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceRequestHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/ros/internal/node/service/ServiceRequestHandler$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/ros/internal/node/service/ServiceRequestHandler$1;-><init>(Lorg/ros/internal/node/service/ServiceRequestHandler;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 111
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    .line 112
    return-void
.end method
