.class public Lorg/jboss/netty/handler/ssl/SslHandler;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "SslHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;,
        Lorg/jboss/netty/handler/ssl/SslHandler$ClosingChannelFutureListener;,
        Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;

.field private static final IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

.field private static defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final delegatedTaskExecutor:Ljava/util/concurrent/Executor;

.field private volatile enableRenegotiation:Z

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private volatile handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

.field final handshakeLock:Ljava/lang/Object;

.field private volatile handshaken:Z

.field private handshaking:Z

.field ignoreClosedChannelException:I

.field final ignoreClosedChannelExceptionLock:Ljava/lang/Object;

.field private volatile issueHandshake:Z

.field private packetLength:I

.field private final pendingEncryptedWrites:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

.field private final pendingUnencryptedWrites:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;",
            ">;"
        }
    .end annotation
.end field

.field private final sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

.field private final startTls:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 157
    nop

    .line 160
    const-class v0, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 165
    const-string v0, "^.*(Socket|DatagramChannel|SctpChannel).*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    .line 167
    const-string v0, "^.*(?:connection.*reset|connection.*closed|broken.*pipe).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .registers 4
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 217
    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .line 265
    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;)V
    .registers 4
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "bufferPool"    # Lorg/jboss/netty/handler/ssl/SslBufferPool;

    .line 228
    sget-object v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "bufferPool"    # Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .param p3, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Z)V
    .registers 5
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "bufferPool"    # Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .param p3, "startTls"    # Z

    .line 252
    sget-object v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "bufferPool"    # Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .param p3, "startTls"    # Z
    .param p4, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .line 315
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 198
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    .line 202
    const-class v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    .line 203
    new-instance v0, Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    .line 207
    new-instance v0, Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    .line 316
    if-eqz p1, :cond_61

    .line 319
    if-eqz p2, :cond_59

    .line 322
    if-eqz p4, :cond_51

    .line 325
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    .line 326
    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    .line 327
    iput-object p4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    .line 328
    iput-boolean p3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->startTls:Z

    .line 329
    return-void

    .line 323
    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegatedTaskExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bufferPool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "engine"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .registers 4
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z

    .line 239
    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Z)V

    .line 240
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z
    .param p3, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .line 297
    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    .line 298
    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .registers 2
    .param p0, "x0"    # Lorg/jboss/netty/handler/ssl/SslHandler;

    .line 157
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method private closeOutboundAndChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 11
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 1222
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1223
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 1224
    return-void

    .line 1227
    :cond_e
    const/4 v0, 0x0

    move v1, v0

    .line 1230
    .local v1, "success":Z
    :try_start_10
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    sget-object v5, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_1d
    .catch Ljavax/net/ssl/SSLException; {:try_start_10 .. :try_end_1d} :catch_20
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    .line 1235
    goto :goto_30

    .line 1255
    :catchall_1e
    move-exception v0

    goto :goto_73

    .line 1231
    :catch_20
    move-exception v2

    .line 1232
    .local v2, "ex":Ljavax/net/ssl/SSLException;
    :try_start_21
    sget-object v3, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1233
    sget-object v3, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Failed to unwrap before sending a close_notify message"

    invoke-interface {v3, v4, v2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1237
    .end local v2    # "ex":Ljavax/net/ssl/SSLException;
    :cond_30
    :goto_30
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-nez v2, :cond_69

    .line 1238
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1239
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_1e

    .line 1241
    :try_start_46
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 1242
    .local v0, "closeNotifyFuture":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v2, Lorg/jboss/netty/handler/ssl/SslHandler$ClosingChannelFutureListener;

    invoke-direct {v2, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler$ClosingChannelFutureListener;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    :try_end_56
    .catch Ljavax/net/ssl/SSLException; {:try_start_46 .. :try_end_56} :catch_58
    .catchall {:try_start_46 .. :try_end_56} :catchall_1e

    .line 1244
    const/4 v1, 0x1

    .line 1249
    .end local v0    # "closeNotifyFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_57
    :goto_57
    goto :goto_6a

    .line 1245
    :catch_58
    move-exception v0

    .line 1246
    .local v0, "ex":Ljavax/net/ssl/SSLException;
    :try_start_59
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1247
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to encode a close_notify message"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_1e

    goto :goto_57

    .line 1252
    .end local v0    # "ex":Ljavax/net/ssl/SSLException;
    :cond_69
    const/4 v1, 0x1

    .line 1254
    :cond_6a
    :goto_6a
    nop

    .line 1259
    move-object v0, p0

    .local v0, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    if-nez v1, :cond_71

    .line 1256
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 1258
    :cond_71
    nop

    .line 1259
    return-void

    .line 1255
    .end local v0    # "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    :goto_73
    nop

    .line 1256
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    if-nez v1, :cond_7a

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 1255
    :cond_7a
    throw v0
.end method

.method private flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 906
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_9

    .line 907
    return-void

    .line 912
    :cond_9
    :goto_9
    :try_start_9
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    move-object v1, v0

    .local v1, "e":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v0, :cond_18

    .line 913
    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_20

    goto :goto_9

    .line 915
    .end local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_18
    nop

    .line 918
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    .line 917
    nop

    .line 918
    return-void

    .line 916
    :catchall_20
    move-exception v0

    .line 918
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    iget-object v2, v1, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    .line 916
    throw v0
.end method

.method public static declared-synchronized getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .registers 2

    const-class v0, Lorg/jboss/netty/handler/ssl/SslHandler;

    monitor-enter v0

    .line 178
    :try_start_3
    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    if-nez v1, :cond_e

    .line 179
    new-instance v1, Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-direct {v1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;-><init>()V

    sput-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    .line 181
    :cond_e
    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 177
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S
    .registers 4
    .param p0, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "offset"    # I

    .line 740
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .registers 6
    .param p1, "handshakeStatus"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1104
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_5d

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_9

    goto :goto_5d

    .line 1110
    :cond_9
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-nez v0, :cond_e

    .line 1112
    return-void

    .line 1116
    :cond_e
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1117
    const/4 v1, 0x0

    :try_start_12
    iget-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v2, :cond_18

    .line 1120
    monitor-exit v0

    return-void

    .line 1123
    :cond_18
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_58

    .line 1128
    :cond_29
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->isEnableRenegotiation()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1130
    const/4 v1, 0x1

    goto :goto_35

    .line 1133
    :cond_31
    const/4 v1, 0x0

    .line 1135
    .local v1, "renegotiate":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    .line 1137
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_5a

    .line 1139
    if-eqz v1, :cond_3c

    .line 1141
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_57

    .line 1144
    :cond_3c
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "renegotiation attempted by peer; closing the connection"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1150
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 1152
    :goto_57
    return-void

    .line 1125
    .end local v1    # "renegotiate":Z
    :cond_58
    :goto_58
    :try_start_58
    monitor-exit v0

    return-void

    .line 1137
    :catchall_5a
    move-exception v2

    .restart local v1    # "renegotiate":Z
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5a

    throw v2

    .line 1107
    .end local v1    # "renegotiate":Z
    :cond_5d
    :goto_5d
    return-void
.end method

.method private ignoreException(Ljava/lang/Throwable;)Z
    .registers 15
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 578
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    const/4 v1, 0x0

    if-nez v0, :cond_98

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 579
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    .line 584
    return v3

    .line 588
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 589
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    move-object v4, v2

    .local v4, "arr$":[Ljava/lang/StackTraceElement;
    array-length v5, v4

    const/4 v6, 0x0

    .local v5, "len$":I
    .local v6, "i$":I
    :goto_32
    if-ge v6, v5, :cond_98

    aget-object v7, v4, v6

    .line 590
    .local v7, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 591
    .local v8, "classname":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, "methodname":Ljava/lang/String;
    const-string v10, "org.jboss.netty."

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 595
    goto :goto_95

    .line 599
    :cond_47
    const-string v10, "read"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_50

    .line 600
    goto :goto_95

    .line 605
    :cond_50
    sget-object v10, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 606
    return v3

    .line 613
    :cond_5d
    :try_start_5d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 615
    .local v10, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v11, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_93

    const-class v11, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_7a

    goto :goto_93

    .line 621
    :cond_7a
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v11

    const/4 v12, 0x7

    if-lt v11, v12, :cond_92

    const-string v11, "com.sun.nio.sctp.SctpChannel"

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5d .. :try_end_8f} :catch_94

    if-eqz v11, :cond_92

    .line 623
    return v3

    .line 627
    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_92
    goto :goto_95

    .line 617
    .restart local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_93
    :goto_93
    return v3

    .line 625
    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_94
    move-exception v10

    .line 589
    .end local v7    # "element":Ljava/lang/StackTraceElement;
    .end local v8    # "classname":Ljava/lang/String;
    .end local v9    # "methodname":Ljava/lang/String;
    :goto_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 632
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v4    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_98
    return v1
.end method

.method private offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 5
    .param p1, "encryptedWrite"    # Lorg/jboss/netty/channel/MessageEvent;

    .line 892
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->tryLock()Z

    move-result v0

    .line 894
    .local v0, "locked":Z
    :try_start_6
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_15

    .line 895
    nop

    .line 900
    if-eqz v0, :cond_13

    .line 897
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    .line 899
    :cond_13
    nop

    .line 900
    return-void

    .line 896
    :catchall_15
    move-exception v1

    .line 897
    if-eqz v0, :cond_1d

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    .line 896
    :cond_1d
    throw v1
.end method

.method private runDelegatedTasks()V
    .registers 4

    .line 1157
    const/4 v0, 0x0

    .local v0, "task":Ljava/lang/Runnable;
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1158
    :try_start_4
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v2

    .end local v0    # "task":Ljava/lang/Runnable;
    move-object v0, v2

    .line 1159
    .restart local v0    # "task":Ljava/lang/Runnable;
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1b

    .line 1161
    if-nez v0, :cond_10

    .line 1162
    nop

    .line 1173
    .end local v0    # "task":Ljava/lang/Runnable;
    return-void

    .line 1165
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_10
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/jboss/netty/handler/ssl/SslHandler$2;

    invoke-direct {v2, p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler$2;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1172
    .end local v0    # "task":Ljava/lang/Runnable;
    goto :goto_1

    .line 1159
    .restart local v0    # "task":Ljava/lang/Runnable;
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method private setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V
    .registers 7
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "cause"    # Ljavax/net/ssl/SSLException;

    .line 1189
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_3
    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-nez v1, :cond_9

    .line 1191
    monitor-exit v0

    return-void

    .line 1193
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    .line 1194
    iput-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    .line 1196
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-nez v1, :cond_18

    .line 1197
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 1203
    :cond_18
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_3a

    .line 1206
    :try_start_1d
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_22
    .catch Ljavax/net/ssl/SSLException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_3a

    .line 1214
    goto :goto_33

    .line 1207
    :catch_23
    move-exception v1

    .line 1208
    .local v1, "e":Ljavax/net/ssl/SSLException;
    :try_start_24
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1209
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "SSLEngine.closeInbound() raised an exception after a handshake failure."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1215
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :cond_33
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_3a

    .line 1217
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, p2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 1218
    return-void

    .line 1215
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V
    .registers 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 1176
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    .line 1178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    .line 1180
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-nez v1, :cond_13

    .line 1181
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 1183
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1a

    .line 1185
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 1186
    return-void

    .line 1183
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 15
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1006
    invoke-interface {p3, p4, p5}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1007
    .local v0, "inNetBuf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1010
    .local v1, "outAppBuf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    .line 1014
    .local v2, "needsWrap":Z
    .local v4, "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_d
    const/4 v5, 0x0

    .line 1015
    .local v5, "needsHandshake":Z
    :try_start_e
    iget-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_11
    .catch Ljavax/net/ssl/SSLException; {:try_start_e .. :try_end_11} :catch_e6
    .catchall {:try_start_e .. :try_end_11} :catchall_e4

    .line 1016
    :try_start_11
    iget-boolean v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-nez v7, :cond_32

    iget-boolean v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-nez v7, :cond_32

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v7

    if-nez v7, :cond_32

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v7

    if-nez v7, :cond_32

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v7

    if-nez v7, :cond_32

    .line 1019
    const/4 v5, 0x1

    .line 1022
    :cond_32
    monitor-exit v6
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_e1

    .line 1023
    if-eqz v5, :cond_38

    .line 1024
    :try_start_35
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    .line 1027
    :cond_38
    iget-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3b
    .catch Ljavax/net/ssl/SSLException; {:try_start_35 .. :try_end_3b} :catch_e6
    .catchall {:try_start_35 .. :try_end_3b} :catchall_e4

    .line 1028
    :try_start_3b
    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7, v0, v1}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v7

    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    move-object v4, v7

    .line 1029
    .restart local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    monitor-exit v6
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_de

    .line 1032
    :try_start_43
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v6, v7, :cond_50

    .line 1033
    iget-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

    invoke-virtual {v6}, Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;->setClosed()V

    .line 1037
    :cond_50
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 1038
    .local v6, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {p0, v6}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 1039
    sget-object v7, Lorg/jboss/netty/handler/ssl/SslHandler$4;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_f2

    .line 1060
    new-instance v3, Ljava/lang/IllegalStateException;

    goto :goto_c9

    .line 1057
    :pswitch_65
    const/4 v2, 0x1

    .line 1058
    goto :goto_7f

    .line 1053
    :pswitch_67
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    .line 1054
    const/4 v2, 0x1

    .line 1055
    goto :goto_7f

    .line 1050
    :pswitch_6c
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    .line 1051
    goto :goto_c7

    .line 1041
    :pswitch_70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_7f

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v7

    if-nez v7, :cond_7f

    .line 1042
    goto :goto_c7

    .line 1066
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v5    # "needsHandshake":Z
    .end local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_7f
    :goto_7f
    if-eqz v2, :cond_94

    .line 1075
    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/NonReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-nez v4, :cond_94

    .line 1077
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 1081
    :cond_94
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1083
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 1084
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 1089
    .local v3, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V
    :try_end_b4
    .catch Ljavax/net/ssl/SSLException; {:try_start_43 .. :try_end_b4} :catch_e6
    .catchall {:try_start_43 .. :try_end_b4} :catchall_e4

    .line 1091
    nop

    .line 1099
    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v4, v1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    .line 1091
    return-object v3

    .line 1093
    .end local v3    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_bb
    nop

    .line 1099
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    iget-object v5, v4, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v5, v1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    .line 1093
    return-object v3

    .line 1047
    .local v4, "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v5    # "needsHandshake":Z
    .restart local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :pswitch_c3
    :try_start_c3
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 1048
    nop

    .line 1064
    .end local v5    # "needsHandshake":Z
    .end local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_c7
    goto/16 :goto_d

    .line 1060
    .restart local v5    # "needsHandshake":Z
    .restart local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_c9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown handshake status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_de
    .catch Ljavax/net/ssl/SSLException; {:try_start_c3 .. :try_end_de} :catch_e6
    .catchall {:try_start_c3 .. :try_end_de} :catchall_e4

    .line 1029
    .end local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catchall_de
    move-exception v3

    :try_start_df
    monitor-exit v6
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    :try_start_e0
    throw v3
    :try_end_e1
    .catch Ljavax/net/ssl/SSLException; {:try_start_e0 .. :try_end_e1} :catch_e6
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e4

    .line 1022
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_e1
    move-exception v3

    :try_start_e2
    monitor-exit v6
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v3
    :try_end_e4
    .catch Ljavax/net/ssl/SSLException; {:try_start_e3 .. :try_end_e4} :catch_e6
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e4

    .line 1099
    .end local v2    # "needsWrap":Z
    .end local v5    # "needsHandshake":Z
    :catchall_e4
    move-exception v2

    goto :goto_eb

    .line 1095
    :catch_e6
    move-exception v2

    .line 1096
    .local v2, "e":Ljavax/net/ssl/SSLException;
    :try_start_e7
    invoke-direct {p0, p2, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    .line 1097
    throw v2
    :try_end_eb
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_e4

    .line 1099
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    :goto_eb
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    iget-object v4, v3, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v4, v1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    throw v2

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_70
        :pswitch_6c
        :pswitch_67
        :pswitch_65
    .end packed-switch
.end method

.method private wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 21
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 746
    const/4 v0, 0x0

    .line 748
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 749
    .local v2, "outNetBuf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    .line 750
    .local v3, "success":Z
    const/4 v4, 0x0

    .line 751
    .local v4, "offered":Z
    const/4 v5, 0x0

    move-object/from16 v6, p1

    move-object v7, v0

    move-object v8, v2

    move v9, v4

    move-object v2, v1

    move v4, v3

    move-object/from16 v3, p2

    .line 758
    .end local v0    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local p1    # "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .end local p2    # "channel":Lorg/jboss/netty/channel/Channel;
    .local v2, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    .local v3, "channel":Lorg/jboss/netty/channel/Channel;
    .local v4, "success":Z
    .local v5, "needsUnwrap":Z
    .local v6, "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .local v7, "future":Lorg/jboss/netty/channel/ChannelFuture;
    .local v8, "outNetBuf":Ljava/nio/ByteBuffer;
    .local v9, "offered":Z
    :goto_15
    :try_start_15
    iget-object v11, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v11
    :try_end_18
    .catch Ljavax/net/ssl/SSLException; {:try_start_15 .. :try_end_18} :catch_16f
    .catchall {:try_start_15 .. :try_end_18} :catchall_16d

    .line 759
    :try_start_18
    iget-object v0, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    move-object v12, v0

    .line 760
    .local v12, "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    if-nez v12, :cond_28

    .line 761
    monitor-exit v11

    .line 849
    :goto_24
    move v0, v9

    move-object v9, v3

    goto/16 :goto_f1

    .line 764
    :cond_28
    iget-object v0, v12, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->outAppBuf:Ljava/nio/ByteBuffer;

    move-object v13, v0

    .line 765
    .local v13, "outAppBuf":Ljava/nio/ByteBuffer;
    if-nez v13, :cond_46

    .line 767
    iget-object v0, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 768
    new-instance v0, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    iget-object v14, v12, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    sget-object v15, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v10

    invoke-direct {v0, v3, v14, v15, v10}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_16a

    .line 773
    const/4 v0, 0x1

    .line 847
    .end local v12    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .end local v13    # "outAppBuf":Ljava/nio/ByteBuffer;
    :goto_43
    move v9, v0

    goto/16 :goto_eb

    .line 775
    .restart local v12    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .restart local v13    # "outAppBuf":Ljava/nio/ByteBuffer;
    :cond_46
    const/4 v10, 0x0

    move-object v14, v10

    .line 777
    .local v14, "result":Ljavax/net/ssl/SSLEngineResult;
    :try_start_48
    iget-object v15, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_15a

    .line 778
    :try_start_4b
    iget-object v0, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, v13, v8}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    move-object v14, v0

    .line 779
    monitor-exit v15
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_157

    .line 780
    nop

    .line 888
    :try_start_54
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 782
    iget-object v0, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 784
    :cond_5f
    nop

    .line 786
    invoke-virtual {v14}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v0

    if-lez v0, :cond_a7

    .line 787
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 788
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 789
    .local v0, "remaining":I
    iget-object v15, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v15}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v15

    invoke-interface {v15}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v15

    invoke-interface {v15}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v15

    invoke-interface {v15, v0}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v15

    .line 795
    .local v15, "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v15, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    .line 796
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 798
    iget-object v10, v12, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->outAppBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_93

    .line 801
    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v10

    move-object v7, v10

    goto :goto_96

    .line 803
    :cond_93
    iget-object v10, v12, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    move-object v7, v10

    .line 806
    :goto_96
    new-instance v10, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    move/from16 v17, v0

    .end local v0    # "remaining":I
    .local v17, "remaining":I
    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-direct {v10, v3, v7, v15, v0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    move-object v0, v10

    .line 808
    .local v0, "encryptedWrite":Lorg/jboss/netty/channel/MessageEvent;
    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V

    .line 809
    const/4 v0, 0x1

    .line 810
    .end local v9    # "offered":Z
    .end local v17    # "remaining":I
    .local v0, "offered":Z
    goto :goto_43

    .end local v0    # "offered":Z
    .end local v15    # "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v9    # "offered":Z
    :cond_a7
    invoke-virtual {v14}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v10, :cond_b3

    .line 813
    const/4 v4, 0x0

    .line 814
    monitor-exit v11

    goto/16 :goto_24

    .line 816
    :cond_b3
    invoke-virtual {v14}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 817
    .local v0, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 818
    sget-object v10, Lorg/jboss/netty/handler/ssl/SslHandler$4;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v15

    aget v10, v10, v15

    packed-switch v10, :pswitch_data_1b2

    .line 841
    new-instance v10, Ljava/lang/IllegalStateException;

    goto/16 :goto_142

    .line 833
    :pswitch_c9
    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v10, :cond_d0

    .line 834
    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    .line 836
    :cond_d0
    invoke-virtual {v14}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    sget-object v15, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v10, v15, :cond_d9

    .line 837
    const/4 v4, 0x0

    .line 839
    :cond_d9
    monitor-exit v11

    goto/16 :goto_24

    .line 829
    :pswitch_dc
    invoke-direct {v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    .line 830
    goto :goto_eb

    .line 826
    :pswitch_e0
    const/4 v5, 0x1

    .line 827
    monitor-exit v11

    goto/16 :goto_24

    .line 820
    :pswitch_e4
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 821
    nop

    .line 847
    .end local v0    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v12    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .end local v13    # "outAppBuf":Ljava/nio/ByteBuffer;
    .end local v14    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_eb
    monitor-exit v11

    goto/16 :goto_15

    .line 823
    .restart local v0    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v12    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .restart local v13    # "outAppBuf":Ljava/nio/ByteBuffer;
    .restart local v14    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_ee
    monitor-exit v11
    :try_end_ef
    .catchall {:try_start_54 .. :try_end_ef} :catchall_16a

    goto/16 :goto_24

    .line 849
    .end local v3    # "channel":Lorg/jboss/netty/channel/Channel;
    .end local v12    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .end local v13    # "outAppBuf":Ljava/nio/ByteBuffer;
    .end local v14    # "result":Ljavax/net/ssl/SSLEngineResult;
    .local v0, "offered":Z
    .local v9, "channel":Lorg/jboss/netty/channel/Channel;
    :goto_f1
    nop

    .line 782
    move-object v3, v6

    .end local v6    # "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .local v3, "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    move-object v6, v7

    .end local v7    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .local v6, "future":Lorg/jboss/netty/channel/ChannelFuture;
    move-object v13, v8

    .end local v8    # "outNetBuf":Ljava/nio/ByteBuffer;
    .local v13, "outNetBuf":Ljava/nio/ByteBuffer;
    move v14, v0

    .end local v0    # "offered":Z
    .local v14, "offered":Z
    iget-object v0, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0, v13}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    .line 856
    if-eqz v14, :cond_100

    .line 857
    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/ssl/SslHandler;->flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 860
    :cond_100
    if-nez v4, :cond_12e

    .line 861
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v7, "SSLEngine already closed"

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    .local v0, "cause":Ljava/lang/IllegalStateException;
    .local v16, "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :goto_10b
    move-object v7, v0

    .line 869
    .end local v0    # "cause":Ljava/lang/IllegalStateException;
    .local v7, "cause":Ljava/lang/IllegalStateException;
    iget-object v8, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v8

    .line 870
    :try_start_10f
    iget-object v0, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :try_end_117
    .catchall {:try_start_10f .. :try_end_117} :catchall_12b

    .end local v16    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    move-object v10, v0

    .line 871
    .local v10, "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    if-nez v10, :cond_120

    .line 872
    :try_start_11a
    monitor-exit v8

    goto :goto_12e

    .line 874
    :catchall_11c
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_12c

    :cond_120
    monitor-exit v8
    :try_end_121
    .catchall {:try_start_11a .. :try_end_121} :catchall_11c

    .line 876
    iget-object v0, v10, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v7}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 877
    .end local v10    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    nop

    .line 861
    move-object v0, v7

    move-object/from16 v16, v10

    goto :goto_10b

    .line 874
    .restart local v16    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :catchall_12b
    move-exception v0

    :goto_12c
    :try_start_12c
    monitor-exit v8
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12b

    throw v0

    .line 878
    .end local v7    # "cause":Ljava/lang/IllegalStateException;
    .end local v16    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :cond_12e
    :goto_12e
    nop

    .line 879
    nop

    .line 881
    if-eqz v5, :cond_13b

    .line 882
    sget-object v10, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-direct/range {v7 .. v12}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 885
    :cond_13b
    if-nez v6, :cond_141

    .line 886
    invoke-static {v9}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    .line 888
    :cond_141
    return-object v6

    .line 841
    .local v0, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v3, "channel":Lorg/jboss/netty/channel/Channel;
    .local v6, "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .local v7, "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v8    # "outNetBuf":Ljava/nio/ByteBuffer;
    .local v9, "offered":Z
    .restart local v12    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .local v13, "outAppBuf":Ljava/nio/ByteBuffer;
    .local v14, "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_142
    :try_start_142
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown handshake status: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_157
    .catchall {:try_start_142 .. :try_end_157} :catchall_16a

    .line 779
    .end local v0    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catchall_157
    move-exception v0

    :try_start_158
    monitor-exit v15
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_157

    :try_start_159
    throw v0
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_15a

    .line 781
    :catchall_15a
    move-exception v0

    .line 782
    move-object v1, v14

    .end local v14    # "result":Ljavax/net/ssl/SSLEngineResult;
    .local v1, "result":Ljavax/net/ssl/SSLEngineResult;
    move-object v10, v12

    .end local v12    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .restart local v10    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    move-object v12, v13

    .end local v13    # "outAppBuf":Ljava/nio/ByteBuffer;
    .local v12, "outAppBuf":Ljava/nio/ByteBuffer;
    :try_start_15e
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v13

    if-nez v13, :cond_169

    iget-object v13, v2, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 781
    :cond_169
    throw v0

    .line 847
    .end local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v10    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .end local v12    # "outAppBuf":Ljava/nio/ByteBuffer;
    :catchall_16a
    move-exception v0

    monitor-exit v11
    :try_end_16c
    .catchall {:try_start_15e .. :try_end_16c} :catchall_16a

    :try_start_16c
    throw v0
    :try_end_16d
    .catch Ljavax/net/ssl/SSLException; {:try_start_16c .. :try_end_16d} :catch_16f
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16d

    .line 854
    :catchall_16d
    move-exception v0

    goto :goto_175

    .line 849
    :catch_16f
    move-exception v0

    .line 850
    .local v0, "e":Ljavax/net/ssl/SSLException;
    const/4 v4, 0x0

    .line 851
    :try_start_171
    invoke-direct {v2, v3, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    .line 852
    throw v0
    :try_end_175
    .catchall {:try_start_171 .. :try_end_175} :catchall_16d

    .line 854
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :goto_175
    nop

    .line 878
    move-object v1, v2

    .end local v2    # "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    .local v1, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    move-object v2, v6

    .end local v6    # "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .local v2, "context":Lorg/jboss/netty/channel/ChannelHandlerContext;
    move-object v6, v7

    .end local v7    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .local v6, "future":Lorg/jboss/netty/channel/ChannelFuture;
    move-object v7, v8

    .end local v8    # "outNetBuf":Ljava/nio/ByteBuffer;
    .local v7, "outNetBuf":Ljava/nio/ByteBuffer;
    move v8, v9

    .end local v9    # "offered":Z
    .local v8, "offered":Z
    iget-object v9, v1, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v9, v7}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    .line 856
    if-eqz v8, :cond_185

    .line 857
    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 860
    :cond_185
    if-nez v4, :cond_1b0

    .line 861
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "SSLEngine already closed"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    .line 869
    .local v9, "cause":Ljava/lang/IllegalStateException;
    .restart local v16    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :goto_190
    iget-object v10, v1, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v10

    .line 870
    :try_start_193
    iget-object v11, v1, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v11}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :try_end_19b
    .catchall {:try_start_193 .. :try_end_19b} :catchall_1ad

    .line 871
    .end local v16    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .local v11, "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    if-eqz v11, :cond_1a7

    .line 874
    :try_start_19d
    monitor-exit v10
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_1a9

    .line 876
    iget-object v10, v11, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v10, v9}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 877
    .end local v11    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    nop

    .line 861
    move-object/from16 v16, v11

    goto :goto_190

    .line 872
    :cond_1a7
    :try_start_1a7
    monitor-exit v10
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1a9

    goto :goto_1b0

    .line 874
    .restart local v11    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :catchall_1a9
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_1ae

    .end local v11    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    .restart local v16    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :catchall_1ad
    move-exception v0

    :goto_1ae
    :try_start_1ae
    monitor-exit v10
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_1ad

    throw v0

    .line 878
    .end local v9    # "cause":Ljava/lang/IllegalStateException;
    .end local v16    # "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :cond_1b0
    :goto_1b0
    nop

    .line 854
    throw v0

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_e4
        :pswitch_e0
        :pswitch_dc
        :pswitch_c9
        :pswitch_c9
    .end packed-switch
