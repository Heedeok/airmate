.class public Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;
.super Ljava/lang/Object;
.source "DefaultHttpChunk.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpChunk;


# instance fields
.field private content:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private last:Z


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 2
    .param p1, "content"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 37
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public isLast()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->last:Z

    return v0
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "content"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 41
    if-eqz p1, :cond_d

    .line 44
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->last:Z

    .line 45
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 46
    return-void

    .line 42
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
