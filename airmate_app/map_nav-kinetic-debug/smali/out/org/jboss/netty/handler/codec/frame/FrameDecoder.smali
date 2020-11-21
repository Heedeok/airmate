.class public abstract Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "FrameDecoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private copyThreshold:I

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field protected cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private maxCumulationBufferComponents:I

.field private unfold:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 180
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>(Z)V

    .line 192
    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 3
    .param p1, "unfold"    # Z

    .line 194
    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    .line 188
    const/16 v0, 0x400

    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->maxCumulationBufferComponents:I

    .line 195
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    .line 196
    return-void
.end method

.method private callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    .registers 10
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "cumulation"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 421
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 422
    .local v0, "oldReaderIndex":I
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 423
    .local v1, "frame":Ljava/lang/Object;
    if-nez v1, :cond_17

    .line 424
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 427
    goto :goto_41

    .line 433
    :cond_17
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    if-eq v0, v2, :cond_21

    .line 439
    invoke-virtual {p0, p1, p4, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V

    .line 440
    .end local v0    # "oldReaderIndex":I
    .end local v1    # "frame":Ljava/lang/Object;
    goto :goto_0

    .line 434
    .restart local v0    # "oldReaderIndex":I
    .restart local v1    # "frame":Ljava/lang/Object;
    :cond_21
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode() method must read at least one byte if it returned a frame (caused by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    .end local v0    # "oldReaderIndex":I
    .end local v1    # "frame":Ljava/lang/Object;
    :cond_41
    :goto_41
    return-void
.end method


# virtual methods
.method protected actualReadableBytes()I
    .registers 2

    .line 537
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    return v0
.end method

.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 561
    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 569
    return-void
.end method

.method protected appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 6
    .param p1, "input"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 319
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 320
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    nop

    .line 321
    instance-of v1, v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    if-eqz v1, :cond_16

    .line 323
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    .line 324
    .local v1, "composite":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    invoke-virtual {v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->numComponents()I

    move-result v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->maxCumulationBufferComponents:I

    if-lt v2, v3, :cond_16

    .line 325
    invoke-virtual {v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->copy()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 329
    .end local v1    # "composite":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    :cond_16
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    move-object p1, v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 330
    return-object p1
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 556
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 557
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 565
    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 373
    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    .line 367
    return-void
.end method

.method protected cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 469
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_2a

    .line 470
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_8

    .line 489
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void

    .line 474
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 476
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 478
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V

    .line 484
    :cond_18
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v2

    .line 485
    .local v2, "partialFrame":Ljava/lang/Object;
    if-eqz v2, :cond_25

    .line 486
    invoke-virtual {p0, p1, v1, v2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_2a

    .line 489
    .end local v0    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v2    # "partialFrame":Ljava/lang/Object;
    :cond_25
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 490
    nop

    .line 491
    return-void

    .line 489
    :catchall_2a
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0
.end method

.method protected abstract decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 413
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 378
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 379
    return-void
.end method

.method public final getMaxCumulationBufferCapacity()I
    .registers 2

    .line 216
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->copyThreshold:I

    return v0
.end method

.method public final getMaxCumulationBufferComponents()I
    .registers 2

    .line 260
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->maxCumulationBufferComponents:I

    return v0
.end method

.method protected internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3

    .line 548
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 549
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_7

    .line 550
    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v1

    .line 552
    :cond_7
    return-object v0
.end method

.method public final isUnfold()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    return v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 290
    .local v0, "m":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_c

    .line 291
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 292
    return-void

    .line 295
    :cond_c
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 296
    .local v1, "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-nez v2, :cond_16

    .line 297
    return-void

    .line 300
    :cond_16
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v2, :cond_2e

    .line 303
    :try_start_1a
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-direct {p0, p1, v2, v1, v3}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_29

    .line 305
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 306
    goto :goto_41

    .line 305
    :catchall_29
    move-exception v2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    throw v2

    .line 309
    :cond_2e
    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 311
    :try_start_32
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-direct {p0, p1, v2, v1, v3}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_42

    .line 313
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 314
    nop

    .line 316
    :goto_41
    return-void

    .line 313
    :catchall_42
    move-exception v2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    throw v2
.end method

.method protected newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "minimumCapacity"    # I

    .line 502
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    .line 503
    .local v0, "factory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    const/16 v1, 0x100

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 7
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 513
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_30

    .line 517
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 518
    .local v0, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/jboss/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 521
    :try_start_13
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v1, :cond_26

    .line 522
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->actualReadableBytes()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2b

    .line 525
    :cond_26
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 526
    nop

    .line 528
    return-void

    .line 525
    :catchall_2b
    move-exception v1

    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    throw v1

    .line 514
    .end local v0    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Replace cann only be called once the FrameDecoder is added to the ChannelPipeline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setMaxCumulationBufferCapacity(I)V
    .registers 4
    .param p1, "copyThreshold"    # I

    .line 242
    if-ltz p1, :cond_11

    .line 245
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_9

    .line 246
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->copyThreshold:I

    .line 251
    return-void

    .line 248
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxCumulationBufferCapacity must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .registers 5
    .param p1, "maxCumulationBufferComponents"    # I

    .line 271
    const/4 v0, 0x2

    if-lt p1, v0, :cond_12

    .line 277
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_a

    .line 278
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->maxCumulationBufferComponents:I

    .line 283
    return-void

    .line 280
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCumulationBufferComponents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: >= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setUnfold(Z)V
    .registers 4
    .param p1, "unfold"    # Z

    .line 203
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_7

    .line 204
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    .line 209
    return-void

    .line 206
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "result"    # Ljava/lang/Object;

    .line 445
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    if-eqz v0, :cond_34

    .line 446
    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_17

    .line 447
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_d
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 448
    .local v3, "r":Ljava/lang/Object;
    invoke-static {p1, v3, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 447
    .end local v3    # "r":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 450
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_17
    instance-of v0, p3, Ljava/lang/Iterable;

    if-eqz v0, :cond_30

    .line 451
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 452
    .local v1, "r":Ljava/lang/Object;
    invoke-static {p1, v1, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 453
    .end local v1    # "r":Ljava/lang/Object;
    goto :goto_22

    .line 455
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_30
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_37

    .line 458
    :cond_34
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 460
    :cond_37
    :goto_37
    return-void
.end method

.method protected updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "input"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 335
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 336
    .local v0, "readableBytes":I
    if-lez v0, :cond_33

    .line 337
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    .line 343
    .local v1, "inputCapacity":I
    if-ge v0, v1, :cond_21

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->copyThreshold:I

    if-le v1, v2, :cond_21

    .line 346
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    move-object v3, v2

    .local v3, "newCumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 347
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_32

    .line 351
    .end local v3    # "newCumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_21
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    if-eqz v2, :cond_2f

    .line 352
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    move-object v3, v2

    .restart local v3    # "newCumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_32

    .line 354
    .end local v3    # "newCumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2f
    move-object v3, p2

    .restart local v3    # "newCumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 357
    .end local v1    # "inputCapacity":I
    :goto_32
    goto :goto_37

    .line 358
    .end local v3    # "newCumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_33
    const/4 v1, 0x0

    move-object v3, v1

    .restart local v3    # "newCumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 360
    :goto_37
    return-object v3
.end method