.end method

.method private wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 14
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 921
    const/4 v0, 0x0

    .line 922
    .local v0, "future":Lorg/jboss/netty/channel/ChannelFuture;
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 927
    .local v1, "outNetBuf":Ljava/nio/ByteBuffer;
    .local v2, "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_8
    :try_start_8
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_b} :catch_ae
    .catchall {:try_start_8 .. :try_end_b} :catchall_ac

    .line 928
    :try_start_b
    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    sget-object v5, Lorg/jboss/netty/handler/ssl/SslHandler;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .end local v2    # "result":Ljavax/net/ssl/SSLEngineResult;
    move-object v2, v4

    .line 929
    .restart local v2    # "result":Ljavax/net/ssl/SSLEngineResult;
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_a9

    .line 931
    :try_start_15
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-lez v3, :cond_48

    .line 932
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 933
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 941
    .local v3, "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    .line 942
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 944
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    move-object v0, v4

    .line 945
    new-instance v4, Lorg/jboss/netty/handler/ssl/SslHandler$1;

    invoke-direct {v4, p0}, Lorg/jboss/netty/handler/ssl/SslHandler$1;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V

    invoke-interface {v0, v4}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 956
    invoke-static {p1, v0, v3}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 959
    .end local v3    # "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_48
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 960
    .local v3, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 961
    sget-object v4, Lorg/jboss/netty/handler/ssl/SslHandler$4;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_bc

    .line 981
    new-instance v4, Ljava/lang/IllegalStateException;

    goto :goto_94

    .line 963
    :pswitch_5d
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    .line 964
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    .line 965
    goto :goto_7c

    .line 967
    :pswitch_64
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    .line 968
    goto :goto_7c

    .line 970
    :pswitch_68
    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 974
    sget-object v8, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_7c

    .line 979
    :pswitch_7b
    nop

    .line 985
    :cond_7c
    :goto_7c
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v4
    :try_end_80
    .catch Ljavax/net/ssl/SSLException; {:try_start_15 .. :try_end_80} :catch_ae
    .catchall {:try_start_15 .. :try_end_80} :catchall_ac

    if-nez v4, :cond_92

    .line 986
    nop

    .line 989
    .end local v3    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    nop

    .line 1000
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    iget-object v4, v3, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v4, v1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    .line 994
    nop

    .line 996
    if-nez v0, :cond_91

    .line 997
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 1000
    :cond_91
    return-object v0

    .line 988
    .end local v3    # "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    :cond_92
    goto/16 :goto_8

    .line 981
    .local v3, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_94
    :try_start_94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected handshake status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a9
    .catch Ljavax/net/ssl/SSLException; {:try_start_94 .. :try_end_a9} :catch_ae
    .catchall {:try_start_94 .. :try_end_a9} :catchall_ac

    .line 929
    .end local v3    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catchall_a9
    move-exception v4

    :try_start_aa
    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw v4
    :try_end_ac
    .catch Ljavax/net/ssl/SSLException; {:try_start_ab .. :try_end_ac} :catch_ae
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    .line 993
    :catchall_ac
    move-exception v3

    goto :goto_b3

    .line 989
    :catch_ae
    move-exception v3

    .line 990
    .local v3, "e":Ljavax/net/ssl/SSLException;
    :try_start_af
    invoke-direct {p0, p2, v3}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    .line 991
    throw v3
    :try_end_b3
    .catchall {:try_start_af .. :try_end_b3} :catchall_ac

    .line 993
    .end local v3    # "e":Ljavax/net/ssl/SSLException;
    :goto_b3
    nop

    .line 1000
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    iget-object v5, v4, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v5, v1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    .line 993
    throw v3

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_68
        :pswitch_64
        :pswitch_5d
        :pswitch_7b
    .end packed-switch
