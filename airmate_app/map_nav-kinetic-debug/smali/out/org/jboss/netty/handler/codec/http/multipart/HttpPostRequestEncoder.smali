.class public Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;
.super Ljava/lang/Object;
.source "HttpPostRequestEncoder.java"

# interfaces
.implements Lorg/jboss/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
    }
.end annotation


# instance fields
.field private final bodyListDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private final charset:Ljava/nio/charset/Charset;

.field private currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

.field private currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

.field private duringMixedMode:Z

.field private final factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

.field private globalBodySize:J

.field private headerFinalized:Z

.field private isChunked:Z

.field private isKey:Z

.field private isLastChunk:Z

.field private isLastChunkSent:Z

.field private final isMultipart:Z

.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private multipartDataBoundary:Ljava/lang/String;

.field private final multipartHttpDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private multipartMixedBoundary:Ljava/lang/String;

.field private final request:Lorg/jboss/netty/handler/codec/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpRequest;Z)V
    .registers 6
    .param p1, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .param p2, "multipart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;

    sget-wide v1, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->MINSIZE:J

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;-><init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;Z)V
    .registers 5
    .param p1, "factory"    # Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .param p3, "multipart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 114
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;-><init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;)V
    .registers 7
    .param p1, "factory"    # Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .param p3, "multipart"    # Z
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    .line 128
    if-eqz p1, :cond_4f

    .line 131
    if-eqz p2, :cond_47

    .line 134
    if-eqz p4, :cond_3f

    .line 137
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMethod;->POST:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    if-ne v0, v1, :cond_37

    .line 140
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 141
    iput-object p4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    .line 142
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    .line 147
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    .line 148
    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    .line 150
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v0, :cond_36

    .line 151
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->initDataMultipart()V

    .line 153
    :cond_36
    return-void

    .line 138
    :cond_37
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    const-string v1, "Cannot create a Encoder if not a POST"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "request"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_4f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 670
    if-nez p0, :cond_5

    .line 671
    const-string v0, ""

    return-object v0

    .line 674
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_d} :catch_e

    return-object v0

    .line 675
    :catch_e
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encodeNextChunkMultipart(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .registers 7
    .param p1, "sizeleft"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 724
    return-object v1

    .line 727
    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    if-eqz v0, :cond_29

    .line 728
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "internal":Ljava/lang/String;
    :try_start_14
    const-string v2, "ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_1a} :catch_22

    .line 734
    .local v2, "bytes":[B
    nop

    .line 735
    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 736
    .local v3, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 737
    .end local v0    # "internal":Ljava/lang/String;
    .end local v2    # "bytes":[B
    goto :goto_53

    .line 732
    .end local v3    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v0    # "internal":Ljava/lang/String;
    :catch_22
    move-exception v1

    .line 733
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 738
    .end local v0    # "internal":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_29
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_41

    .line 740
    :try_start_2f
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_3a

    .line 743
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    nop

    .line 751
    .end local v0    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v3    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_38
    move-object v3, v0

    goto :goto_4a

    .line 741
    .end local v3    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catch_3a
    move-exception v0

    .line 742
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 746
    .end local v0    # "e":Ljava/io/IOException;
    :cond_41
    :try_start_41
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_49} :catch_82

    .line 749
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_38

    .line 751
    .end local v0    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v3    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_4a
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_53

    .line 753
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 754
    return-object v1

    .line 757
    :cond_53
    :goto_53
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_5a

    .line 758
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_6b

    .line 760
    :cond_5a
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v4, v0, v2

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 763
    :goto_6b
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    sget v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    if-ge v0, v2, :cond_78

    .line 764
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 765
    return-object v1

    .line 767
    :cond_78
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 768
    .end local v3    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v0    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v1

    .line 747
    .end local v0    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catch_82
    move-exception v0

    .line 748
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encodeNextChunkUrlEncoded(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .registers 12
    .param p1, "sizeleft"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 782
    return-object v1

    .line 784
    :cond_6
    move v0, p1

    .line 786
    .local v0, "size":I
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_74

    .line 788
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 790
    .local v7, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    .line 791
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v8, :cond_40

    .line 792
    new-array v8, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v7, v8, v5

    const-string v9, "="

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    iput-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 795
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    add-int/2addr v8, v6

    sub-int/2addr v0, v8

    goto :goto_60

    .line 797
    :cond_40
    new-array v8, v3, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v9, v8, v5

    aput-object v7, v8, v6

    const-string v9, "="

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v8}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    iput-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 800
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    add-int/2addr v8, v6

    sub-int/2addr v0, v8

    .line 802
    :goto_60
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    sget v9, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    if-lt v8, v9, :cond_75

    .line 803
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 804
    .end local v7    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v1, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v3, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v3

    .line 808
    .end local v1    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v2    # "key":Ljava/lang/String;
    :cond_74
    move-object v7, v1

    .restart local v7    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_75
    :try_start_75
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    check-cast v2, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v2, v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7d} :catch_120

    .line 811
    .end local v7    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v2, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    nop

    .line 812
    const/4 v7, 0x0

    .line 813
    .local v7, "delimiter":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    if-ge v8, v0, :cond_9c

    .line 815
    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    .line 816
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9a

    const-string v8, "&"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    goto :goto_9b

    :cond_9a
    move-object v8, v1

    :goto_9b
    move-object v7, v8

    .line 820
    :cond_9c
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v8

    if-nez v8, :cond_d0

    .line 822
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 823
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v3, :cond_ab

    .line 824
    iput-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_bb

    .line 826
    :cond_ab
    if-eqz v7, :cond_bb

    .line 827
    new-array v3, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v4, v3, v5

    aput-object v7, v3, v6

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 831
    :cond_bb
    :goto_bb
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    sget v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    if-lt v3, v4, :cond_cf

    .line 832
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 833
    .end local v2    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v1    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v2

    .line 835
    .end local v1    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v2    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_cf
    return-object v1

    .line 837
    :cond_d0
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v8, :cond_e6

    .line 838
    if-eqz v7, :cond_e3

    .line 839
    new-array v3, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v2, v3, v5

    aput-object v7, v3, v6

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_107

    .line 842
    :cond_e3
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_107

    .line 845
    :cond_e6
    if-eqz v7, :cond_f9

    .line 846
    new-array v3, v3, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v8, v3, v5

    aput-object v2, v3, v6

    aput-object v7, v3, v4

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_107

    .line 849
    :cond_f9
    new-array v3, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v4, v3, v5

    aput-object v2, v3, v6

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 853
    :goto_107
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    sget v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    if-ge v3, v4, :cond_116

    .line 855
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 856
    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    .line 857
    return-object v1

    .line 859
    :cond_116
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 861
    .end local v2    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v1    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v2

    .line 809
    .end local v1    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v7, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catch_120
    move-exception v1

    .line 810
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5

    .line 699
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 700
    .local v0, "length":I
    sget v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    if-le v0, v1, :cond_20

    .line 701
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sget v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 703
    .local v1, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    sget v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 704
    return-object v1

    .line 707
    .end local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_20
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 708
    .restart local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 709
    return-object v1
