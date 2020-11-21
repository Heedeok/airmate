.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;
.super Ljava/lang/Object;
.source "DefaultSpdyHeaderBlock.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;


# instance fields
.field private final headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

.field private invalid:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    .line 36
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method protected appendHeaders(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8

    .line 94
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_36
    return-void
.end method

.method public clearHeaders()V
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->clearHeaders()V

    .line 64
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

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

    .line 83
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeaderNames()Ljava/util/Set;

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

    .line 75
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeaders()Ljava/util/List;

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

    .line 71
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isInvalid()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->invalid:Z

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHeader(Ljava/lang/String;)V

    .line 60
    return-void
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

    .line 55
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 56
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public setInvalid()V
    .registers 2

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->invalid:Z

    .line 44
    return-void
.end method
