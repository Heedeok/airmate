.class public Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;
.super Ljava/lang/Object;
.source "HttpPostRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    }
.end annotation


# instance fields
.field private final bodyListHttpData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private bodyListHttpDataRank:I

.field private final bodyMapHttpData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;>;"
        }
    .end annotation
.end field

.field private bodyToDecode:Z

.field private final charset:Ljava/nio/charset/Charset;

.field private currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

.field private currentFieldAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/handler/codec/http/multipart/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

.field private currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field private final factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

.field private isLastChunk:Z

.field private isMultipart:Z

.field private multipartDataBoundary:Ljava/lang/String;

.field private multipartMixedBoundary:Ljava/lang/String;

.field private final request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

.field private undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
    .registers 5
    .param p1, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;

    sget-wide v1, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->MINSIZE:J

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;-><init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
    .registers 4
    .param p1, "factory"    # Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;
        }
    .end annotation

    .line 148
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;-><init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V
    .registers 8
    .param p1, "factory"    # Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lorg/jboss/netty/util/internal/CaseIgnoringComparator;->INSTANCE:Lorg/jboss/netty/util/internal/CaseIgnoringComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    .line 108
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 163
    if-eqz p1, :cond_8d

    .line 166
    if-eqz p2, :cond_85

    .line 169
    if-eqz p3, :cond_7d

    .line 172
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 173
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    .line 174
    .local v0, "method":Lorg/jboss/netty/handler/codec/http/HttpMethod;
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMethod;->POST:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3c

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMethod;->PUT:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMethod;->PATCH:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 175
    :cond_3c
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyToDecode:Z

    .line 177
    :cond_3e
    iput-object p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    .line 178
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    .line 180
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v3, "Content-Type"

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 181
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v3, "Content-Type"

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->checkMultipart(Ljava/lang/String;)V

    goto :goto_5b

    .line 183
    :cond_58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    .line 185
    :goto_5b
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyToDecode:Z

    if-eqz v1, :cond_75

    .line 188
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->isChunked()Z

    move-result v1

    if-nez v1, :cond_74

    .line 189
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 190
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    .line 191
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBody()V

    .line 193
    :cond_74
    return-void

    .line 186
    :cond_75
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;

    const-string v2, "No Body to decode"

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0    # "method":Lorg/jboss/netty/handler/codec/http/HttpMethod;
    :cond_7d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "request"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_8d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .registers 5
    .param p1, "data"    # Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 419
    if-nez p1, :cond_3

    .line 420
    return-void

    .line 422
    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 423
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;>;"
    if-nez v0, :cond_21

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 425
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method private checkMultipart(Ljava/lang/String;)V
    .registers 7
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 257
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->splitHeaderContentType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "headerContentType":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/form-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "boundary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 262
    aget-object v1, v0, v2

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "boundary":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4a

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    .line 267
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    .line 268
    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 269
    .end local v1    # "boundary":[Ljava/lang/String;
    goto :goto_54

    .line 264
    .restart local v1    # "boundary":[Ljava/lang/String;
    :cond_4a
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v3, "Needs a boundary value"

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    .end local v1    # "boundary":[Ljava/lang/String;
    :cond_52
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    .line 272
    :goto_54
    return-void
.end method

.method private cleanMixedAttributes()V
    .registers 3

    .line 1204
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "charset"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "filename"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    return-void
.end method

.method private static cleanString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "field"    # Ljava/lang/String;

    .line 1914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1915
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1916
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 1917
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1918
    .local v2, "nextChar":C
    const/16 v3, 0x3a

    const/16 v4, 0x20

    if-ne v2, v3, :cond_1f

    .line 1919
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 1920
    :cond_1f
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_27

    .line 1921
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 1922
    :cond_27
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2f

    .line 1923
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 1924
    :cond_2f
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_37

    .line 1925
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 1926
    :cond_37
    const/16 v3, 0x9

    if-ne v2, v3, :cond_3f

    .line 1927
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 1928
    :cond_3f
    const/16 v3, 0x22

    if-ne v2, v3, :cond_44

    .end local v2    # "nextChar":C
    goto :goto_47

    .line 1931
    .restart local v2    # "nextChar":C
    :cond_44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1916
    .end local v2    # "nextChar":C
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1934
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 705
    if-nez p0, :cond_5

    .line 706
    const-string v0, ""

    return-object v0

    .line 709
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_d} :catch_e

    return-object v0

    .line 710
    :catch_e
    move-exception v0

    .line 711
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .registers 9
    .param p1, "state"    # Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 754
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_c0

    .line 844
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :pswitch_14
    return-object v1

    .line 840
    :pswitch_15
    return-object v1

    .line 837
    :pswitch_16
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->getFileUpload(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    .line 833
    :pswitch_1d
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->findMultipartDisposition()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    .line 828
    :pswitch_22
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartMixedBoundary:Ljava/lang/String;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->findMultipartDelimiter(Ljava/lang/String;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    .line 823
    :pswitch_2d
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->getFileUpload(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    .line 764
    :pswitch_34
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->findMultipartDelimiter(Ljava/lang/String;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    .line 760
    :pswitch_3f
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Should not be called with the current status"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :pswitch_47
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Should not be called with the current status"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :pswitch_4f
    const/4 v0, 0x0

    .line 782
    .local v0, "localCharset":Ljava/nio/charset/Charset;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v3, "charset"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 784
    .local v2, "charsetAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    if-eqz v2, :cond_6d

    .line 786
    :try_start_5c
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_64} :catch_66

    move-object v0, v3

    .line 789
    goto :goto_6d

    .line 787
    :catch_66
    move-exception v1

    .line 788
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v3, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 791
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6d
    :goto_6d
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v4, "name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 793
    .local v3, "nameAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-nez v4, :cond_a7

    .line 795
    :try_start_7b
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v4

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_89
    .catch Ljava/lang/NullPointerException; {:try_start_7b .. :try_end_89} :catch_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_89} :catch_99
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_89} :catch_92

    .line 803
    nop

    .line 804
    if-eqz v0, :cond_a7

    .line 805
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v4, v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setCharset(Ljava/nio/charset/Charset;)V

    goto :goto_a7

    .line 801
    :catch_92
    move-exception v1

    .line 802
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v4, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 799
    .end local v1    # "e":Ljava/io/IOException;
    :catch_99
    move-exception v1

    .line 800
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v4, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 797
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a0
    move-exception v1

    .line 798
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v4, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 810
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_a7
    :goto_a7
    :try_start_a7
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->loadFieldMultipart(Ljava/lang/String;)V
    :try_end_ac
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_a7 .. :try_end_ac} :catch_b8

    .line 813
    nop

    .line 814
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 815
    .local v4, "finalAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 816
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    .line 818
    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 819
    return-object v4

    .line 811
    .end local v4    # "finalAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :catch_b8
    move-exception v4

    .line 812
    .local v4, "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
    return-object v1

    .line 777
    .end local v0    # "localCharset":Ljava/nio/charset/Charset;
    .end local v2    # "charsetAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v3    # "nameAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v4    # "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
    :pswitch_ba
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->findMultipartDisposition()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_34
        :pswitch_2d
        :pswitch_22
        :pswitch_1d
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method private findMultipartDelimiter(Ljava/lang/String;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .registers 9
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "dispositionStatus"    # Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    .param p3, "closeDelimiterStatus"    # Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 893
    .local v0, "readerIndex":I
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipControlCharacters()V

    .line 894
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipOneLine()Z

    .line 897
    const/4 v1, 0x0

    :try_start_d
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readDelimiter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_d .. :try_end_11} :catch_55

    .line 901
    .local v2, "newline":Ljava/lang/String;
    nop

    .line 902
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 903
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 904
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v1

    return-object v1

    .line 905
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 907
    iput-object p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 908
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v3, v4, :cond_47

    .line 911
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    .line 912
    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v1

    return-object v1

    .line 914
    :cond_47
    return-object v1

    .line 916
    :cond_48
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 917
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v3, "No Multipart delimiter found"

    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 898
    .end local v2    # "newline":Ljava/lang/String;
    :catch_55
    move-exception v2

    .line 899
    .local v2, "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 900
    return-object v1
.end method

