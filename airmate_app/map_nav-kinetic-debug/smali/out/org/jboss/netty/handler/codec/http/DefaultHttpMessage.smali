.class public Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;
.super Ljava/lang/Object;
.source "DefaultHttpMessage.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpMessage;


# instance fields
.field private chunked:Z

.field private content:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

.field private version:Lorg/jboss/netty/handler/codec/http/HttpVersion;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .registers 3
    .param p1, "version"    # Lorg/jboss/netty/handler/codec/http/HttpVersion;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    .line 33
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 40
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->setProtocolVersion(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    .line 41
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method appendHeaders(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8

    .line 165
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_31
    return-void
.end method

.method public clearHeaders()V
    .registers 2

    .line 90
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->clearHeaders()V

    .line 91
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 136
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentLength(J)J
    .registers 5
    .param p1, "defaultValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

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

    .line 121
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

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

    .line 113
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

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

    .line 109
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .registers 2

    .line 125
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->version:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->chunked:Z

    if-eqz v0, :cond_6

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_6
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    return v0
.end method

.method public isKeepAlive()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->isKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setChunked(Z)V
    .registers 3
    .param p1, "chunked"    # Z

    .line 78
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->chunked:Z

    .line 79
    if-eqz p1, :cond_9

    .line 80
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 82
    :cond_9
    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "content"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 94
    if-nez p1, :cond_4

    .line 95
    sget-object p1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 97
    :cond_4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->isChunked()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 98
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-empty content disallowed if this.chunked == true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_19
    :goto_19
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 102
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

    .line 52
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 53
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public setProtocolVersion(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .registers 4
    .param p1, "version"    # Lorg/jboss/netty/handler/codec/http/HttpVersion;

    .line 129
    if-eqz p1, :cond_5

    .line 132
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->version:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    .line 133
    return-void

    .line 130
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "(version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", keepAlive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->isKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", chunked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->isChunked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->appendHeaders(Ljava/lang/StringBuilder;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
