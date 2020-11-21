.class public final Lorg/jboss/netty/handler/codec/frame/Delimiters;
.super Ljava/lang/Object;
.source "Delimiters.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static lineDelimiter()[Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5

    .line 40
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    new-array v3, v0, [B

    const/16 v4, 0xa

    aput-byte v4, v3, v2

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    return-object v1

    nop

    :array_1e
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public static nulDelimiter()[Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v0, v2

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method