.method private findMultipartDisposition()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 927
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    .line 928
    .local v2, "readerIndex":I
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v3, :cond_17

    .line 929
    new-instance v0, Ljava/util/TreeMap;

    sget-object v3, Lorg/jboss/netty/util/internal/CaseIgnoringComparator;->INSTANCE:Lorg/jboss/netty/util/internal/CaseIgnoringComparator;

    invoke-direct {v0, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    .line 933
    :cond_17
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .local v4, "newline":Ljava/lang/String;
    .local v5, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .local v6, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .local v7, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :goto_1c
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipOneLine()Z

    move-result v8

    if-nez v8, :cond_207

    .line 934
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipControlCharacters()V

    .line 937
    :try_start_25
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readLine()Ljava/lang/String;

    move-result-object v8
    :try_end_29
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_25 .. :try_end_29} :catch_1fd

    .end local v4    # "newline":Ljava/lang/String;
    move-object v4, v8

    .line 941
    .restart local v4    # "newline":Ljava/lang/String;
    nop

    .line 942
    invoke-static {v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->splitMultipartHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 943
    .local v8, "contents":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v10, v8, v9

    const-string v11, "Content-Disposition"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v10, :cond_b7

    .line 944
    const/4 v10, 0x0

    .line 945
    .local v10, "checkSecondArg":Z
    iget-object v13, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v14, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v13, v14, :cond_4c

    .line 946
    aget-object v13, v8, v12

    const-string v14, "form-data"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    goto :goto_65

    .line 949
    :cond_4c
    aget-object v13, v8, v12

    const-string v14, "attachment"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_63

    aget-object v13, v8, v12

    const-string v14, "file"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_61

    goto :goto_63

    :cond_61
    const/4 v13, 0x0

    goto :goto_64

    :cond_63
    :goto_63
    const/4 v13, 0x1

    :goto_64
    move v10, v13

    .line 954
    :goto_65
    if-eqz v10, :cond_b5

    .line 956
    move-object/from16 v17, v6

    move-object v6, v0

    move-object/from16 v0, v17

    .local v11, "i":I
    :goto_6c
    array-length v13, v8

    if-ge v11, v13, :cond_b0

    .line 957
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    aget-object v0, v8, v11

    const-string v13, "="

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 960
    .local v13, "values":[Ljava/lang/String;
    :try_start_78
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v14, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    aget-object v15, v13, v9

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    aget-object v16, v13, v12

    invoke-static/range {v16 .. v16}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v12, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v12}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v14, v15, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0
    :try_end_92
    .catch Ljava/lang/NullPointerException; {:try_start_78 .. :try_end_92} :catch_a9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78 .. :try_end_92} :catch_a2

    .end local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    move-object v6, v0

    .line 966
    .restart local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    nop

    .line 967
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    invoke-interface {v6}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .end local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v13    # "values":[Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move-object v0, v13

    const/4 v12, 0x1

    goto :goto_6c

    .line 964
    .end local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :catch_a2
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v3, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 962
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "values":[Ljava/lang/String;
    :catch_a9
    move-exception v0

    .line 963
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v3, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 971
    .end local v10    # "checkSecondArg":Z
    .end local v11    # "i":I
    .end local v13    # "values":[Ljava/lang/String;
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :cond_b0
    move-object/from16 v17, v6

    move-object v6, v0

    move-object/from16 v0, v17

    :cond_b5
    goto/16 :goto_1e4

    :cond_b7
    aget-object v3, v8, v9

    const-string v10, "Content-Transfer-Encoding"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 975
    :try_start_c1
    iget-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v9, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v10, "Content-Transfer-Encoding"

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v9, v10, v11}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v3
    :try_end_d2
    .catch Ljava/lang/NullPointerException; {:try_start_c1 .. :try_end_d2} :catch_e5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c1 .. :try_end_d2} :catch_de

    .line 982
    .end local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .local v3, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    nop

    .line 983
    iget-object v5, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v9, "Content-Transfer-Encoding"

    invoke-interface {v5, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .end local v3    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    nop

    .line 1048
    .end local v8    # "contents":[Ljava/lang/String;
    .restart local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :goto_db
    move-object v5, v3

    goto/16 :goto_1e4

    .line 980
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v8    # "contents":[Ljava/lang/String;
    :catch_de
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v3, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 978
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_e5
    move-exception v0

    .line 979
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v3, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 985
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :cond_ec
    aget-object v3, v8, v9

    const-string v10, "Content-Length"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 989
    :try_start_f6
    iget-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v9, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v10, "Content-Length"

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v9, v10, v11}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v3
    :try_end_107
    .catch Ljava/lang/NullPointerException; {:try_start_f6 .. :try_end_107} :catch_117
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f6 .. :try_end_107} :catch_110

    .line 996
    .end local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v3    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    nop

    .line 997
    iget-object v5, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v9, "Content-Length"

    invoke-interface {v5, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    .end local v3    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    goto :goto_db

    .line 994
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :catch_110
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v3, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 992
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_117
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v3, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 999
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :cond_11e
    aget-object v3, v8, v9

    const-string v10, "Content-Type"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e6

    .line 1001
    const/4 v3, 0x1

    aget-object v10, v8, v3

    const-string v3, "multipart/mixed"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 1002
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v3, :cond_162

    .line 1003
    aget-object v0, v8, v11

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "values":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 1005
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 1006
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v3

    return-object v3

    .line 1008
    .end local v0    # "values":[Ljava/lang/String;
    :cond_162
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v3, "Mixed Multipart found in a previous Mixed Multipart"

    invoke-direct {v0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :cond_16a
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_16b
    array-length v10, v8

    if-ge v3, v10, :cond_1e4

    .line 1013
    aget-object v10, v8, v3

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "charset"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1ad

    .line 1015
    .end local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    aget-object v7, v8, v3

    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1018
    .local v7, "values":[Ljava/lang/String;
    :try_start_184
    iget-object v10, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v11, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v12, "charset"

    const/4 v13, 0x1

    aget-object v14, v7, v13

    invoke-static {v14}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v11, v12, v14}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v10
    :try_end_195
    .catch Ljava/lang/NullPointerException; {:try_start_184 .. :try_end_195} :catch_1a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_184 .. :try_end_195} :catch_19f

    .end local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    move-object v6, v10

    .line 1025
    .restart local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    nop

    .line 1026
    iget-object v10, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v11, "charset"

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .end local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v7    # "values":[Ljava/lang/String;
    goto :goto_1d3

    .line 1023
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :catch_19f
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v5, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1021
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "values":[Ljava/lang/String;
    :catch_1a6
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v5, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1031
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .local v7, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :cond_1ad
    const/4 v13, 0x1

    :try_start_1ae
    iget-object v10, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v11, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    aget-object v12, v8, v9

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    aget-object v14, v8, v3

    invoke-static {v14}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v14, v15}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v11, v12, v14}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v10
    :try_end_1c8
    .catch Ljava/lang/NullPointerException; {:try_start_1ae .. :try_end_1c8} :catch_1dd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ae .. :try_end_1c8} :catch_1d6

    .end local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    move-object v7, v10

    .line 1038
    .restart local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    nop

    .line 1039
    iget-object v10, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    invoke-interface {v7}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :goto_1d3
    add-int/lit8 v3, v3, 0x1

    goto :goto_16b

    .line 1036
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :catch_1d6
    move-exception v0

    .line 1037
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v5, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1034
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1dd
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v5, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1048
    .end local v3    # "i":I
    .end local v8    # "contents":[Ljava/lang/String;
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :cond_1e4
    :goto_1e4
    goto/16 :goto_1c

    .line 1045
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v5    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v6    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v7    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .restart local v8    # "contents":[Ljava/lang/String;
    :cond_1e6
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Params: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    .end local v8    # "contents":[Ljava/lang/String;
    :catch_1fd
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 939
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
    iget-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 940
    const/4 v3, 0x0

    return-object v3

    .line 1050
    .end local v0    # "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
    .end local v4    # "newline":Ljava/lang/String;
    :cond_207
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v3, "filename"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 1052
    .local v0, "filenameAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    iget-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v3, v4, :cond_22f

    .line 1053
    if-eqz v0, :cond_224

    .line 1055
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 1057
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v3

    return-object v3

    .line 1060
    :cond_224
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 1062
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v3

    return-object v3

    .line 1065
    :cond_22f
    if-eqz v0, :cond_23c

    .line 1067
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDFILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 1069
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDFILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v3

    return-object v3

    .line 1072
    :cond_23c
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v4, "Filename not found"

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getFileUpload(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .registers 23
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 1087
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v2, "Content-Transfer-Encoding"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 1089
    .local v2, "encoding":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    iget-object v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    .line 1091
    .local v3, "localCharset":Ljava/nio/charset/Charset;
    sget-object v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT7:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    .line 1092
    .local v4, "mechanism":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;
    if-eqz v2, :cond_63

    .line 1095
    :try_start_13
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_5c

    .line 1098
    .local v0, "code":Ljava/lang/String;
    nop

    .line 1099
    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT7:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    iget-object v5, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1100
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_63

    .line 1101
    :cond_29
    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT8:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    iget-object v5, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1102
    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 1103
    sget-object v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT8:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    goto :goto_63

    .line 1104
    :cond_38
    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    iget-object v5, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1107
    sget-object v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    goto :goto_63

    .line 1109
    :cond_45
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TransferEncoding Unknown: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1096
    .end local v0    # "code":Ljava/lang/String;
    :catch_5c
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v5, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1113
    .end local v0    # "e":Ljava/io/IOException;
    :cond_63
    :goto_63
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v5, "charset"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 1115
    .local v5, "charsetAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    if-eqz v5, :cond_81

    .line 1117
    :try_start_70
    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_78} :catch_7a

    move-object v3, v0

    .line 1120
    goto :goto_81

    .line 1118
    :catch_7a
    move-exception v0

    .line 1119
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v6, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1122
    .end local v0    # "e":Ljava/io/IOException;
    :cond_81
    :goto_81
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-nez v0, :cond_10a

    .line 1123
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v6, "filename"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 1125
    .local v6, "filenameAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v7, "name"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 1127
    .local v16, "nameAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v7, "Content-Type"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 1129
    .local v17, "contentTypeAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    if-eqz v17, :cond_102

    .line 1133
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v7, "Content-Length"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-object/from16 v18, v0

    .line 1137
    .local v18, "lengthAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    if-eqz v18, :cond_cc

    :try_start_b8
    invoke-interface/range {v18 .. v18}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c0} :catch_c5
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_c0} :catch_c1

    goto :goto_ce

    .line 1141
    :catch_c1
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v7, 0x0

    goto :goto_cf

    .line 1139
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_c5
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v7, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1137
    .end local v0    # "e":Ljava/io/IOException;
    :cond_cc
    const-wide/16 v7, 0x0

    .line 1143
    .local v7, "size":J
    :goto_ce
    nop

    .line 1145
    .end local v7    # "size":J
    .local v19, "size":J
    :goto_cf
    move-wide/from16 v19, v7

    :try_start_d1
    iget-object v7, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v8, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface/range {v16 .. v16}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v17 .. v17}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    move-object v13, v3

    move-wide/from16 v14, v19

    invoke-interface/range {v7 .. v15}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createFileUpload(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    :try_end_ec
    .catch Ljava/lang/NullPointerException; {:try_start_d1 .. :try_end_ec} :catch_fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d1 .. :try_end_ec} :catch_f4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_ec} :catch_ed

    .line 1156
    goto :goto_10a

    .line 1154
    :catch_ed
    move-exception v0

    .line 1155
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v7, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1152
    .end local v0    # "e":Ljava/io/IOException;
    :catch_f4
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v7, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1150
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_fb
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v7, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1130
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v18    # "lengthAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v19    # "size":J
    :cond_102
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v7, "Content-Type is absent but required"

    invoke-direct {v0, v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    .end local v6    # "filenameAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v16    # "nameAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v17    # "contentTypeAttribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :cond_10a
    :goto_10a
    const/4 v6, 0x0

    :try_start_10b
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readFileUploadByteMultipart(Ljava/lang/String;)V
    :try_end_10e
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_10b .. :try_end_10e} :catch_131

    .line 1166
    nop

    .line 1167
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 1169
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v7, :cond_124

    .line 1170
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 1171
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    goto :goto_12b

    .line 1173
    :cond_124
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 1174
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanMixedAttributes()V

    .line 1176
    :goto_12b
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 1177
    .local v0, "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 1178
    return-object v0

    .line 1183
    .end local v0    # "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    :cond_130
    return-object v6

    .line 1161
    :catch_131
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1165
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
    return-object v6
