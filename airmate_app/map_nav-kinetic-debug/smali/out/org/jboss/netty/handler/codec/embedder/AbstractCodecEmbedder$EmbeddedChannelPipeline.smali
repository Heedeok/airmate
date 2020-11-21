.class final Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelPipeline;
.super Lorg/jboss/netty/channel/DefaultChannelPipeline;
.source "AbstractCodecEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmbeddedChannelPipeline"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;-><init>()V

    .line 233
    return-void
.end method


# virtual methods
.method protected notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 237
    :goto_0
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 238
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 240
    :cond_f
    instance-of v0, p2, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;

    if-eqz v0, :cond_17

    .line 241
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;

    throw v0

    .line 243
    :cond_17
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;

    invoke-direct {v0, p2}, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
