.class public Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "DelimiterBasedFrameDecoder.java"


# instance fields
.field private final delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

.field private discardingTooLongFrame:Z

.field private final failFast:Z

.field private final maxFrameLength:I

.field private final stripDelimiter:Z

.field private tooLongFrameLength:I


# direct methods
.method public constructor <init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "maxFrameLength"    # I
    .param p2, "delimiter"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZLorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 79
    return-void
.end method

.method public constructor <init>(IZLorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "delimiter"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZZLorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 94
    return-void
.end method

.method public constructor <init>(IZZLorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 8
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "failFast"    # Z
    .param p4, "delimiter"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 115
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 116
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateMaxFrameLength(I)V

    .line 117
    invoke-static {p4}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateDelimiter(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-interface {p4, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 122
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    .line 123
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    .line 124
    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->failFast:Z

    .line 125
    return-void
.end method

.method public varargs constructor <init>(IZZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 10
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "failFast"    # Z
    .param p4, "delimiters"    # [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 172
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 173
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateMaxFrameLength(I)V

    .line 174
    if-eqz p4, :cond_3b

    .line 177
    array-length v0, p4

    if-eqz v0, :cond_33

    .line 180
    array-length v0, p4

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v1, p4

    if-ge v0, v1, :cond_2c

    .line 182
    aget-object v1, p4, v0

    .line 183
    .local v1, "d":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateDelimiter(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 184
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 181
    .end local v1    # "d":Lorg/jboss/netty/buffer/ChannelBuffer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 186
    .end local v0    # "i":I
    :cond_2c
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    .line 187
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    .line 188
    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->failFast:Z

    .line 189
    return-void

    .line 178
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty delimiters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delimiters"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(IZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "delimiters"    # [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 152
    return-void
.end method

.method public varargs constructor <init>(I[Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "maxFrameLength"    # I
    .param p2, "delimiters"    # [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 137
    return-void
.end method

.method private fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "frameLength"    # J

    .line 259
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_33

    .line 260
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " - discarded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_57

    .line 266
    :cond_33
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - discarding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 272
    :goto_57
    return-void
.end method

.method private static indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .registers 8
    .param p0, "haystack"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "needle"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 280
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .local v0, "i":I
    :goto_4
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_42

    .line 281
    move v1, v0

    .line 283
    .local v1, "haystackIndex":I
    const/4 v3, 0x0

    .local v3, "needleIndex":I
    :goto_d
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 284
    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v4

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_1e

    .line 285
    goto :goto_32

    .line 287
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 288
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v4

    if-ne v1, v4, :cond_2f

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2f

    .line 290
    return v2

    .line 283
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 295
    :cond_32
    :goto_32
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    if-ne v3, v2, :cond_3f

    .line 297
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sub-int v2, v0, v2

    return v2

    .line 280
    .end local v1    # "haystackIndex":I
    .end local v3    # "needleIndex":I
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 300
    .end local v0    # "i":I
    :cond_42
    return v2
.end method

.method private static validateDelimiter(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p0, "delimiter"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 304
    if-eqz p0, :cond_11

    .line 307
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 310
    return-void

    .line 308
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty delimiter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delimiter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateMaxFrameLength(I)V
    .registers 4
    .param p0, "maxFrameLength"    # I

    .line 313
    if-lez p0, :cond_3

    .line 318
    return-void

    .line 314
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxFrameLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    const v0, 0x7fffffff

    .line 196
    .local v0, "minFrameLength":I
    const/4 v1, 0x0

    .line 197
    .local v1, "minDelim":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .local v2, "arr$":[Lorg/jboss/netty/buffer/ChannelBuffer;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    .local v0, "i$":I
    .local v5, "minFrameLength":I
    :goto_a
    if-ge v0, v3, :cond_1b

    aget-object v6, v2, v0

    .line 198
    .local v6, "delim":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-static {p3, v6}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v7

    .line 199
    .local v7, "frameLength":I
    if-ltz v7, :cond_18

    if-ge v7, v5, :cond_18

    .line 200
    move v5, v7

    .line 201
    move-object v1, v6

    .line 197
    .end local v6    # "delim":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v7    # "frameLength":I
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 205
    .end local v0    # "i$":I
    .end local v2    # "arr$":[Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "len$":I
    :cond_1b
    const/4 v0, 0x0

    if-eqz v1, :cond_5b

    .line 206
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    .line 209
    .local v2, "minDelimLength":I
    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    if-eqz v3, :cond_3a

    .line 212
    iput-boolean v4, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 213
    add-int v3, v5, v2

    invoke-interface {p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 215
    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 216
    .local v3, "tooLongFrameLength":I
    iput v4, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 217
    iget-boolean v4, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->failFast:Z

    if-nez v4, :cond_39

    .line 218
    int-to-long v6, v3

    invoke-direct {p0, p1, v6, v7}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    .line 220
    :cond_39
    return-object v0

    .line 223
    .end local v3    # "tooLongFrameLength":I
    :cond_3a
    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    if-le v5, v3, :cond_48

    .line 225
    add-int v3, v5, v2

    invoke-interface {p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 226
    int-to-long v3, v5

    invoke-direct {p0, p1, v3, v4}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    .line 227
    return-object v0

    .line 230
    :cond_48
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    if-eqz v0, :cond_54

    .line 231
    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 232
    .local v0, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    goto :goto_5a

    .line 234
    .end local v0    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_54
    add-int v0, v5, v2

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 237
    .restart local v0    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_5a
    return-object v0

    .line 239
    .end local v0    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v2    # "minDelimLength":I
    :cond_5b
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    if-nez v2, :cond_82

    .line 240
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    if-le v2, v3, :cond_92

    .line 242
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    iput v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 243
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 244
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 245
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->failFast:Z

    if-eqz v2, :cond_92

    .line 246
    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    int-to-long v2, v2

    invoke-direct {p0, p1, v2, v3}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    goto :goto_92

    .line 251
    :cond_82
    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 252
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 254
    :cond_92
    :goto_92
    return-object v0
.end method
