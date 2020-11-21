.class public Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "LengthFieldPrepender.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final lengthFieldLength:I

.field private final lengthIncludesLengthFieldLength:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "lengthFieldLength"    # I

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;-><init>(IZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6
    .param p1, "lengthFieldLength"    # I
    .param p2, "lengthIncludesLengthFieldLength"    # Z

    .line 90
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 91
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x8

    if-ne p1, v0, :cond_14

    goto :goto_2b

    .line 94
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lengthFieldLength must be either 1, 2, 3, 4, or 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2b
    :goto_2b
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthFieldLength:I

    .line 100
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthIncludesLengthFieldLength:Z

    .line 101
    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    instance-of v0, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_5

    .line 107
    return-object p3

    .line 110
    :cond_5
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 111
    .local v0, "body":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthFieldLength:I

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 113
    .local v1, "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthIncludesLengthFieldLength:Z

    if-eqz v2, :cond_26

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthFieldLength:I

    add-int/2addr v2, v3

    goto :goto_2a

    :cond_26
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    .line 115
    .local v2, "length":I
    :goto_2a
    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthFieldLength:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9e

    packed-switch v3, :pswitch_data_b2

    .line 144
    new-instance v3, Ljava/lang/Error;

    const-string v4, "should not reach here"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    :pswitch_3b
    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 139
    goto :goto_a3

    .line 131
    :pswitch_3f
    const/high16 v3, 0x1000000

    if-ge v2, v3, :cond_47

    .line 135
    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    .line 136
    goto :goto_a3

    .line 132
    :cond_47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length does not fit into a medium integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :pswitch_5e
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_67

    .line 128
    int-to-short v3, v2

    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 129
    goto :goto_a3

    .line 125
    :cond_67
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length does not fit into a short integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :pswitch_7e
    const/16 v3, 0x100

    if-ge v2, v3, :cond_87

    .line 121
    int-to-byte v3, v2

    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 122
    goto :goto_a3

    .line 118
    :cond_87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length does not fit into a byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_9e
    int-to-long v3, v2

    invoke-interface {v1, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    .line 142
    nop

    .line 146
    :goto_a3
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_5e
        :pswitch_3f
        :pswitch_3b
    .end packed-switch
.end method
