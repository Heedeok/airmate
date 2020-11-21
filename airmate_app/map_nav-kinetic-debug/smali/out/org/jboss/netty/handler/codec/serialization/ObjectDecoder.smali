.class public Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;
.super Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;
.source "ObjectDecoder.java"


# instance fields
.field private final classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxObjectSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;->weakCachingResolver(Ljava/lang/ClassLoader;)Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(ILorg/jboss/netty/handler/codec/serialization/ClassResolver;)V

    .line 81
    return-void
.end method

.method public constructor <init>(ILjava/lang/ClassLoader;)V
    .registers 4
    .param p1, "maxObjectSize"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;->weakCachingResolver(Ljava/lang/ClassLoader;)Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(ILorg/jboss/netty/handler/codec/serialization/ClassResolver;)V

    .line 113
    return-void
.end method

.method public constructor <init>(ILorg/jboss/netty/handler/codec/serialization/ClassResolver;)V
    .registers 9
    .param p1, "maxObjectSize"    # I
    .param p2, "classResolver"    # Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    .line 94
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    .line 95
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;->classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/serialization/ClassResolver;)V
    .registers 3
    .param p1, "classResolver"    # Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    .line 66
    const/high16 v0, 0x100000

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(ILorg/jboss/netty/handler/codec/serialization/ClassResolver;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 120
    .local v0, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_a

    .line 121
    const/4 v1, 0x0

    return-object v1

    .line 124
    :cond_a
    new-instance v1, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;

    new-instance v2, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    invoke-direct {v2, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;->classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    invoke-direct {v1, v2, v3}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/jboss/netty/handler/codec/serialization/ClassResolver;)V

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 130
    invoke-interface {p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
