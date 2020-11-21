.class public Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;
.super Ljava/lang/Object;
.source "DefaultHttpChunkTrailer.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;


# instance fields
.field private final headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer$1;-><init>(Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public clearHeaders()V
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->clearHeaders()V

    .line 65
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 88
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaderNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isLast()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "content"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 56
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 57
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method