.end method


# virtual methods
.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1304
    const/4 v0, 0x0

    .line 1306
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    .line 1307
    .local v1, "pw":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    if-nez v1, :cond_2f

    .line 1308
    nop

    .line 1318
    .end local v1    # "pw":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :goto_c
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 1319
    .local v1, "ev":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v1, :cond_1d

    .line 1320
    nop

    .line 1329
    .end local v1    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v0, :cond_1c

    .line 1330
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 1332
    :cond_1c
    return-void

    .line 1322
    .restart local v1    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    :cond_1d
    if-nez v0, :cond_27

    .line 1323
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to write data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1325
    :cond_27
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 1327
    .end local v1    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    goto :goto_c

    .line 1310
    .local v1, "pw":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :cond_2f
    if-nez v0, :cond_39

    .line 1311
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to write data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1313
    :cond_39
    iget-object v2, v1, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 1315
    .end local v1    # "pw":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    goto :goto_1
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1293
    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 1294
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 1295
    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1369
    const/4 v0, 0x0

    .line 1370
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v1

    .line 1372
    :goto_4
    :try_start_4
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    .line 1373
    .local v2, "pw":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    if-nez v2, :cond_34

    .line 1374
    nop

    .line 1385
    .end local v2    # "pw":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :goto_f
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    .line 1386
    .local v2, "ev":Lorg/jboss/netty/channel/MessageEvent;
    if-nez v2, :cond_24

    .line 1387
    nop

    .line 1395
    .end local v2    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_42

    .line 1397
    if-eqz v0, :cond_20

    .line 1398
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1401
    :cond_20
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 1402
    return-void

    .line 1389
    .restart local v2    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    :cond_24
    if-nez v0, :cond_2c

    .line 1390
    :try_start_26
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v0, v3

    .line 1392
    :cond_2c
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 1394
    .end local v2    # "ev":Lorg/jboss/netty/channel/MessageEvent;
    goto :goto_f

    .line 1376
    .local v2, "pw":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :cond_34
    if-nez v0, :cond_3c

    .line 1377
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v0, v3

    .line 1379
    :cond_3c
    iget-object v3, v2, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v3, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 1381
    .end local v2    # "pw":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    goto :goto_4

    .line 1395
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_42

    throw v2