.end method

.method private loadFieldMultipart(Ljava/lang/String;)V
    .registers 15
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 1797
    const/4 v0, 0x0

    .line 1799
    .local v0, "sao":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
    :try_start_1
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_8
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_1 .. :try_end_8} :catch_10c

    move-object v0, v1

    .line 1803
    nop

    .line 1804
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .line 1807
    .local v1, "readerIndex":I
    const/4 v2, 0x1

    .line 1808
    .local v2, "newLine":Z
    const/4 v3, 0x0

    .line 1809
    .local v3, "index":I
    :try_start_12
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    .line 1810
    .local v4, "lastPosition":I
    const/4 v5, -0x1

    .line 1811
    .local v5, "setReadPosition":I
    const/4 v6, 0x0

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    .line 1813
    .local v2, "found":Z
    .local v3, "newLine":Z
    .local v4, "index":I
    .local v5, "lastPosition":I
    .local v7, "setReadPosition":I
    :cond_1f
    :goto_1f
    iget v8, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    const/4 v10, 0x1

    if-ge v8, v9, :cond_bb

    .line 1814
    iget-object v8, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v8, v8, v9

    .line 1815
    .local v8, "nextByte":B
    const/16 v9, 0xd

    const/16 v11, 0xa

    if-eqz v3, :cond_82

    .line 1817
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    if-ne v8, v12, :cond_4a

    .line 1818
    add-int/lit8 v4, v4, 0x1

    .line 1819
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v4, :cond_1f

    .line 1820
    const/4 v2, 0x1

    .line 1821
    invoke-virtual {v0, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1822
    goto/16 :goto_bb

    .line 1826
    :cond_4a
    const/4 v3, 0x0

    .line 1827
    const/4 v4, 0x0

    .line 1829
    if-ne v8, v9, :cond_71

    .line 1830
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v9, v10, :cond_6a

    .line 1831
    iget-object v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v9, v9, v10

    move v8, v9

    .line 1832
    if-ne v8, v11, :cond_b9

    .line 1833
    const/4 v3, 0x1

    .line 1834
    const/4 v4, 0x0

    .line 1835
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v9, v9, -0x2

    .line 1836
    .end local v5    # "lastPosition":I
    .local v9, "lastPosition":I
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    goto :goto_b0

    .line 1839
    .end local v9    # "lastPosition":I
    .restart local v5    # "lastPosition":I
    :cond_6a
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v5, v9

    .line 1840
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v7, v9

    goto :goto_b9

    .line 1842
    :cond_71
    if-ne v8, v11, :cond_7b

    .line 1843
    const/4 v3, 0x1

    .line 1844
    const/4 v4, 0x0

    .line 1845
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    sub-int/2addr v9, v10

    .line 1846
    .end local v5    # "lastPosition":I
    .restart local v9    # "lastPosition":I
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    goto :goto_b0

    .line 1848
    .end local v9    # "lastPosition":I
    .restart local v5    # "lastPosition":I
    :cond_7b
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v5, v9

    .line 1849
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v7, v9

    goto :goto_b9

    .line 1854
    :cond_82
    if-ne v8, v9, :cond_a7

    .line 1855
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v9, v10, :cond_a0

    .line 1856
    iget-object v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v9, v9, v10

    move v8, v9

    .line 1857
    if-ne v8, v11, :cond_b9

    .line 1858
    const/4 v3, 0x1

    .line 1859
    const/4 v4, 0x0

    .line 1860
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v9, v9, -0x2

    .line 1861
    .end local v5    # "lastPosition":I
    .restart local v9    # "lastPosition":I
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    goto :goto_b0

    .line 1864
    .end local v9    # "lastPosition":I
    .restart local v5    # "lastPosition":I
    :cond_a0
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v5, v9

    .line 1865
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v7, v9

    goto :goto_b9

    .line 1867
    :cond_a7
    if-ne v8, v11, :cond_b3

    .line 1868
    const/4 v3, 0x1

    .line 1869
    const/4 v4, 0x0

    .line 1870
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    sub-int/2addr v9, v10

    .line 1871
    .end local v5    # "lastPosition":I
    .restart local v9    # "lastPosition":I
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1877
    .end local v8    # "nextByte":B
    .end local v9    # "lastPosition":I
    .restart local v5    # "lastPosition":I
    :goto_b0
    move v7, v5

    move v5, v9

    goto :goto_b9

    .line 1873
    .restart local v8    # "nextByte":B
    :cond_b3
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v5, v9

    .line 1874
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v7, v9

    .line 1877
    .end local v8    # "nextByte":B
    :cond_b9
    :goto_b9
    goto/16 :goto_1f

    .line 1878
    :cond_bb
    :goto_bb
    if-lez v7, :cond_c2

    .line 1879
    iput v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1880
    invoke-virtual {v0, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V
    :try_end_c2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_c2} :catch_100

    .line 1882
    :cond_c2
    if-eqz v2, :cond_e0

    .line 1887
    :try_start_c4
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v9, v5, v1

    invoke-interface {v8, v1, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    invoke-interface {v6, v8, v10}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d1} :catch_d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c4 .. :try_end_d1} :catch_100

    .line 1891
    nop

    .line 1892
    :try_start_d2
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1906
    .end local v2    # "found":Z
    .end local v3    # "newLine":Z
    .end local v4    # "index":I
    .end local v5    # "lastPosition":I
    .end local v7    # "setReadPosition":I
    nop

    .line 1907
    return-void

    .line 1889
    .restart local v2    # "found":Z
    .restart local v3    # "newLine":Z
    .restart local v4    # "index":I
    .restart local v5    # "lastPosition":I
    .restart local v7    # "setReadPosition":I
    :catch_d9
    move-exception v6

    .line 1890
    .local v6, "e":Ljava/io/IOException;
    new-instance v8, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v8, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_e0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d2 .. :try_end_e0} :catch_100

    .line 1895
    .end local v6    # "e":Ljava/io/IOException;
    :cond_e0
    :try_start_e0
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v10, v5, v1

    invoke-interface {v9, v1, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_ed} :catch_f9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e0 .. :try_end_ed} :catch_100

    .line 1899
    nop

    .line 1900
    :try_start_ee
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1901
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v6

    .line 1897
    :catch_f9
    move-exception v6

    .line 1898
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v8, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v8, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_100
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ee .. :try_end_100} :catch_100

    .line 1903
    .end local v2    # "found":Z
    .end local v3    # "newLine":Z
    .end local v4    # "index":I
    .end local v5    # "lastPosition":I
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "setReadPosition":I
    :catch_100
    move-exception v2

    .line 1904
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1905
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v3, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1800
    .end local v1    # "readerIndex":I
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_10c
    move-exception v1

    .line 1801
    .local v1, "e1":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->loadFieldMultipartStandard(Ljava/lang/String;)V

    .line 1802
    return-void
