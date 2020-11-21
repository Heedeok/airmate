.class final Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$6;
.super Ljava/lang/Object;
.source "ChannelBufferIndexFinder.java"

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public find(Lorg/jboss/netty/buffer/ChannelBuffer;I)Z
    .registers 5
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "guessedIndex"    # I

    .line 92
    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
