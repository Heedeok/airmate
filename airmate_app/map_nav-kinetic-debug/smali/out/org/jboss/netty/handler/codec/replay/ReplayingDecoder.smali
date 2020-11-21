.class public abstract Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "ReplayingDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lorg/jboss/netty/handler/codec/frame/FrameDecoder;"
    }
.end annotation


# instance fields
.field private checkpoint:I

.field private needsCleanup:Z

.field private final replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

.field private state:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 297
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    .line 298
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Enum;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p1, "initialState":Ljava/lang/Enum;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;Z)V

    .line 309
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Enum;Z)V
    .registers 4
    .param p2, "unfold"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p1, "initialState":Ljava/lang/Enum;, "TT;"
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>(Z)V

    .line 287
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;-><init>(Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    .line 313
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    .line 314
    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 3
    .param p1, "unfold"    # Z

    .line 301
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;Z)V

    .line 302
    return-void
.end method

.method private callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    .registers 12
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "input"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "replayableInput"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p5, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 497
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    :goto_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 498
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    .line 499
    .local v0, "oldReaderIndex":I
    const/4 v1, 0x0

    .line 500
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    .line 502
    .local v2, "oldState":Ljava/lang/Enum;, "TT;"
    :try_start_f
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p4, v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 503
    if-nez v1, :cond_2c

    .line 504
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    if-ne v0, v3, :cond_2b

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    if-eq v2, v3, :cond_23

    goto :goto_2b

    .line 505
    :cond_23
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "null cannot be returned if no data is consumed and state didn\'t change."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2b
    .catch Lorg/jboss/netty/handler/codec/replay/ReplayError; {:try_start_f .. :try_end_2b} :catch_2d

    .line 510
    :cond_2b
    :goto_2b
    goto :goto_0

    .line 522
    :cond_2c
    goto :goto_35

    .line 513
    :catch_2d
    move-exception v3

    .line 515
    .local v3, "replay":Lorg/jboss/netty/handler/codec/replay/ReplayError;
    iget v4, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    .line 516
    .local v4, "checkpoint":I
    if-ltz v4, :cond_35

    .line 517
    invoke-interface {p3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 524
    .end local v3    # "replay":Lorg/jboss/netty/handler/codec/replay/ReplayError;
    .end local v4    # "checkpoint":I
    :cond_35
    :goto_35
    if-nez v1, :cond_38

    .line 527
    goto :goto_67

    .line 530
    :cond_38
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    if-ne v0, v3, :cond_63

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    if-eq v2, v3, :cond_43

    goto :goto_63

    .line 531
    :cond_43
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode() method must consume at least one byte if it returned a decoded message (caused by: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 538
    :cond_63
    :goto_63
    invoke-virtual {p0, p1, p5, v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V

    .line 539
    .end local v0    # "oldReaderIndex":I
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "oldState":Ljava/lang/Enum;, "TT;"
    goto :goto_0

    .line 540
    :cond_67
    :goto_67
    return-void
.end method


# virtual methods
.method protected checkpoint()V
    .registers 3

    .line 325
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 326
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-eqz v0, :cond_b

    .line 327
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    goto :goto_e

    .line 329
    :cond_b
    const/4 v1, -0x1

    iput v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    .line 331
    :goto_e
    return-void
.end method

.method protected checkpoint(Ljava/lang/Enum;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 338
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p1, "state":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint()V

    .line 339
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->setState(Ljava/lang/Enum;)Ljava/lang/Enum;

    .line 340
    return-void
.end method

.method protected cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .registers 10
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 546
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 547
    .local v0, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->needsCleanup:Z
    :try_end_4
    .catch Lorg/jboss/netty/handler/codec/replay/ReplayError; {:try_start_0 .. :try_end_4} :catch_49
    .catchall {:try_start_0 .. :try_end_4} :catchall_43

    if-nez v1, :cond_b

    .line 548
    nop

    .line 575
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 548
    return-void

    .line 550
    :cond_b
    const/4 v1, 0x0

    :try_start_c
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->needsCleanup:Z

    .line 553
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminate()V

    .line 555
    if-eqz v0, :cond_28

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 557
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V

    .line 563
    :cond_28
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v1

    .line 565
    .local v1, "partiallyDecoded":Ljava/lang/Object;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 567
    if-eqz v1, :cond_3c

    .line 568
    invoke-virtual {p0, p1, v2, v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    :try_end_3c
    .catch Lorg/jboss/netty/handler/codec/replay/ReplayError; {:try_start_c .. :try_end_3c} :catch_49
    .catchall {:try_start_c .. :try_end_3c} :catchall_43

    .line 570
    .end local v0    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "partiallyDecoded":Ljava/lang/Object;
    :cond_3c
    nop

    .line 575
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 574
    nop

    .line 575
    move-object v0, p0

    goto :goto_50

    .line 573
    :catchall_43
    move-exception v0

    .line 575
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 573
    throw v0

    .line 570
    .end local v1    # "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    :catch_49
    move-exception v0

    .line 572
    nop

    .line 575
    move-object v0, p0

    .local v0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 574
    nop

    .line 575
    :goto_50
    return-void
.end method

.method protected final decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 402
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;",
            "Lorg/jboss/netty/channel/Channel;",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;",
            "Lorg/jboss/netty/channel/Channel;",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p4, "state":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getState()Ljava/lang/Enum;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    return-object v0
.end method

.method protected internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 318
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    invoke-super {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .registers 19
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/MessageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-interface/range {p2 .. p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v9

    .line 416
    .local v9, "m":Ljava/lang/Object;
    instance-of v0, v9, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_10

    .line 417
    invoke-interface/range {p1 .. p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 418
    return-void

    .line 421
    :cond_10
    move-object v10, v9

    check-cast v10, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 422
    .local v10, "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 423
    return-void

    .line 426
    :cond_1a
    const/4 v11, 0x1

    iput-boolean v11, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->needsCleanup:Z

    .line 428
    iget-object v0, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_13b

    .line 431
    iput-object v10, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 433
    invoke-interface {v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v12

    .line 434
    .local v12, "oldReaderIndex":I
    invoke-interface {v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    move v13, v0

    .line 437
    .local v13, "inputSize":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_2e
    invoke-interface/range {p2 .. p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    iget-object v5, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-interface/range {p2 .. p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_b9

    .line 441
    nop

    .line 492
    invoke-interface {v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 443
    .local v0, "readableBytes":I
    if-lez v0, :cond_b4

    .line 444
    invoke-interface {v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    .line 447
    .local v1, "inputCapacity":I
    if-eq v0, v1, :cond_55

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->getMaxCumulationBufferCapacity()I

    move-result v2

    if-le v1, v2, :cond_55

    const/4 v14, 0x1

    nop

    :cond_55
    move v2, v14

    .line 455
    .local v2, "copy":Z
    iget v3, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    if-lez v3, :cond_78

    .line 456
    iget v3, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    sub-int/2addr v3, v12

    sub-int v3, v13, v3

    .line 457
    .local v3, "bytesToPreserve":I
    if-eqz v2, :cond_6e

    .line 458
    invoke-virtual {v7, v8, v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    move-object v5, v4

    .local v5, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v4, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 459
    iget v4, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    invoke-interface {v5, v10, v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_77

    .line 461
    .end local v5    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_6e
    iget v4, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    invoke-interface {v10, v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    move-object v5, v4

    .restart local v5    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v4, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 463
    .end local v3    # "bytesToPreserve":I
    :goto_77
    goto :goto_b3

    .end local v5    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_78
    iget v3, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    if-nez v3, :cond_9f

    .line 464
    if-eqz v2, :cond_90

    .line 465
    invoke-virtual {v7, v8, v13}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    move-object v4, v3

    .local v4, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v3, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 466
    invoke-interface {v4, v10, v12, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 467
    invoke-interface {v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_b3

    .line 469
    .end local v4    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_90
    invoke-interface {v10, v12, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    move-object v4, v3

    .restart local v4    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v3, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 470
    invoke-interface {v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_b3

    .line 473
    .end local v4    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_9f
    if-eqz v2, :cond_b0

    .line 474
    invoke-interface {v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    invoke-virtual {v7, v8, v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    move-object v4, v3

    .restart local v4    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v3, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 475
    invoke-interface {v4, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_b3

    .line 477
    .end local v4    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_b0
    move-object v3, v10

    .local v3, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v10, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 480
    .end local v1    # "inputCapacity":I
    .end local v2    # "copy":Z
    .end local v3    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_b3
    goto :goto_b6

    .line 481
    :cond_b4
    iput-object v15, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 483
    .end local v0    # "readableBytes":I
    :goto_b6
    nop

    .line 484
    .end local v12    # "oldReaderIndex":I
    .end local v13    # "inputSize":I
    goto/16 :goto_156

    .line 442
    .restart local v12    # "oldReaderIndex":I
    .restart local v13    # "inputSize":I
    :catchall_b9
    move-exception v0

    .line 483
    move v1, v12

    .end local v12    # "oldReaderIndex":I
    .local v1, "oldReaderIndex":I
    move v2, v13

    .end local v13    # "inputSize":I
    .local v2, "inputSize":I
    move-object/from16 v3, p0

    .local v3, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    move-object/from16 v4, p1

    .end local p1    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .local v4, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    move-object/from16 v5, p2

    .end local p2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    .local v5, "e":Lorg/jboss/netty/channel/MessageEvent;
    move-object v6, v9

    .end local v9    # "m":Ljava/lang/Object;
    .local v6, "m":Ljava/lang/Object;
    move-object v8, v10

    .end local v10    # "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v8, "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v9

    .line 443
    .local v9, "readableBytes":I
    if-lez v9, :cond_137

    .line 444
    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v10

    .line 447
    .local v10, "inputCapacity":I
    if-eq v9, v10, :cond_d8

    invoke-virtual {v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->getMaxCumulationBufferCapacity()I

    move-result v12

    if-le v10, v12, :cond_d8

    const/4 v14, 0x1

    nop

    :cond_d8
    move v11, v14

    .line 455
    .local v11, "copy":Z
    iget v12, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    if-lez v12, :cond_fb

    .line 456
    iget v12, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    sub-int/2addr v12, v1

    sub-int v12, v2, v12

    .line 457
    .local v12, "bytesToPreserve":I
    if-eqz v11, :cond_f1

    .line 458
    invoke-virtual {v3, v4, v12}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v13

    move-object v14, v13

    .local v14, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v13, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 459
    iget v13, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    invoke-interface {v14, v8, v13, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_fa

    .line 461
    .end local v14    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_f1
    iget v13, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    invoke-interface {v8, v13, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v13

    move-object v14, v13

    .restart local v14    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v13, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 463
    .end local v12    # "bytesToPreserve":I
    :goto_fa
    goto :goto_136

    .end local v14    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_fb
    iget v12, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    if-nez v12, :cond_122

    .line 464
    if-eqz v11, :cond_113

    .line 465
    invoke-virtual {v3, v4, v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    move-object v13, v12

    .local v13, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v12, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 466
    invoke-interface {v13, v8, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 467
    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v12

    invoke-interface {v13, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_136

    .line 469
    .end local v13    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_113
    invoke-interface {v8, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    move-object v13, v12

    .restart local v13    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v12, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 470
    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v12

    invoke-interface {v13, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_136

    .line 473
    .end local v13    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_122
    if-eqz v11, :cond_133

    .line 474
    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v12

    invoke-virtual {v3, v4, v12}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    move-object v13, v12

    .restart local v13    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v12, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 475
    invoke-interface {v13, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_136

    .line 477
    .end local v13    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_133
    move-object v12, v8

    .local v12, "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v8, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 480
    .end local v10    # "inputCapacity":I
    .end local v11    # "copy":Z
    .end local v12    # "cumulation":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_136
    goto :goto_139

    .line 481
    :cond_137
    iput-object v15, v3, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 483
    .end local v9    # "readableBytes":I
    :goto_139
    nop

    .line 442
    throw v0

    .line 485
    .end local v1    # "oldReaderIndex":I
    .end local v2    # "inputSize":I
    .end local v3    # "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .end local v4    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .end local v5    # "e":Lorg/jboss/netty/channel/MessageEvent;
    .end local v6    # "m":Ljava/lang/Object;
    .end local v8    # "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v9, "m":Ljava/lang/Object;
    .local v10, "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local p1    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .restart local p2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    :cond_13b
    invoke-virtual {v7, v10}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v10

    .line 487
    :try_start_13f
    invoke-interface/range {p2 .. p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    iget-object v5, v7, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-interface/range {p2 .. p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    :try_end_151
    .catchall {:try_start_13f .. :try_end_151} :catchall_157

    .line 488
    nop

    .line 483
    invoke-virtual {v7, v8, v10}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 490
    nop

    .line 492
    :goto_156
    return-void

    .line 489
    :catchall_157
    move-exception v0

    .line 483
    move-object/from16 v1, p0

    .local v1, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    move-object/from16 v2, p1

    .end local p1    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .local v2, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    move-object/from16 v3, p2

    .end local p2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    .local v3, "e":Lorg/jboss/netty/channel/MessageEvent;
    move-object v4, v9

    .end local v9    # "m":Ljava/lang/Object;
    .local v4, "m":Ljava/lang/Object;
    move-object v5, v10

    .end local v10    # "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v5, "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {v1, v2, v5}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 489
    throw v0
.end method

.method protected setState(Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<TT;>;"
    .local p1, "newState":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    .line 356
    .local v0, "oldState":Ljava/lang/Enum;, "TT;"
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    .line 357
    return-object v0
.end method
