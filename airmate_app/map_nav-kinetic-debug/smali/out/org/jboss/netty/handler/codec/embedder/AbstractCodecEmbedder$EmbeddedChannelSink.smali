.class final Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;
.super Ljava/lang/Object;
.source "AbstractCodecEmbedder.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelSink;
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmbeddedChannelSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 184
    const-class v0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;)V
    .registers 2

    .line 185
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>.EmbeddedChannelSink;"
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;->this$0:Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method private handleEvent(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 198
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>.EmbeddedChannelSink;"
    instance-of v0, p1, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_15

    .line 199
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;->this$0:Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->productQueue:Ljava/util/Queue;

    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 200
    .local v0, "offered":Z
    nop

    .line 201
    .end local v0    # "offered":Z
    goto :goto_19

    :cond_15
    instance-of v0, p1, Lorg/jboss/netty/channel/ExceptionEvent;

    if-nez v0, :cond_1a

    .line 206
    :goto_19
    return-void

    .line 202
    :cond_1a
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;

    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/channel/ExceptionEvent;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 3
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 194
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>.EmbeddedChannelSink;"
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;->handleEvent(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 195
    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    .registers 6
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p3, "cause"    # Lorg/jboss/netty/channel/ChannelPipelineException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>.EmbeddedChannelSink;"
    invoke-virtual {p3}, Lorg/jboss/netty/channel/ChannelPipelineException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 212
    .local v0, "actualCause":Ljava/lang/Throwable;
    if-nez v0, :cond_7

    .line 213
    move-object v0, p3

    .line 216
    :cond_7
    new-instance v1, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 5
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "task"    # Ljava/lang/Runnable;

    .line 221
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>.EmbeddedChannelSink;"
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 222
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 223
    :catch_c
    move-exception v0

    .line 224
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 190
    .local p0, "this":Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;, "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder<TE;>.EmbeddedChannelSink;"
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelSink;->handleEvent(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 191
    return-void
.end method