.end method

.method public channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1340
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->issueHandshake:Z

    if-eqz v0, :cond_11

    .line 1343
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/ssl/SslHandler$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler$3;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_14

    .line 1358
    :cond_11
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 1360
    :goto_14
    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 11
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v1, :cond_11

    .line 518
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 520
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_84

    .line 523
    :try_start_12
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_4d

    .line 524
    nop

    .line 537
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    sget-object v5, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 526
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 527
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_4a

    .line 529
    :try_start_34
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_39
    .catch Ljavax/net/ssl/SSLException; {:try_start_34 .. :try_end_39} :catch_3a

    .line 534
    goto :goto_4a

    .line 530
    :catch_3a
    move-exception v0

    .line 531
    .local v0, "ex":Ljavax/net/ssl/SSLException;
    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 532
    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to clean up SSLEngine."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    .end local v0    # "ex":Ljavax/net/ssl/SSLException;
    :cond_4a
    :goto_4a
    nop

    .line 536
    nop

    .line 537
    return-void

    .line 525
    :catchall_4d
    move-exception v0

    .line 534
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    sget-object v4, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 526
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 527
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_82

    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v1, :cond_82

    .line 529
    :try_start_6c
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_71
    .catch Ljavax/net/ssl/SSLException; {:try_start_6c .. :try_end_71} :catch_72

    .line 534
    goto :goto_82

    .line 530
    :catch_72
    move-exception v1

    .line 531
    .local v1, "ex":Ljavax/net/ssl/SSLException;
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 532
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to clean up SSLEngine."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    .end local v1    # "ex":Ljavax/net/ssl/SSLException;
    :cond_82
    :goto_82
    nop

    .line 525
    throw v0

    .line 520
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v1
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 5

    .line 398
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 399
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    .line 401
    .local v1, "channel":Lorg/jboss/netty/channel/Channel;
    :try_start_6
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 402
    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2
    :try_end_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_f} :catch_10

    return-object v2

    .line 403
    :catch_10
    move-exception v2

    .line 404
    .local v2, "e":Ljavax/net/ssl/SSLException;
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 405
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    return-object v3
.end method

