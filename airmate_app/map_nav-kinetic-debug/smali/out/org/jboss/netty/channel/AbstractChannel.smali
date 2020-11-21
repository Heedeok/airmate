.class public abstract Lorg/jboss/netty/channel/AbstractChannel;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final allChannels:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile attachment:Ljava/lang/Object;

.field private final closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

.field private final factory:Lorg/jboss/netty/channel/ChannelFactory;

.field private final id:Ljava/lang/Integer;

.field private volatile interestOps:I

.field private final parent:Lorg/jboss/netty/channel/Channel;

.field private final pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

.field private strVal:Ljava/lang/String;

.field private strValConnected:Z

.field private final succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    nop

    .line 28
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/AbstractChannel;->allChannels:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "parent"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p4, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p5, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/jboss/netty/channel/SucceededChannelFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/SucceededChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 50
    new-instance v0, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;-><init>(Lorg/jboss/netty/channel/AbstractChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    .line 103
    iput-object p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    .line 104
    iput-object p2, p0, Lorg/jboss/netty/channel/AbstractChannel;->parent:Lorg/jboss/netty/channel/Channel;

    .line 105
    iput-object p3, p0, Lorg/jboss/netty/channel/AbstractChannel;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    .line 106
    iput-object p4, p0, Lorg/jboss/netty/channel/AbstractChannel;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    .line 107
    invoke-interface {p4, p0, p5}, Lorg/jboss/netty/channel/ChannelPipeline;->attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 108
    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .registers 6
    .param p1, "parent"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p3, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p4, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/jboss/netty/channel/SucceededChannelFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/SucceededChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 50
    new-instance v0, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;-><init>(Lorg/jboss/netty/channel/AbstractChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    .line 75
    iput-object p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->parent:Lorg/jboss/netty/channel/Channel;

    .line 76
    iput-object p2, p0, Lorg/jboss/netty/channel/AbstractChannel;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    .line 77
    iput-object p3, p0, Lorg/jboss/netty/channel/AbstractChannel;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    .line 79
    invoke-static {p0}, Lorg/jboss/netty/channel/AbstractChannel;->allocateId(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    .line 81
    invoke-interface {p3, p0, p4}, Lorg/jboss/netty/channel/ChannelPipeline;->attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V

    .line 82
    return-void
.end method

.method private static allocateId(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Integer;
    .registers 3
    .param p0, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 31
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35
    .local v0, "id":Ljava/lang/Integer;
    :goto_8
    sget-object v1, Lorg/jboss/netty/channel/AbstractChannel;->allChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 37
    return-object v0

    .line 40
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8
.end method

.method private getIdString()Ljava/lang/String;
    .registers 4

    .line 304
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "answer":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_96

    goto/16 :goto_94

    .line 328
    :pswitch_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    .line 325
    :pswitch_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    goto :goto_94

    .line 322
    :pswitch_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    goto :goto_94

    .line 319
    :pswitch_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    goto :goto_94

    .line 316
    :pswitch_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    goto :goto_94

    .line 313
    :pswitch_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    goto :goto_94

    .line 310
    :pswitch_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    goto :goto_94

    .line 307
    :pswitch_91
    const-string v0, "00000000"

    .line 308
    nop

    .line 331
    :goto_94
    return-object v0

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_91
        :pswitch_7f
        :pswitch_6d
        :pswitch_5b
        :pswitch_49
        :pswitch_37
        :pswitch_25
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 187
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->bind(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3

    .line 195
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 196
    .local v0, "returnedCloseFuture":Lorg/jboss/netty/channel/ChannelFuture;
    nop

    .line 197
    iget-object v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    return-object v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 26
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/AbstractChannel;->compareTo(Lorg/jboss/netty/channel/Channel;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lorg/jboss/netty/channel/Channel;)I
    .registers 4
    .param p1, "o"    # Lorg/jboss/netty/channel/Channel;

    .line 163
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 205
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->connect(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 2

    .line 209
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->disconnect(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 156
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public getAttachment()Ljava/lang/Object;
    .registers 2

    .line 254
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 2

    .line 201
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    return-object v0
.end method

.method public getFactory()Lorg/jboss/netty/channel/ChannelFactory;
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterestOps()I
    .registers 2

    .line 213
    iget v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    return v0
.end method

.method public getParent()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->parent:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 2

    .line 123
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    return-object v0
.end method

.method protected getSucceededFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 2

    .line 130
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method protected getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3

    .line 138
    new-instance v0, Lorg/jboss/netty/channel/FailedChannelFuture;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/FailedChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 147
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;->isDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isReadable()Z
    .registers 3

    .line 230
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isWritable()Z
    .registers 2

    .line 234
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .registers 2
    .param p1, "attachment"    # Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->attachment:Ljava/lang/Object;

    .line 259
    return-void
.end method

.method protected setClosed()Z
    .registers 3

    .line 181
    sget-object v0, Lorg/jboss/netty/channel/AbstractChannel;->allChannels:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;->setClosed()Z

    move-result v0

    return v0
.end method

.method public setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "interestOps"    # I

    .line 217
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->setInterestOps(Lorg/jboss/netty/channel/Channel;I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected setInterestOpsNow(I)V
    .registers 2
    .param p1, "interestOps"    # I

    .line 226
    iput p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    .line 227
    return-void
.end method

.method public setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "readable"    # Z

    .line 238
    if-eqz p1, :cond_d

    .line 239
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 241
    :cond_d
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 268
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->isConnected()Z

    move-result v0

    .line 269
    .local v0, "connected":Z
    iget-boolean v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->strValConnected:Z

    if-ne v1, v0, :cond_f

    iget-object v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 270
    iget-object v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    return-object v1

    .line 273
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v2, "[id: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getIdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 278
    .local v2, "localAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 279
    .local v3, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v3, :cond_59

    .line 280
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    if-nez v4, :cond_48

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    if-eqz v0, :cond_3f

    const-string v4, " => "

    goto :goto_41

    :cond_3f
    const-string v4, " :> "

    :goto_41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 286
    :cond_48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    if-eqz v0, :cond_50

    const-string v4, " => "

    goto :goto_52

    :cond_50
    const-string v4, " :> "

    :goto_52
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 290
    :cond_59
    if-eqz v2, :cond_63

    .line 291
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    :cond_63
    :goto_63
    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "strVal":Ljava/lang/String;
    iput-object v4, p0, Lorg/jboss/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    .line 299
    iput-boolean v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->strValConnected:Z

    .line 300
    return-object v4
.end method

.method public unbind()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 2

    .line 191
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->unbind(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 246
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 250
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