.end method

.method private static getNewMultipartDelimiter()Ljava/lang/String;
    .registers 3

    .line 212
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 213
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initDataMultipart()V
    .registers 2

    .line 196
    invoke-static {}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->getNewMultipartDelimiter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    .line 197
    return-void
.end method

.method private initMixedMultipart()V
    .registers 2

    .line 203
    invoke-static {}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->getNewMultipartDelimiter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 204
    return-void
.end method


# virtual methods
.method public addBodyAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 255
    if-eqz p1, :cond_13

    .line 258
    move-object v0, p2

    .line 259
    .local v0, "svalue":Ljava/lang/String;
    if-nez p2, :cond_7

    .line 260
    const-string v0, ""

    .line 262
    :cond_7
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v1, v2, p1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1

    .line 263
    .local v1, "data":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 264
    return-void

    .line 256
    .end local v0    # "svalue":Ljava/lang/String;
    .end local v1    # "data":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addBodyFileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "isText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 277
    if-eqz p1, :cond_40

    .line 280
    if-eqz p2, :cond_38

    .line 283
    move-object v0, p3

    .line 284
    .local v0, "scontentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 285
    .local v1, "contentTransferEncoding":Ljava/lang/String;
    if-nez p3, :cond_f

    .line 286
    if-eqz p4, :cond_d

    .line 287
    const-string v0, "text/plain"

    goto :goto_f

    .line 289
    :cond_d
    const-string v0, "application/octet-stream"

    .line 292
    :cond_f
    :goto_f
    if-nez p4, :cond_15

    .line 293
    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    iget-object v1, v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    .line 295
    :cond_15
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v9

    move-object v4, p1

    move-object v6, v0

    move-object v7, v1

    invoke-interface/range {v2 .. v10}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createFileUpload(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v2

    .line 298
    .local v2, "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    :try_start_29
    invoke-interface {v2, p2}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContent(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_31

    .line 301
    nop

    .line 302
    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 303
    return-void

    .line 299
    :catch_31
    move-exception v3

    .line 300
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v4, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 281
    .end local v0    # "scontentType":Ljava/lang/String;
    .end local v1    # "contentTransferEncoding":Ljava/lang/String;
    .end local v2    # "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addBodyFileUploads(Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;[Z)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # [Ljava/io/File;
    .param p3, "contentType"    # [Ljava/lang/String;
    .param p4, "isText"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 316
    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_11

    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_9

    goto :goto_11

    .line 317
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Different array length"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_11
    :goto_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v1, p2

    if-ge v0, v1, :cond_21

    .line 320
    aget-object v1, p2, v0

    aget-object v2, p3, v0

    aget-boolean v3, p4, v0

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyFileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 322
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public addBodyHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .registers 15
    .param p1, "data"    # Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 332
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->headerFinalized:Z

    if-nez v0, :cond_3b5

    .line 335
    if-eqz p1, :cond_3ad

    .line 338
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    const/4 v1, 0x1

    if-nez v0, :cond_97

    .line 340
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_59

    .line 341
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 344
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_start_19
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v6, v7, v4, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v6

    .line 347
    .local v6, "newattribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v6}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v1

    int-to-long v9, v9

    invoke-interface {v6}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v11

    const/4 v1, 0x0

    add-long/2addr v9, v11

    add-long/2addr v9, v2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_50} :catch_52

    .line 352
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "newattribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    nop

    .line 353
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    goto :goto_96

    .line 350
    .restart local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :catch_52
    move-exception v1

    .line 351
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 353
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_59
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v0, :cond_96

    .line 355
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 357
    .local v0, "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 358
    .restart local v4    # "key":Ljava/lang/String;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 359
    .restart local v5    # "value":Ljava/lang/String;
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v6, v7, v4, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v6

    .line 360
    .restart local v6    # "newattribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    iget-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v6}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v1

    int-to-long v9, v9

    invoke-interface {v6}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v11

    add-long/2addr v9, v11

    add-long/2addr v9, v2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 364
    .end local v0    # "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "newattribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :cond_96
    :goto_96
    return-void

    .line 398
    :cond_97
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_15e

    .line 399
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    if-eqz v0, :cond_cc

    .line 400
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>()V

    .line 401
    .local v0, "internal":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\r\n--"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 404
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 405
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 407
    .end local v0    # "internal":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    :cond_cc
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>()V

    .line 408
    .restart local v0    # "internal":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_de

    .line 410
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 412
    :cond_de
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 414
    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 415
    .local v1, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 419
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 420
    .local v2, "localcharset":Ljava/nio/charset/Charset;
    if-eqz v2, :cond_13e

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 426
    :cond_13e
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v5

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 430
    .end local v0    # "internal":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    .end local v1    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v2    # "localcharset":Ljava/nio/charset/Charset;
    goto/16 :goto_3ac

    :cond_15e
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v0, :cond_3ac

    .line 431
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 432
    .local v0, "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    new-instance v4, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>()V

    .line 433
    .local v4, "internal":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_177

    .line 435
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 437
    :cond_177
    const/4 v5, 0x0

    .line 438
    .local v5, "localMixed":Z
    iget-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    if-eqz v6, :cond_1c7

    .line 439
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v1, :cond_193

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_193

    .line 443
    const/4 v1, 0x1

    goto/16 :goto_289

    .line 449
    :cond_193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "--"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 453
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-direct {v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>()V

    move-object v4, v1

    .line 454
    const-string v1, "\r\n"

    invoke-virtual {v4, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 455
    const/4 v1, 0x0

    .line 457
    .end local v5    # "localMixed":Z
    .local v1, "localMixed":Z
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 458
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    goto/16 :goto_289

    .line 461
    .end local v1    # "localMixed":Z
    .restart local v5    # "localMixed":Z
    :cond_1c7
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v3, :cond_284

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_284

    .line 481
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->initMixedMultipart()V

    .line 482
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    .line 485
    .local v2, "pastAttribute":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v3

    int-to-long v8, v3

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v6, v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "replacement":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Content-Type: multipart/mixed; boundary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Content-Disposition: file; filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v7, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\"\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-virtual {v2, v3, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->setValue(Ljava/lang/String;I)V

    .line 499
    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 504
    const/4 v5, 0x1

    .line 505
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 506
    .end local v2    # "pastAttribute":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    .end local v3    # "replacement":Ljava/lang/String;
    nop

    .line 515
    move v1, v5

    goto :goto_289

    .line 509
    :cond_284
    const/4 v1, 0x0

    .line 510
    .end local v5    # "localMixed":Z
    .restart local v1    # "localMixed":Z
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 511
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 515
    :goto_289
    if-eqz v1, :cond_2ca

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: file; filename=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto :goto_324

    .line 526
    :cond_2ca
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 538
    :goto_324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 540
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "contentTransferEncoding":Ljava/lang/String;
    if-eqz v2, :cond_36a

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    iget-object v3, v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36a

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\r\nContent-Transfer-Encoding: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    iget-object v5, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto :goto_393

    .line 547
    :cond_36a
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    if-eqz v3, :cond_38e

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; charset="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto :goto_393

    .line 551
    :cond_38e
    const-string v3, "\r\n\r\n"

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 553
    :goto_393
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    iget-wide v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v7

    invoke-virtual {v4}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 557
    .end local v0    # "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    .end local v1    # "localMixed":Z
    .end local v2    # "contentTransferEncoding":Ljava/lang/String;
    .end local v4    # "internal":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    :cond_3ac
    :goto_3ac
    return-void

    .line 336
    :cond_3ad
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_3b5
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    const-string v1, "Cannot add value once finalized"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cleanFiles()V
    .registers 3

    .line 159
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->cleanRequestHttpDatas(Lorg/jboss/netty/handler/codec/http/HttpRequest;)V

    .line 160
    return-void
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 866
    return-void
.end method

.method public finalizeRequest()Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 577
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->headerFinalized:Z

    if-nez v0, :cond_14d

    .line 578
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v0, :cond_5e

    .line 579
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>()V

    .line 580
    .local v0, "internal":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    if-eqz v1, :cond_2c

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 583
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 586
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 587
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 588
    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 590
    .end local v0    # "internal":Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
    :cond_5e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->headerFinalized:Z

    .line 594
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v2, "Content-Type"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 595
    .local v1, "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v3, "Transfer-Encoding"

    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 597
    .local v2, "transferEncoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_ac

    .line 598
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v4, "Content-Type"

    invoke-interface {v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->removeHeader(Ljava/lang/String;)V

    .line 599
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 601
    .local v4, "contentType":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "multipart/form-data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    .end local v4    # "contentType":Ljava/lang/String;
    goto :goto_ab

    .line 604
    .restart local v4    # "contentType":Ljava/lang/String;
    :cond_97
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .end local v4    # "contentType":Ljava/lang/String;
    goto :goto_ab

    .line 608
    .restart local v4    # "contentType":Ljava/lang/String;
    :cond_a4
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v6, "Content-Type"

    invoke-interface {v5, v6, v4}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    .end local v4    # "contentType":Ljava/lang/String;
    :goto_ab
    goto :goto_7e

    .line 612
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_ac
    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v3, :cond_cb

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v5, "Content-Type"

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_d4

    .line 618
    :cond_cb
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-interface {v3, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    :goto_d4
    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 623
    .local v3, "realSize":J
    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v5, :cond_e3

    .line 624
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    goto :goto_ee

    .line 626
    :cond_e3
    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 627
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    .line 629
    :goto_ee
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v6, "Content-Length"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    sget v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_13d

    .line 632
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isChunked:Z

    .line 633
    if-eqz v2, :cond_12c

    .line 634
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v5, "Transfer-Encoding"

    invoke-interface {v0, v5}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->removeHeader(Ljava/lang/String;)V

    .line 635
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 636
    .local v5, "v":Ljava/lang/String;
    const-string v6, "chunked"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_124

    .end local v5    # "v":Ljava/lang/String;
    goto :goto_12b

    .line 639
    .restart local v5    # "v":Ljava/lang/String;
    :cond_124
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v7, "Transfer-Encoding"

    invoke-interface {v6, v7, v5}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    .end local v5    # "v":Ljava/lang/String;
    :goto_12b
    goto :goto_10f

    .line 643
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_12c
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v5, "Transfer-Encoding"

    const-string v6, "chunked"

    invoke-interface {v0, v5, v6}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    sget-object v5, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v5}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_14a

    .line 648
    :cond_13d
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->nextChunk()Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v0

    .line 649
    .local v0, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 651
    .end local v0    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :goto_14a
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    return-object v0

    .line 592
    .end local v1    # "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "transferEncoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "realSize":J
    :cond_14d
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    const-string v1, "Header already encoded"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBodyListAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    return-object v0
.end method

.method public hasNextChunk()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 950
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isChunked()Z
    .registers 2

    .line 658
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isChunked:Z

    return v0
.end method

.method public isEndOfInput()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 945
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    return v0
.end method

.method public isMultipart()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    return v0
.end method

.method public bridge synthetic nextChunk()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->nextChunk()Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v0

    return-object v0
.end method

.method public nextChunk()Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 876
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 877
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    .line 878
    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v0

    .line 880
    :cond_f
    const/4 v0, 0x0

    .line 881
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    sget v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    .line 883
    .local v2, "size":I
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v3, :cond_1d

    .line 884
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    sub-int/2addr v2, v3

    .line 886
    :cond_1d
    if-gtz v2, :cond_29

    .line 888
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 889
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v1

    .line 892
    :cond_29
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    if-eqz v3, :cond_4a

    .line 894
    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v3, :cond_39

    .line 895
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkMultipart(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v3

    .line 896
    .local v3, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    if-eqz v3, :cond_38

    .line 897
    return-object v3

    .line 899
    .end local v3    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :cond_38
    goto :goto_40

    .line 900
    :cond_39
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkUrlEncoded(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v3

    .line 901
    .restart local v3    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    if-eqz v3, :cond_40

    .line 903
    return-object v3

    .line 906
    .end local v3    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :cond_40
    :goto_40
    sget v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    sub-int v2, v3, v4

    .line 908
    :cond_4a
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5f

    .line 909
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    .line 911
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 912
    iput-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 913
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v1

    .line 915
    :cond_5f
    :goto_5f
    if-lez v2, :cond_8e

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 916
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 918
    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v3, :cond_7c

    .line 919
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkMultipart(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v3

    goto :goto_80

    .line 921
    :cond_7c
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkUrlEncoded(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v3

    .line 923
    .restart local v3    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :goto_80
    if-nez v3, :cond_8d

    .line 925
    sget v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->chunkSize:I

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v6

    sub-int v2, v5, v6

    .line 926
    goto :goto_5f

    .line 929
    :cond_8d
    return-object v3

    .line 932
    .end local v3    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :cond_8e
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    .line 933
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v3, :cond_9e

    .line 934
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    .line 936
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v1

    .line 939
    :cond_9e
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 940
    iput-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 941
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v1
.end method

.method public setBodyHttpDatas(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 233
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;>;"
    if-eqz p1, :cond_2b

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 237
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 240
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 242
    .local v1, "data":Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 243
    .end local v1    # "data":Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    goto :goto_1a

    .line 244
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2a
    return-void

    .line 234
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "datas"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