.end method

.method private loadFieldMultipartStandard(Ljava/lang/String;)V
    .registers 13
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 1702
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 1705
    .local v0, "readerIndex":I
    const/4 v1, 0x1

    .line 1706
    .local v1, "newLine":Z
    const/4 v2, 0x0

    .line 1707
    .local v2, "index":I
    :try_start_8
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    .line 1708
    .local v3, "lastPosition":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v2

    move v2, v1

    const/4 v1, 0x0

    .line 1709
    .local v1, "found":Z
    .local v2, "newLine":Z
    .local v3, "index":I
    .local v5, "lastPosition":I
    :cond_13
    :goto_13
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_a2

    .line 1710
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v6

    .line 1711
    .local v6, "nextByte":B
    const/16 v8, 0xd

    const/16 v9, 0xa

    if-eqz v2, :cond_6d

    .line 1713
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    if-ne v6, v10, :cond_39

    .line 1714
    add-int/lit8 v3, v3, 0x1

    .line 1715
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v3, :cond_13

    .line 1716
    const/4 v1, 0x1

    .line 1717
    goto/16 :goto_a2

    .line 1721
    :cond_39
    const/4 v2, 0x0

    .line 1722
    const/4 v3, 0x0

    .line 1724
    if-ne v6, v8, :cond_59

    .line 1725
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 1726
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v7

    move v6, v7

    .line 1727
    if-ne v6, v9, :cond_a0

    .line 1728
    const/4 v2, 0x1

    .line 1729
    const/4 v3, 0x0

    .line 1730
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    goto :goto_8a

    .line 1733
    :cond_59
    if-ne v6, v9, :cond_65

    .line 1734
    const/4 v2, 0x1

    .line 1735
    const/4 v3, 0x0

    .line 1736
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v8

    sub-int/2addr v8, v7

    goto :goto_97

    .line 1738
    :cond_65
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    move v5, v7

    goto :goto_a0

    .line 1743
    :cond_6d
    if-ne v6, v8, :cond_8c

    .line 1744
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 1745
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v7

    move v6, v7

    .line 1746
    if-ne v6, v9, :cond_a0

    .line 1747
    const/4 v2, 0x1

    .line 1748
    const/4 v3, 0x0

    .line 1749
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    .line 1760
    .end local v6    # "nextByte":B
    :goto_8a
    move v5, v7

    goto :goto_a0

    .line 1752
    .restart local v6    # "nextByte":B
    :cond_8c
    if-ne v6, v9, :cond_99

    .line 1753
    const/4 v2, 0x1

    .line 1754
    const/4 v3, 0x0

    .line 1755
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v8

    sub-int/2addr v8, v7

    .line 1760
    .end local v6    # "nextByte":B
    :goto_97
    move v5, v8

    goto :goto_a0

    .line 1757
    .restart local v6    # "nextByte":B
    :cond_99
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7
    :try_end_9f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_9f} :catch_e0

    move v5, v7

    .line 1760
    .end local v6    # "nextByte":B
    :cond_a0
    :goto_a0
    goto/16 :goto_13

    .line 1761
    :cond_a2
    :goto_a2
    if-eqz v1, :cond_c0

    .line 1766
    :try_start_a4
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v8, v5, v0

    invoke-interface {v6, v0, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v4, v6, v7}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b1} :catch_b9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a4 .. :try_end_b1} :catch_e0

    .line 1771
    nop

    .line 1772
    :try_start_b2
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1787
    .end local v1    # "found":Z
    .end local v2    # "newLine":Z
    .end local v3    # "index":I
    .end local v5    # "lastPosition":I
    nop

    .line 1788
    return-void

    .line 1769
    .restart local v1    # "found":Z
    .restart local v2    # "newLine":Z
    .restart local v3    # "index":I
    .restart local v5    # "lastPosition":I
    :catch_b9
    move-exception v4

    .line 1770
    .local v4, "e":Ljava/io/IOException;
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v6, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_c0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b2 .. :try_end_c0} :catch_e0

    .line 1775
    .end local v4    # "e":Ljava/io/IOException;
    :cond_c0
    :try_start_c0
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v8, v5, v0

    invoke-interface {v7, v0, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_cd} :catch_d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c0 .. :try_end_cd} :catch_e0

    .line 1780
    nop

    .line 1781
    :try_start_ce
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1782
    new-instance v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v4

    .line 1778
    :catch_d9
    move-exception v4

    .line 1779
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v6, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_e0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ce .. :try_end_e0} :catch_e0

    .line 1784
    .end local v1    # "found":Z
    .end local v2    # "newLine":Z
    .end local v3    # "index":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "lastPosition":I
    :catch_e0
    move-exception v1

    .line 1785
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1786
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private parseBody()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_d

    goto :goto_19

    .line 407
    :cond_d
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    if-eqz v0, :cond_15

    .line 408
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBodyMultipart()V

    goto :goto_18

    .line 410
    :cond_15
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBodyAttributes()V

    .line 412
    :goto_18
    return-void

    .line 402
    :cond_19
    :goto_19
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_21

    .line 403
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 405
    :cond_21
    return-void
.end method

