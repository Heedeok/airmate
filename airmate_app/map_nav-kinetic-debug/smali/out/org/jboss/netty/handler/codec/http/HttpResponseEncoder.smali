.class public Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;
.super Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;
.source "HttpResponseEncoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method protected encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 7
    .param p1, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    .line 38
    .local v0, "response":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 39
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 40
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 41
    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 42
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 43
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 44
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 45
    return-void
.end method