.method public close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 14
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 639
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b0

    .line 640
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_e

    .line 641
    return-object v1

    .line 646
    :cond_e
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    packed-switch v0, :pswitch_data_d6

    .line 655
    const/4 v0, 0x0

    goto :goto_1d

    .line 651
    :pswitch_1b
    const/4 v0, 0x1

    .line 652
    .local v0, "tls":Z
    nop

    .line 658
    :goto_1d
    const/4 v4, 0x3

    if-eqz v0, :cond_43

    .line 660
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v5

    .line 661
    .local v5, "majorVersion":I
    if-ne v5, v4, :cond_42

    .line 663
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {p3, v6}, Lorg/jboss/netty/handler/ssl/SslHandler;->getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    add-int/2addr v6, v3

    iput v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    .line 664
    iget v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    if-gt v6, v3, :cond_43

    .line 666
    const/4 v0, 0x0

    goto :goto_43

    .line 670
    :cond_42
    const/4 v0, 0x0

    .line 674
    .end local v5    # "majorVersion":I
    :cond_43
    :goto_43
    if-nez v0, :cond_af

    .line 676
    const/4 v3, 0x1

    .line 677
    .local v3, "sslv2":Z
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v5

    and-int/lit16 v5, v5, 0x80

    const/4 v6, 0x2

    if-eqz v5, :cond_55

    const/4 v5, 0x2

    goto :goto_56

    :cond_55
    const/4 v5, 0x3

    .line 679
    .local v5, "headerLength":I
    :goto_56
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v7

    .line 681
    .local v7, "majorVersion":I
    if-eq v7, v6, :cond_68

    if-ne v7, v4, :cond_66

    goto :goto_68

    .line 692
    :cond_66
    const/4 v3, 0x0

    goto :goto_8a

    .line 683
    :cond_68
    :goto_68
    if-ne v5, v6, :cond_78

    .line 684
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    invoke-static {p3, v4}, Lorg/jboss/netty/handler/ssl/SslHandler;->getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S

    move-result v4

    and-int/lit16 v4, v4, 0x7fff

    add-int/2addr v4, v6

    iput v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    goto :goto_85

    .line 686
    :cond_78
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    invoke-static {p3, v6}, Lorg/jboss/netty/handler/ssl/SslHandler;->getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S

    move-result v6

    and-int/lit16 v6, v6, 0x3fff

    add-int/2addr v6, v4

    iput v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    .line 688
    :goto_85
    iget v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    if-gt v4, v5, :cond_8a

    .line 689
    const/4 v3, 0x0

    .line 695
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_8d

    .end local v3    # "sslv2":Z
    .end local v5    # "headerLength":I
    .end local v7    # "majorVersion":I
    goto :goto_af

    .line 697
    .restart local v3    # "sslv2":Z
    .restart local v5    # "headerLength":I
    .restart local v7    # "majorVersion":I
    :cond_8d
    new-instance v1, Lorg/jboss/netty/handler/ssl/NotSslRecordException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not an SSL/TLS record: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .line 699
    .local v1, "e":Lorg/jboss/netty/handler/ssl/NotSslRecordException;
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 700
    throw v1

    .line 704
    .end local v1    # "e":Lorg/jboss/netty/handler/ssl/NotSslRecordException;
    .end local v3    # "sslv2":Z
    .end local v5    # "headerLength":I
    .end local v7    # "majorVersion":I
    :cond_af
    :goto_af
    nop

    .line 708
    .end local v0    # "tls":Z
    :cond_b0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    if-ge v0, v3, :cond_b9

    .line 709
    return-object v1

    .line 726
    :cond_b9
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 727
    .local v0, "packetOffset":I
    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 729
    :try_start_c2
    iget v9, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, v0

    invoke-direct/range {v4 .. v9}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1
    :try_end_cd
    .catchall {:try_start_c2 .. :try_end_cd} :catchall_d1

    .line 731
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    iput v2, v3, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    .line 729
    return-object v1

    .line 731
    .end local v3    # "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    :catchall_d1
    move-exception v1

    move-object v3, p0

    .restart local v3    # "this":Lorg/jboss/netty/handler/ssl/SslHandler;
    iput v2, v3, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    throw v1

    :pswitch_data_d6
    .packed-switch 0x14
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 544
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_36

    .line 545
    instance-of v1, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_2f

    .line 546
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_f
    iget v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    if-lez v2, :cond_2a

    .line 548
    iget v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    .line 549
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 550
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Swallowing an exception raised while writing non-app data"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    :cond_28
    monitor-exit v1

    return-void

    .line 557
    :cond_2a
    monitor-exit v1

    goto :goto_36

    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_2c

    throw v2

    .line 559
    :cond_2f
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 560
    return-void

    .line 565
    :cond_36
    :goto_36
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 566
    return-void