.method private parseBodyAttributes()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 558
    const/4 v0, 0x0

    move-object v1, v0

    .line 560
    .local v1, "sao":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
    :try_start_2
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_9
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_2 .. :try_end_9} :catch_17e

    move-object v1, v2

    .line 564
    nop

    .line 565
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    .line 566
    .local v2, "firstpos":I
    move v3, v2

    .line 567
    .local v3, "currentpos":I
    move v4, v2

    .line 568
    .local v4, "equalpos":I
    move v5, v2

    .line 569
    .local v5, "ampersandpos":I
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v6, v7, :cond_1e

    .line 570
    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 572
    :cond_1e
    const/4 v6, 0x1

    .line 575
    .local v6, "contRead":Z
    :goto_1f
    :try_start_1f
    iget v7, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v8, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    const/4 v9, 0x0

    if-ge v7, v8, :cond_11f

    .line 576
    iget-object v7, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v8, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    .line 577
    .local v7, "read":C
    add-int/lit8 v3, v3, 0x1

    .line 578
    sget-object v8, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    iget-object v10, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-virtual {v10}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->ordinal()I

    move-result v10

    aget v8, v8, v10

    const/16 v10, 0x26

    packed-switch v8, :pswitch_data_184

    .line 645
    invoke-virtual {v1, v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    goto/16 :goto_11d

    .line 602
    :pswitch_49
    if-ne v7, v10, :cond_60

    .line 603
    sget-object v8, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 604
    add-int/lit8 v5, v3, -0x1

    .line 605
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v9, v5, v2

    invoke-interface {v8, v2, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 606
    move v2, v3

    .line 607
    const/4 v6, 0x1

    goto/16 :goto_11b

    .line 608
    :cond_60
    const/16 v8, 0xd

    const/16 v10, 0xa

    if-ne v7, v8, :cond_a9

    .line 609
    iget v8, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v11, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v8, v11, :cond_a1

    .line 610
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v8, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 611
    .end local v7    # "read":C
    .local v0, "read":C
    add-int/lit8 v3, v3, 0x1

    .line 612
    if-ne v0, v10, :cond_95

    .line 613
    sget-object v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 614
    add-int/lit8 v5, v3, -0x2

    .line 615
    invoke-virtual {v1, v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 616
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v8, v5, v2

    invoke-interface {v7, v2, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 618
    move v2, v3

    .line 619
    const/4 v6, 0x0

    .line 620
    goto/16 :goto_11f

    .line 623
    :cond_95
    invoke-virtual {v1, v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 624
    const/4 v6, 0x0

    .line 625
    new-instance v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v8, "Bad end of line"

    invoke-direct {v7, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 628
    .end local v0    # "read":C
    .restart local v7    # "read":C
    :cond_a1
    iget v8, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-lez v8, :cond_11b

    .line 629
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_11b

    .line 632
    :cond_a9
    if-ne v7, v10, :cond_11b

    .line 633
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 634
    add-int/lit8 v5, v3, -0x1

    .line 635
    invoke-virtual {v1, v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 636
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v8, v5, v2

    invoke-interface {v0, v2, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 638
    move v2, v3

    .line 639
    const/4 v6, 0x0

    .line 640
    goto :goto_11f

    .line 580
    :pswitch_c2
    const/16 v8, 0x3d

    if-ne v7, v8, :cond_e8

    .line 581
    sget-object v8, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 582
    add-int/lit8 v4, v3, -0x1

    .line 583
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v9, v4, v2

    iget-object v10, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v8, v2, v9, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v8, v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 586
    .local v8, "key":Ljava/lang/String;
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v10, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v9, v10, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v9

    iput-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 587
    move v2, v3

    .line 588
    .end local v8    # "key":Ljava/lang/String;
    goto :goto_11b

    :cond_e8
    if-ne v7, v10, :cond_11b

    .line 589
    sget-object v8, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 590
    add-int/lit8 v5, v3, -0x1

    .line 591
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v9, v5, v2

    iget-object v10, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v8, v2, v9, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v8, v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 593
    .restart local v8    # "key":Ljava/lang/String;
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v10, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v9, v10, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v9

    iput-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 594
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    const-string v10, ""

    invoke-interface {v9, v10}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    .line 595
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-direct {p0, v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 596
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 597
    move v2, v3

    .line 598
    const/4 v6, 0x1

    .line 599
    .end local v8    # "key":Ljava/lang/String;
    nop

    .line 649
    .end local v7    # "read":C
    :cond_11b
    :goto_11b
    goto/16 :goto_1f

    .line 646
    .restart local v7    # "read":C
    :goto_11d
    const/4 v6, 0x0

    .line 647
    nop

    .line 650
    .end local v7    # "read":C
    :cond_11f
    :goto_11f
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_149

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_149

    .line 652
    move v5, v3

    .line 653
    if-le v5, v2, :cond_136

    .line 654
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v7, v5, v2

    invoke-interface {v0, v2, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_143

    .line 656
    :cond_136
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_143

    .line 657
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 659
    :cond_143
    :goto_143
    move v2, v3

    .line 660
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 661
    return-void

    .line 663
    :cond_149
    if-eqz v6, :cond_169

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_169

    .line 665
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v7, :cond_164

    .line 666
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v8, v3, v2

    invoke-interface {v7, v2, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v0, v7, v9}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 669
    move v0, v3

    .line 671
    move v2, v0

    :cond_164
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V
    :try_end_169
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_1f .. :try_end_169} :catch_177
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_169} :catch_16b

    .line 683
    :cond_169
    nop

    .line 684
    return-void

    .line 679
    :catch_16b
    move-exception v0

    .line 681
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 682
    new-instance v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v7, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 675
    .end local v0    # "e":Ljava/io/IOException;
    :catch_177
    move-exception v0

    .line 677
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 678
    throw v0

    .line 561
    .end local v0    # "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
    .end local v2    # "firstpos":I
    .end local v3    # "currentpos":I
    .end local v4    # "equalpos":I
    .end local v5    # "ampersandpos":I
    .end local v6    # "contRead":Z
    :catch_17e
    move-exception v0

    .line 562
    .local v0, "e1":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException;
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBodyAttributesStandard()V

    .line 563
    return-void

    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_49
    .end packed-switch
.end method

.method private parseBodyAttributesStandard()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 440
    .local v0, "firstpos":I
    move v1, v0

    .line 441
    .local v1, "currentpos":I
    move v2, v0

    .line 442
    .local v2, "equalpos":I
    move v3, v0

    .line 443
    .local v3, "ampersandpos":I
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v4, v5, :cond_13

    .line 444
    sget-object v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 446
    :cond_13
    const/4 v4, 0x1

    .line 448
    .local v4, "contRead":Z
    :goto_14
    :try_start_14
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v5

    if-eqz v5, :cond_fd

    if-eqz v4, :cond_fd

    .line 449
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v5

    int-to-char v5, v5

    .line 450
    .local v5, "read":C
    add-int/lit8 v1, v1, 0x1

    .line 451
    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-virtual {v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x26

    packed-switch v6, :pswitch_data_15c

    .line 511
    const/4 v4, 0x0

    goto/16 :goto_fb

    .line 475
    :pswitch_39
    if-ne v5, v7, :cond_50

    .line 476
    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 477
    add-int/lit8 v3, v1, -0x1

    .line 478
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v7, v3, v0

    invoke-interface {v6, v0, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 479
    move v0, v1

    .line 480
    const/4 v4, 0x1

    goto/16 :goto_fb

    .line 481
    :cond_50
    const/16 v6, 0xd

    const/16 v7, 0xa

    if-ne v5, v6, :cond_8b

    .line 482
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 483
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v6

    int-to-char v5, v6

    .line 484
    add-int/lit8 v1, v1, 0x1

    .line 485
    if-ne v5, v7, :cond_7e

    .line 486
    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 487
    add-int/lit8 v3, v1, -0x2

    .line 488
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v7, v3, v0

    invoke-interface {v6, v0, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 490
    move v0, v1

    .line 491
    const/4 v4, 0x0

    goto/16 :goto_fb

    .line 494
    :cond_7e
    const/4 v4, 0x0

    .line 495
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v7, "Bad end of line"

    invoke-direct {v6, v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 498
    :cond_87
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_fb

    .line 500
    :cond_8b
    if-ne v5, v7, :cond_fb

    .line 501
    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 502
    add-int/lit8 v3, v1, -0x1

    .line 503
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v7, v3, v0

    invoke-interface {v6, v0, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 505
    move v0, v1

    .line 506
    const/4 v4, 0x0

    goto :goto_fb

    .line 453
    :pswitch_a1
    const/16 v6, 0x3d

    if-ne v5, v6, :cond_c7

    .line 454
    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 455
    add-int/lit8 v2, v1, -0x1

    .line 456
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v7, v2, v0

    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v6, v0, v7, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v6, v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v7, v8, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v7

    iput-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 460
    move v0, v1

    .line 461
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_fb

    :cond_c7
    if-ne v5, v7, :cond_fb

    .line 462
    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 463
    add-int/lit8 v3, v1, -0x1

    .line 464
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v7, v3, v0

    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v6, v0, v7, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v6, v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 466
    .restart local v6    # "key":Ljava/lang/String;
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v7, v8, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v7

    iput-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 467
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    const-string v8, ""

    invoke-interface {v7, v8}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    .line 468
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-direct {p0, v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 469
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 470
    move v0, v1

    .line 471
    const/4 v4, 0x1

    .line 472
    .end local v6    # "key":Ljava/lang/String;
    nop

    .line 513
    .end local v5    # "read":C
    :cond_fb
    :goto_fb
    goto/16 :goto_14

    .line 514
    :cond_fd
    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-eqz v5, :cond_127

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v5, :cond_127

    .line 516
    move v3, v1

    .line 517
    if-le v3, v0, :cond_114

    .line 518
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v6, v3, v0

    invoke-interface {v5, v0, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_121

    .line 520
    :cond_114
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->isCompleted()Z

    move-result v5

    if-nez v5, :cond_121

    .line 521
    sget-object v5, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 523
    :cond_121
    :goto_121
    move v0, v1

    .line 524
    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 525
    return-void

    .line 527
    :cond_127
    if-eqz v4, :cond_147

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v5, :cond_147

    .line 529
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v5, v6, :cond_142

    .line 530
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v7, v1, v0

    invoke-interface {v6, v0, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 533
    move v0, v1

    .line 535
    :cond_142
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V
    :try_end_147
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_14 .. :try_end_147} :catch_155
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_147} :catch_149

    .line 547
    :cond_147
    nop

    .line 548
    return-void

    .line 543
    :catch_149
    move-exception v5

    .line 545
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 546
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v6, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 539
    .end local v5    # "e":Ljava/io/IOException;
    :catch_155
    move-exception v5

    .line 541
    .local v5, "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 542
    throw v5

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_39
    .end packed-switch
.end method

.method private parseBodyMultipart()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2d

    .line 725
    :cond_d
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    .line 726
    .local v0, "data":Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    :goto_13
    if-eqz v0, :cond_2c

    .line 727
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 728
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-eq v1, v2, :cond_2c

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v1, v2, :cond_25

    .line 730
    goto :goto_2c

    .line 732
    :cond_25
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    goto :goto_13

    .line 734
    :cond_2c
    :goto_2c
    return-void

    .line 723
    .end local v0    # "data":Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    :cond_2d
    :goto_2d
    return-void
.end method

.method private readDelimiter(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    .line 1384
    const/4 v0, 0x0

    .line 1386
    .local v0, "sao":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
    :try_start_1
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_8
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_1 .. :try_end_8} :catch_118

    move-object v0, v1

    .line 1389
    nop

    .line 1390
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .line 1391
    .local v1, "readerIndex":I
    const/4 v2, 0x0

    .line 1392
    .local v2, "delimiterPos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1394
    .local v3, "len":I
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1396
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_1c
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v5, v6, :cond_46

    if-ge v2, v3, :cond_46

    .line 1397
    iget-object v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v5, v5, v6

    .line 1398
    .local v5, "nextByte":B
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_3b

    .line 1399
    add-int/lit8 v2, v2, 0x1

    .line 1400
    int-to-char v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1406
    .end local v5    # "nextByte":B
    goto :goto_1c

    .line 1403
    .restart local v5    # "nextByte":B
    :cond_3b
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1404
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v6

    .line 1408
    .end local v5    # "nextByte":B
    :cond_46
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v5, v6, :cond_100

    .line 1409
    iget-object v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v5, v5, v6

    .line 1410
    .restart local v5    # "nextByte":B
    const/16 v6, 0xd

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-ne v5, v6, :cond_83

    .line 1412
    iget v6, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v6, v9, :cond_78

    .line 1413
    iget-object v6, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v6, v6, v9

    move v5, v6

    .line 1414
    if-ne v5, v7, :cond_100

    .line 1415
    invoke-virtual {v0, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1421
    :cond_78
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1422
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v6

    .line 1424
    :cond_83
    if-ne v5, v7, :cond_8d

    .line 1426
    invoke-virtual {v0, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1427
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1428
    :cond_8d
    const/16 v9, 0x2d

    if-ne v5, v9, :cond_100

    .line 1429
    int-to-char v10, v5

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1431
    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v11, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v10, v11, :cond_100

    .line 1432
    iget-object v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v11, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v10, v10, v11

    move v5, v10

    .line 1433
    if-ne v5, v9, :cond_100

    .line 1434
    int-to-char v9, v5

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1436
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v9, v10, :cond_f8

    .line 1437
    iget-object v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v9, v9, v10

    move v5, v9

    .line 1438
    if-ne v5, v6, :cond_e5

    .line 1439
    iget v6, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v6, v9, :cond_da

    .line 1440
    iget-object v6, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v6, v6, v9

    move v5, v6

    .line 1441
    if-ne v5, v7, :cond_f8

    .line 1442
    invoke-virtual {v0, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1443
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1448
    :cond_da
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1449
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v6

    .line 1451
    :cond_e5
    if-ne v5, v7, :cond_ef

    .line 1452
    invoke-virtual {v0, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1453
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1457
    :cond_ef
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1458
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1464
    :cond_f8
    invoke-virtual {v0, v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1465
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_ff
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_ff} :catch_10c

    return-object v6

    .line 1475
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "nextByte":B
    :cond_100
    nop

    .line 1476
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1477
    new-instance v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v4

    .line 1472
    :catch_10c
    move-exception v4

    .line 1473
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1474
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v5, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1387
    .end local v1    # "readerIndex":I
    .end local v2    # "delimiterPos":I
    .end local v3    # "len":I
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_118
    move-exception v1

    .line 1388
    .local v1, "e1":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readDelimiterStandard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readDelimiterStandard(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 1298
    .local v0, "readerIndex":I
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1299
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1300
    .local v2, "delimiterPos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1301
    .local v3, "len":I
    :goto_12
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-eqz v4, :cond_3a

    if-ge v2, v3, :cond_3a

    .line 1302
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v4

    .line 1303
    .local v4, "nextByte":B
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2f

    .line 1304
    add-int/lit8 v2, v2, 0x1

    .line 1305
    int-to-char v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1311
    .end local v4    # "nextByte":B
    goto :goto_12

    .line 1308
    .restart local v4    # "nextByte":B
    :cond_2f
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1309
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v5

    .line 1313
    .end local v4    # "nextByte":B
    :cond_3a
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 1314
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v4

    .line 1316
    .restart local v4    # "nextByte":B
    const/16 v5, 0xd

    const/16 v6, 0xa

    if-ne v4, v5, :cond_67

    .line 1317
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v5

    move v4, v5

    .line 1318
    if-ne v4, v6, :cond_5c

    .line 1319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1323
    :cond_5c
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1324
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v5

    .line 1326
    :cond_67
    if-ne v4, v6, :cond_6e

    .line 1327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1328
    :cond_6e
    const/16 v7, 0x2d

    if-ne v4, v7, :cond_cb

    .line 1329
    int-to-char v8, v4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1331
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v8

    move v4, v8

    .line 1332
    if-ne v4, v7, :cond_cb

    .line 1333
    int-to-char v7, v4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1335
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 1336
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v7

    move v4, v7

    .line 1337
    if-ne v4, v5, :cond_ad

    .line 1338
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v5

    move v4, v5

    .line 1339
    if-ne v4, v6, :cond_a2

    .line 1340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1344
    :cond_a2
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1345
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v5

    .line 1347
    :cond_ad
    if-ne v4, v6, :cond_b4

    .line 1348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1352
    :cond_b4
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1359
    :cond_c6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_ca} :catch_d7

    return-object v5

    .line 1368
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "delimiterPos":I
    .end local v3    # "len":I
    .end local v4    # "nextByte":B
    :cond_cb
    nop

    .line 1369
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1370
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v1

    .line 1365
    :catch_d7
    move-exception v1

    .line 1366
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1367
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readFileUploadByteMultipart(Ljava/lang/String;)V
    .registers 15
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 1584
    const/4 v0, 0x0

    .line 1586
    .local v0, "sao":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
    :try_start_1
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_8
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_1 .. :try_end_8} :catch_eb

    move-object v0, v1

    .line 1590
    nop

    .line 1591
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .line 1593
    .local v1, "readerIndex":I
    const/4 v2, 0x1

    .line 1594
    .local v2, "newLine":Z
    const/4 v3, 0x0

    .line 1595
    .local v3, "index":I
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    .line 1596
    .local v4, "lastPosition":I
    const/4 v5, -0x1

    .line 1597
    .local v5, "setReadPosition":I
    const/4 v6, 0x0

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    .line 1599
    .local v2, "found":Z
    .local v3, "newLine":Z
    .local v4, "index":I
    .local v5, "lastPosition":I
    .local v7, "setReadPosition":I
    :cond_1f
    :goto_1f
    iget v8, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    const/4 v10, 0x1

    if-ge v8, v9, :cond_b0

    .line 1600
    iget-object v8, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v8, v8, v9

    .line 1601
    .local v8, "nextByte":B
    const/16 v9, 0xd

    const/16 v11, 0xa

    if-eqz v3, :cond_7d

    .line 1603
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    if-ne v8, v12, :cond_4a

    .line 1604
    add-int/lit8 v4, v4, 0x1

    .line 1605
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v4, :cond_1f

    .line 1606
    const/4 v2, 0x1

    .line 1607
    invoke-virtual {v0, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1608
    goto/16 :goto_b0

    .line 1612
    :cond_4a
    const/4 v3, 0x0

    .line 1613
    const/4 v4, 0x0

    .line 1615
    if-ne v8, v9, :cond_6e

    .line 1616
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v9, v10, :cond_69

    .line 1617
    iget-object v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v8, v9, v10

    .line 1618
    if-ne v8, v11, :cond_ae

    .line 1619
    const/4 v3, 0x1

    .line 1620
    const/4 v4, 0x0

    .line 1621
    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1622
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v9, v9, -0x2

    goto :goto_a8

    .line 1626
    :cond_69
    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1627
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    goto :goto_ae

    .line 1629
    :cond_6e
    if-ne v8, v11, :cond_78

    .line 1630
    const/4 v3, 0x1

    .line 1631
    const/4 v4, 0x0

    .line 1632
    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1633
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    sub-int/2addr v9, v10

    goto :goto_a8

    .line 1636
    :cond_78
    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1637
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    goto :goto_ae

    .line 1642
    :cond_7d
    if-ne v8, v9, :cond_9f

    .line 1643
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v9, v10, :cond_9a

    .line 1644
    iget-object v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v8, v9, v10

    .line 1645
    if-ne v8, v11, :cond_ae

    .line 1646
    const/4 v3, 0x1

    .line 1647
    const/4 v4, 0x0

    .line 1648
    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1649
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v9, v9, -0x2

    goto :goto_a8

    .line 1653
    :cond_9a
    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1654
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    goto :goto_ae

    .line 1656
    :cond_9f
    if-ne v8, v11, :cond_aa

    .line 1657
    const/4 v3, 0x1

    .line 1658
    const/4 v4, 0x0

    .line 1659
    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1660
    iget v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    sub-int/2addr v9, v10

    .line 1667
    .end local v8    # "nextByte":B
    :goto_a8
    move v5, v9

    goto :goto_ae

    .line 1663
    .restart local v8    # "nextByte":B
    :cond_aa
    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1664
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1667
    .end local v8    # "nextByte":B
    :cond_ae
    :goto_ae
    goto/16 :goto_1f

    .line 1668
    :cond_b0
    :goto_b0
    if-lez v7, :cond_b7

    .line 1669
    iput v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 1670
    invoke-virtual {v0, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1672
    :cond_b7
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v9, v5, v1

    invoke-interface {v8, v1, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    .line 1673
    .local v8, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-eqz v2, :cond_d4

    .line 1676
    :try_start_c1
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v6, v8, v10}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 1678
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_cb} :catch_cd

    .line 1681
    nop

    .line 1693
    return-void

    .line 1679
    :catch_cd
    move-exception v6

    .line 1680
    .local v6, "e":Ljava/io/IOException;
    new-instance v9, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v9, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 1685
    .end local v6    # "e":Ljava/io/IOException;
    :cond_d4
    :try_start_d4
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v9, v8, v6}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 1687
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1688
    new-instance v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v6
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_e4} :catch_e4

    .line 1689
    :catch_e4
    move-exception v6

    .line 1690
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v9, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v9, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 1587
    .end local v1    # "readerIndex":I
    .end local v2    # "found":Z
    .end local v3    # "newLine":Z
    .end local v4    # "index":I
    .end local v5    # "lastPosition":I
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "setReadPosition":I
    .end local v8    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catch_eb
    move-exception v1

    .line 1588
    .local v1, "e1":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readFileUploadByteMultipartStandard(Ljava/lang/String;)V

    .line 1589
    return-void
.end method

.method private readFileUploadByteMultipartStandard(Ljava/lang/String;)V
    .registers 13
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 1490
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 1492
    .local v0, "readerIndex":I
    const/4 v1, 0x1

    .line 1493
    .local v1, "newLine":Z
    const/4 v2, 0x0

    .line 1494
    .local v2, "index":I
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    .line 1495
    .local v3, "lastPosition":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v2

    move v2, v1

    const/4 v1, 0x0

    .line 1496
    .local v1, "found":Z
    .local v2, "newLine":Z
    .local v3, "index":I
    .local v5, "lastPosition":I
    :cond_13
    :goto_13
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9d

    .line 1497
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v6

    .line 1498
    .local v6, "nextByte":B
    const/16 v8, 0xd

    const/16 v9, 0xa

    if-eqz v2, :cond_6a

    .line 1500
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    if-ne v6, v10, :cond_38

    .line 1501
    add-int/lit8 v3, v3, 0x1

    .line 1502
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v3, :cond_13

    .line 1503
    const/4 v1, 0x1

    .line 1504
    goto :goto_9d

    .line 1508
    :cond_38
    const/4 v2, 0x0

    .line 1509
    const/4 v3, 0x0

    .line 1511
    if-ne v6, v8, :cond_57

    .line 1512
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 1513
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v6

    .line 1514
    if-ne v6, v9, :cond_9b

    .line 1515
    const/4 v2, 0x1

    .line 1516
    const/4 v3, 0x0

    .line 1517
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    goto :goto_86

    .line 1520
    :cond_57
    if-ne v6, v9, :cond_63

    .line 1521
    const/4 v2, 0x1

    .line 1522
    const/4 v3, 0x0

    .line 1523
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v8

    sub-int/2addr v8, v7

    goto :goto_93

    .line 1526
    :cond_63
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    goto :goto_9b

    .line 1531
    :cond_6a
    if-ne v6, v8, :cond_88

    .line 1532
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 1533
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v6

    .line 1534
    if-ne v6, v9, :cond_9b

    .line 1535
    const/4 v2, 0x1

    .line 1536
    const/4 v3, 0x0

    .line 1537
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    .line 1549
    .end local v6    # "nextByte":B
    :goto_86
    move v5, v7

    goto :goto_9b

    .line 1540
    .restart local v6    # "nextByte":B
    :cond_88
    if-ne v6, v9, :cond_95

    .line 1541
    const/4 v2, 0x1

    .line 1542
    const/4 v3, 0x0

    .line 1543
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v8

    sub-int/2addr v8, v7

    .line 1549
    .end local v6    # "nextByte":B
    :goto_93
    move v5, v8

    goto :goto_9b

    .line 1546
    .restart local v6    # "nextByte":B
    :cond_95
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    .line 1549
    .end local v6    # "nextByte":B
    :cond_9b
    :goto_9b
    goto/16 :goto_13

    .line 1550
    :cond_9d
    :goto_9d
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v8, v5, v0

    invoke-interface {v6, v0, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 1552
    .local v6, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-eqz v1, :cond_ba

    .line 1555
    :try_start_a7
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v4, v6, v7}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 1557
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b1} :catch_b3

    .line 1560
    nop

    .line 1572
    return-void

    .line 1558
    :catch_b3
    move-exception v4

    .line 1559
    .local v4, "e":Ljava/io/IOException;
    new-instance v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v7, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1564
    .end local v4    # "e":Ljava/io/IOException;
    :cond_ba
    :try_start_ba
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v7, v6, v4}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 1566
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1567
    new-instance v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v4
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_ca} :catch_ca

    .line 1568
    :catch_ca
    move-exception v4

    .line 1569
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v7, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v7, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private readLine()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    .line 1248
    const/4 v0, 0x0

    .line 1250
    .local v0, "sao":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
    :try_start_1
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_8
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_1 .. :try_end_8} :catch_75

    move-object v0, v1

    .line 1253
    nop

    .line 1254
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .line 1256
    .local v1, "readerIndex":I
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1257
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_17
    iget v3, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v4, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v3, v4, :cond_5d

    .line 1258
    iget-object v3, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v4, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v3, v3, v4

    .line 1259
    .local v3, "nextByte":B
    const/16 v4, 0xd

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-ne v3, v4, :cond_4e

    .line 1260
    iget v4, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v4, v7, :cond_49

    .line 1261
    iget-object v4, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v7, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v4, v4, v7

    move v3, v4

    .line 1262
    if-ne v3, v6, :cond_5c

    .line 1263
    invoke-virtual {v0, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1267
    :cond_49
    int-to-char v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 1269
    :cond_4e
    if-ne v3, v6, :cond_58

    .line 1270
    invoke-virtual {v0, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 1271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1273
    :cond_58
    int-to-char v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_5c} :catch_69

    .line 1275
    .end local v3    # "nextByte":B
    :cond_5c
    :goto_5c
    goto :goto_17

    .line 1279
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_5d
    nop

    .line 1280
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1281
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v2

    .line 1276
    :catch_69
    move-exception v2

    .line 1277
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1278
    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v3, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1251
    .end local v1    # "readerIndex":I
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_75
    move-exception v1

    .line 1252
    .local v1, "e1":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException;
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readLineStandard()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readLineStandard()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 1220
    .local v0, "readerIndex":I
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1221
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_d
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1222
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    .line 1223
    .local v2, "nextByte":B
    const/16 v3, 0xd

    const/16 v4, 0xa

    if-ne v2, v3, :cond_2f

    .line 1224
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    move v2, v3

    .line 1225
    if-ne v2, v4, :cond_3a

    .line 1226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1228
    :cond_2f
    if-ne v2, v4, :cond_36

    .line 1229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1231
    :cond_36
    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_3a} :catch_47

    .line 1233
    .end local v2    # "nextByte":B
    :cond_3a
    goto :goto_d

    .line 1237
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3b
    nop

    .line 1238
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1239
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v1

    .line 1234
    :catch_47
    move-exception v1

    .line 1235
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1236
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 688
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 693
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 694
    return-void
.end method

.method static skipControlCharactersStandard(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 871
    :goto_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v0

    int-to-char v0, v0

    .line 872
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 873
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 874
    nop

    .line 877
    .end local v0    # "c":C
    return-void

    .line 876
    :cond_1c
    goto :goto_0
.end method

.method private skipOneLine()Z
    .registers 6

    .line 1942
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1943
    return v1

    .line 1945
    :cond_a
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    .line 1946
    .local v0, "nextByte":B
    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v0, v2, :cond_43

    .line 1947
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1948
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1949
    return v1

    .line 1951
    :cond_2c
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    .line 1952
    if-ne v0, v3, :cond_35

    .line 1953
    return v4

    .line 1955
    :cond_35
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1956
    return v1

    .line 1957
    :cond_43
    if-ne v0, v3, :cond_46

    .line 1958
    return v4

    .line 1960
    :cond_46
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 1961
    return v1
.end method

.method private static splitHeaderContentType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "sb"    # Ljava/lang/String;

    .line 1970
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1975
    .local v0, "size":I
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 1976
    .local v2, "aStart":I
    invoke-static {p0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 1977
    .local v3, "aEnd":I
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v3, v0, :cond_1a

    .line 1978
    new-array v5, v5, [Ljava/lang/String;

    aput-object p0, v5, v1

    const-string v1, ""

    aput-object v1, v5, v4

    return-object v5

    .line 1980
    :cond_1a
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_24

    .line 1981
    add-int/lit8 v3, v3, -0x1

    .line 1983
    :cond_24
    invoke-static {p0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v6

    .line 1984
    .local v6, "bStart":I
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findEndOfString(Ljava/lang/String;)I

    move-result v7

    .line 1985
    .local v7, "bEnd":I
    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    return-object v5
.end method

.method private static splitMultipartHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .param p0, "sb"    # Ljava/lang/String;

    .line 1996
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2002
    .local v0, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 2003
    .local v2, "nameStart":I
    move v3, v2

    .local v3, "nameEnd":I
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3a

    if-ge v3, v4, :cond_24

    .line 2004
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2005
    .local v4, "ch":C
    if-eq v4, v5, :cond_24

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 2006
    goto :goto_24

    .line 2003
    .end local v4    # "ch":C
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2009
    :cond_24
    :goto_24
    move v4, v3

    .local v4, "colonEnd":I
    :goto_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_37

    .line 2010
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_34

    .line 2011
    add-int/lit8 v4, v4, 0x1

    .line 2012
    goto :goto_37

    .line 2009
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 2015
    :cond_37
    :goto_37
    invoke-static {p0, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v5

    .line 2016
    .local v5, "valueStart":I
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findEndOfString(Ljava/lang/String;)I

    move-result v6

    .line 2017
    .local v6, "valueEnd":I
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2019
    .local v7, "svalue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2020
    .local v8, "values":[Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_5a

    .line 2021
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_60

    .line 2023
    :cond_5a
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2025
    :goto_60
    move-object v9, v8

    .local v9, "arr$":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x0

    .local v10, "len$":I
    .local v11, "i$":I
    :goto_63
    if-ge v11, v10, :cond_71

    aget-object v12, v9, v11

    .line 2026
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    .end local v12    # "value":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_63

    .line 2028
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v11    # "i$":I
    :cond_71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    .line 2029
    .local v9, "array":[Ljava/lang/String;
    nop

    .local v1, "i":I
    :goto_78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_89

    .line 2030
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v9, v1

    .line 2029
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 2032
    .end local v1    # "i":I
    :cond_89
    return-object v9
.end method


# virtual methods
.method public cleanFiles()V
    .registers 3

    .line 1190
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->cleanRequestHttpDatas(Lorg/jboss/netty/handler/codec/http/HttpRequest;)V

    .line 1191
    return-void
.end method

.method public getBodyHttpData(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    .line 329
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_18

    .line 332
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 333
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;>;"
    if-eqz v0, :cond_16

    .line 334
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    return-object v1

    .line 336
    :cond_16
    const/4 v1, 0x0

    return-object v1

    .line 330
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;>;"
    :cond_18
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method public getBodyHttpDatas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    .line 293
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_7

    .line 296
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    return-object v0

    .line 294
    :cond_7
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method public getBodyHttpDatas(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    .line 311
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_d

    .line 314
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 312
    :cond_d
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_17

    .line 372
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    goto :goto_17

    .line 373
    :cond_11
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;-><init>()V

    throw v0

    .line 376
    :cond_17
    :goto_17
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public isMultipart()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    return v0
.end method

.method public next()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 389
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpDataRank:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpDataRank:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    return-object v0

    .line 391
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public offer(Lorg/jboss/netty/handler/codec/http/HttpChunk;)V
    .registers 7
    .param p1, "chunk"    # Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    .line 346
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 347
    .local v0, "chunked":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 348
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_1c

    .line 352
    :cond_c
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v4, v1, v3

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 355
    :goto_1c
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 356
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    .line 358
    :cond_24
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBody()V

    .line 359
    return-void
.end method

.method public removeHttpDataFromClean(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .registers 4
    .param p1, "data"    # Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 1197
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->removeHttpDataFromClean(Lorg/jboss/netty/handler/codec/http/HttpRequest;Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 1198
    return-void
.end method

.method skipControlCharacters()V
    .registers 5

    .line 852
    const/4 v0, 0x0

    .line 854
    .local v0, "sao":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
    :try_start_1
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_8
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_1 .. :try_end_8} :catch_34

    move-object v0, v1

    .line 858
    nop

    .line 860
    :goto_a
    iget v1, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v2, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v1, v2, :cond_2f

    .line 861
    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v2, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 862
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 863
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 864
    return-void

    .line 866
    .end local v1    # "c":C
    :cond_2e
    goto :goto_a

    .line 867
    :cond_2f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 868
    return-void

    .line 855
    :catch_34
    move-exception v1

    .line 856
    .local v1, "e":Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipControlCharactersStandard(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 857
    return-void
.end method
