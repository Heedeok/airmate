.class public Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
.super Ljava/lang/Object;
.source "ChunkedWriteHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private currentEvent:Lorg/jboss/netty/channel/MessageEvent;

.field private final flush:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    nop

    .line 79
    const-class v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-class v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V
    .registers 4
    .param p0, "chunks"    # Lorg/jboss/netty/handler/stream/ChunkedInput;

    .line 307
    :try_start_0
    invoke-interface {p0}, Lorg/jboss/netty/handler/stream/ChunkedInput;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 312
    goto :goto_14

    .line 308
    :catch_4
    move-exception v0

    .line 309
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 310
    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to close a chunked input."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_14
    :goto_14
    return-void
.end method

.method private discard(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "fireNow"    # Z

    .line 146
    const/4 v0, 0x0

    move-object v1, v0

    .line 149
    .local v1, "cause":Ljava/nio/channels/ClosedChannelException;
    :goto_2
    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 151
    .local v2, "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    iget-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v3, :cond_12

    .line 152
    iget-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    goto :goto_14

    .line 154
    :cond_12
    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 157
    :goto_14
    if-nez v2, :cond_2b

    .line 158
    nop

    .line 177
    .end local v2    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v1, :cond_2a

    .line 178
    if-eqz p2, :cond_23

    .line 179
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 181
    :cond_23
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 184
    :cond_2a
    :goto_2a
    return-void

    .line 162
    .restart local v2    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    :cond_2b
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    .line 163
    .local v3, "m":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v4, :cond_39

    .line 164
    move-object v4, v3

    check-cast v4, Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-static {v4}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    .line 168
    :cond_39
    if-nez v1, :cond_41

    .line 169
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v1, v4

    .line 171
    :cond_41
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .end local v2    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 173
    nop

    .line 174
    .end local v3    # "m":Ljava/lang/Object;
    goto :goto_2
.end method

.method private flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    .registers 16
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "fireNow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "acquired":Z
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    .line 191
    .local v1, "channel":Lorg/jboss/netty/channel/Channel;
    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_d7

    .line 194
    :try_start_10
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v2

    if-nez v2, :cond_20

    .line 195
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->discard(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_cf

    .line 196
    nop

    .line 303
    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 196
    return-void

    .line 199
    :cond_20
    const/4 v2, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .local v5, "chunk":Ljava/lang/Object;
    .local v6, "endOfInput":Z
    .local v7, "suspend":Z
    :cond_24
    :try_start_24
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 200
    iget-object v8, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v8, :cond_38

    .line 201
    iget-object v8, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jboss/netty/channel/MessageEvent;

    iput-object v8, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 204
    :cond_38
    iget-object v8, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v8, :cond_3e

    .line 205
    .end local v5    # "chunk":Ljava/lang/Object;
    .end local v6    # "endOfInput":Z
    .end local v7    # "suspend":Z
    goto/16 :goto_c7

    .line 208
    .restart local v5    # "chunk":Ljava/lang/Object;
    .restart local v6    # "endOfInput":Z
    .restart local v7    # "suspend":Z
    :cond_3e
    iget-object v8, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v8

    invoke-interface {v8}, Lorg/jboss/netty/channel/ChannelFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 211
    iput-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    goto/16 :goto_b6

    .line 213
    :cond_4e
    iget-object v8, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 214
    .local v8, "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v9

    .line 215
    .local v9, "m":Ljava/lang/Object;
    instance-of v10, v9, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v10, :cond_b1

    .line 216
    move-object v10, v9

    check-cast v10, Lorg/jboss/netty/handler/stream/ChunkedInput;
    :try_end_5b
    .catchall {:try_start_24 .. :try_end_5b} :catchall_cf

    .line 221
    .local v10, "chunks":Lorg/jboss/netty/handler/stream/ChunkedInput;
    :try_start_5b
    invoke-interface {v10}, Lorg/jboss/netty/handler/stream/ChunkedInput;->nextChunk()Ljava/lang/Object;

    move-result-object v11

    .end local v5    # "chunk":Ljava/lang/Object;
    move-object v5, v11

    .line 222
    .restart local v5    # "chunk":Ljava/lang/Object;
    invoke-interface {v10}, Lorg/jboss/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v11

    .end local v6    # "endOfInput":Z
    move v6, v11

    .line 223
    .restart local v6    # "endOfInput":Z
    if-nez v5, :cond_70

    .line 224
    sget-object v11, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_69} :catch_9a
    .catchall {:try_start_5b .. :try_end_69} :catchall_cf

    .end local v7    # "suspend":Z
    move-object v5, v11

    .line 226
    if-nez v6, :cond_6e

    const/4 v7, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v7, 0x0

    :goto_6f
    goto :goto_71

    .line 228
    :cond_70
    const/4 v7, 0x0

    .line 242
    .restart local v7    # "suspend":Z
    :goto_71
    nop

    .line 244
    if-eqz v7, :cond_75

    .line 248
    goto :goto_c7

    .line 251
    :cond_75
    if-eqz v6, :cond_86

    .line 252
    :try_start_77
    iput-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 253
    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v11

    .line 260
    .local v11, "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v12, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;

    invoke-direct {v12, p0, v10}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;-><init>(Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    invoke-interface {v11, v12}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_92

    .line 267
    .end local v11    # "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_86
    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v11

    .line 268
    .restart local v11    # "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    new-instance v12, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$2;

    invoke-direct {v12, p0, v8}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$2;-><init>(Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;Lorg/jboss/netty/channel/MessageEvent;)V

    invoke-interface {v11, v12}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 278
    :goto_92
    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v12

    invoke-static {p1, v11, v5, v12}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 282
    .end local v5    # "chunk":Ljava/lang/Object;
    .end local v6    # "endOfInput":Z
    .end local v7    # "suspend":Z
    .end local v10    # "chunks":Lorg/jboss/netty/handler/stream/ChunkedInput;
    .end local v11    # "writeFuture":Lorg/jboss/netty/channel/ChannelFuture;
    goto :goto_b6

    .line 230
    .restart local v5    # "chunk":Ljava/lang/Object;
    .restart local v6    # "endOfInput":Z
    .restart local v7    # "suspend":Z
    .restart local v10    # "chunks":Lorg/jboss/netty/handler/stream/ChunkedInput;
    :catch_9a
    move-exception v3

    .line 231
    .local v3, "t":Ljava/lang/Throwable;
    iput-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 233
    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 234
    if-eqz p2, :cond_aa

    .line 235
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_ad

    .line 237
    :cond_aa
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 240
    :goto_ad
    invoke-static {v10}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    .line 241
    goto :goto_c7

    .line 283
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v10    # "chunks":Lorg/jboss/netty/handler/stream/ChunkedInput;
    :cond_b1
    iput-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 284
    invoke-interface {p1, v8}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 288
    .end local v8    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    .end local v9    # "m":Ljava/lang/Object;
    :goto_b6
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v8

    if-nez v8, :cond_24

    .line 289
    .end local v5    # "chunk":Ljava/lang/Object;
    .end local v6    # "endOfInput":Z
    .end local v7    # "suspend":Z
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->discard(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    :try_end_bf
    .catchall {:try_start_77 .. :try_end_bf} :catchall_cf

    .line 290
    nop

    .line 303
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
    iget-object v3, v2, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    return-void

    .line 293
    .end local v2    # "this":Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
    :cond_c7
    :goto_c7
    nop

    .line 303
    move-object v2, p0

    .restart local v2    # "this":Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
    iget-object v3, v2, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    goto :goto_d8

    .line 295
    .end local v2    # "this":Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
    :catchall_cf
    move-exception v2

    .line 303
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
    iget-object v5, v3, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 295
    throw v2

    .line 300
    .end local v3    # "this":Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
    :cond_d7
    move-object v2, p0

    .restart local v2    # "this":Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
    :goto_d8
    if-eqz v0, :cond_f1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_ee

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_f1

    iget-object v3, v2, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f1

    .line 301
    :cond_ee
    invoke-direct {v2, p1, p2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    .line 303
    :cond_f1
    return-void
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 341
    .local v1, "fireExceptionCaught":Z
    :goto_2
    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 343
    .local v2, "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    iget-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v3, :cond_12

    .line 344
    iget-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    goto :goto_15

    .line 346
    :cond_12
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 349
    :goto_15
    if-nez v2, :cond_22

    .line 350
    nop

    .line 368
    .end local v2    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v1, :cond_21

    .line 369
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 371
    :cond_21
    return-void

    .line 353
    .restart local v2    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    :cond_22
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    .line 354
    .local v3, "m":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v4, :cond_30

    .line 355
    move-object v4, v3

    check-cast v4, Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-static {v4}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    .line 359
    :cond_30
    if-nez v0, :cond_3a

    .line 360
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to flush event, discarding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 362
    :cond_3a
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .end local v2    # "currentEvent":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 363
    const/4 v1, 0x1

    .line 365
    nop

    .line 366
    .end local v3    # "m":Ljava/lang/Object;
    goto :goto_2
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    .line 330
    return-void
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_8

    .line 109
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 110
    return-void

    .line 113
    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    move-object v1, p2

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    .local v0, "offered":Z
    nop

    .line 116
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    .line 119
    .local v1, "channel":Lorg/jboss/netty/channel/Channel;
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v2

    if-nez v2, :cond_28

    .line 120
    :cond_22
    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 121
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    .line 123
    :cond_28
    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_2c

    .line 128
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 129
    .local v0, "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$3;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_30

    .end local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    goto :goto_2c

    .line 135
    .restart local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    :pswitch_18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 137
    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    goto :goto_2c

    .line 132
    :pswitch_28
    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    .line 133
    nop

    .line 142
    .end local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_2c
    :goto_2c
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 143
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28
        :pswitch_18
    .end packed-switch
.end method

.method public resumeTransfer()V
    .registers 5

    .line 92
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 93
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_5

    .line 94
    return-void

    .line 98
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 103
    goto :goto_1a

    .line 99
    :catch_a
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 101
    sget-object v2, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Unexpected exception while sending chunks."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1a
    :goto_1a
    return-void
.end method