.end method

.method public getEngine()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .line 335
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public getSSLEngineInboundCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 2

    .line 456
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 9
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 463
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_2d

    .line 464
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 465
    .local v0, "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler$4;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_98

    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    goto :goto_2d

    .line 469
    .restart local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :pswitch_17
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 470
    :cond_29
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 471
    return-void

    .line 475
    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_2d
    :goto_2d
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_35

    .line 476
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 477
    return-void

    .line 480
    :cond_35
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 481
    .local v0, "e":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_44

    .line 482
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 483
    return-void

    .line 488
    :cond_44
    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->startTls:Z

    if-eqz v1, :cond_56

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 489
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 490
    return-void

    .line 494
    :cond_56
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 497
    .local v1, "msg":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 498
    new-instance v2, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    invoke-interface {v1, v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;-><init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V

    goto :goto_82

    .line 500
    :cond_78
    new-instance v2, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;-><init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V

    .line 502
    .local v2, "pendingWrite":Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :goto_82
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v3

    .line 503
    :try_start_85
    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v4

    .line 504
    .local v4, "offered":Z
    nop

    .line 505
    .end local v4    # "offered":Z
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_95

    .line 507
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 508
    return-void

    .line 505
    :catchall_95
    move-exception v4

    :try_start_96
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v4

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public handshake()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 8

    .line 345
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->isEnableRenegotiation()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 346
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "renegotiation disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_13
    :goto_13
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 350
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    .line 352
    .local v1, "channel":Lorg/jboss/netty/channel/Channel;
    const/4 v2, 0x0

    .line 354
    .local v2, "exception":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 355
    const/4 v4, 0x0

    :try_start_1e
    iget-boolean v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v5, :cond_26

    .line 356
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    monitor-exit v3

    return-object v5

    .line 358
    :cond_26
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_55

    .line 360
    :try_start_29
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 361
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    .line 362
    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    iput-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_37} :catch_39
    .catchall {:try_start_29 .. :try_end_37} :catchall_55

    move-object v4, v5

    .line 366
    .local v4, "handshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    goto :goto_42

    .line 363
    .end local v4    # "handshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :catch_39
    move-exception v5

    .line 364
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3a
    invoke-static {v1, v5}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    iput-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    move-object v4, v6

    .line 365
    .restart local v4    # "handshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    move-object v2, v5

    .line 368
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_55

    .line 370
    if-nez v2, :cond_51

    .line 372
    :try_start_45
    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_48
    .catch Ljavax/net/ssl/SSLException; {:try_start_45 .. :try_end_48} :catch_49

    .line 377
    :goto_48
    goto :goto_54

    .line 373
    :catch_49
    move-exception v3

    .line 374
    .local v3, "e":Ljavax/net/ssl/SSLException;
    invoke-interface {v4, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 376
    invoke-static {v0, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljavax/net/ssl/SSLException;
    goto :goto_48

    .line 379
    :cond_51
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 382
    :goto_54
    return-object v4

    .line 368
    .end local v4    # "handshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :catchall_55
    move-exception v5

    .restart local v4    # "handshakeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :try_start_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v5
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public isEnableRenegotiation()Z
    .registers 2

    .line 421
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    return v0
.end method

.method public isIssueHandshake()Z
    .registers 2

    .line 444
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->issueHandshake:Z

    return v0
.end method

.method public setEnableRenegotiation(Z)V
    .registers 2
    .param p1, "enableRenegotiation"    # Z

    .line 428
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    .line 429
    return-void
.end method

.method public setIssueHandshake(Z)V
    .registers 2
    .param p1, "issueHandshake"    # Z

    .line 437
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->issueHandshake:Z

    .line 438
    return-void
.end method
