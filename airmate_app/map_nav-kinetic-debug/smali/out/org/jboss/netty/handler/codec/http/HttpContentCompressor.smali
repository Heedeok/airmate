.class public Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;
.super Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;
.source "HttpContentCompressor.java"


# instance fields
.field private final compressionLevel:I

.field private final memLevel:I

.field private final windowBits:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;-><init>(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "compressionLevel"    # I

    .line 56
    const/16 v0, 0xf

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;-><init>(III)V

    .line 57
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I

    .line 78
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;-><init>()V

    .line 79
    if-ltz p1, :cond_53

    const/16 v0, 0x9

    if-gt p1, v0, :cond_53

    .line 83
    if-lt p2, v0, :cond_37

    const/16 v1, 0xf

    if-gt p2, v1, :cond_37

    .line 87
    const/4 v1, 0x1

    if-lt p3, v1, :cond_1b

    if-gt p3, v0, :cond_1b

    .line 91
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    .line 92
    iput p2, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    .line 93
    iput p3, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    .line 94
    return-void

    .line 88
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static determineWrapper(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .registers 11
    .param p0, "acceptEncoding"    # Ljava/lang/String;

    .line 138
    const/high16 v0, -0x40800000    # -1.0f

    .line 139
    .local v0, "starQ":F
    const/high16 v1, -0x40800000    # -1.0f

    .line 140
    .local v1, "gzipQ":F
    const/high16 v2, -0x40800000    # -1.0f

    .line 141
    .local v2, "deflateQ":F
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_e
    if-ge v5, v4, :cond_57

    aget-object v6, v3, v5

    .line 142
    .local v6, "encoding":Ljava/lang/String;
    const/high16 v7, 0x3f800000    # 1.0f

    .line 143
    .local v7, "q":F
    const/16 v8, 0x3d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 144
    .local v8, "equalsPos":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2f

    .line 146
    add-int/lit8 v9, v8, 0x1

    :try_start_1f
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2b} :catch_2d

    move v7, v9

    .line 150
    goto :goto_2f

    .line 147
    :catch_2d
    move-exception v9

    .line 149
    .local v9, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 152
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_2f
    :goto_2f
    const-string v9, "*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_39

    .line 153
    move v0, v7

    goto :goto_54

    .line 154
    :cond_39
    const-string v9, "gzip"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_47

    cmpl-float v9, v7, v1

    if-lez v9, :cond_47

    .line 155
    move v1, v7

    goto :goto_54

    .line 156
    :cond_47
    const-string v9, "deflate"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_54

    cmpl-float v9, v7, v2

    if-lez v9, :cond_54

    .line 157
    move v2, v7

    .line 141
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v7    # "q":F
    .end local v8    # "equalsPos":I
    :cond_54
    :goto_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 160
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_57
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-gtz v4, :cond_77

    cmpl-float v4, v2, v3

    if-lez v4, :cond_61

    goto :goto_77

    .line 167
    :cond_61
    cmpl-float v3, v0, v3

    if-lez v3, :cond_75

    .line 168
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v1, v3

    if-nez v4, :cond_6e

    .line 169
    sget-object v3, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    return-object v3

    .line 171
    :cond_6e
    cmpl-float v3, v2, v3

    if-nez v3, :cond_75

    .line 172
    sget-object v3, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    return-object v3

    .line 175
    :cond_75
    const/4 v3, 0x0

    return-object v3

    .line 161
    :cond_77
    :goto_77
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_7e

    .line 162
    sget-object v3, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    return-object v3

    .line 164
    :cond_7e
    sget-object v3, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    return-object v3
.end method


# virtual methods
.method protected getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "acceptEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->determineWrapper(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    move-result-object v0

    .line 123
    .local v0, "wrapper":Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    if-nez v0, :cond_8

    .line 124
    const/4 v1, 0x0

    return-object v1

    .line 127
    :cond_8
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor$1;->$SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 133
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1

    .line 131
    :pswitch_19
    const-string v1, "deflate"

    return-object v1

    .line 129
    :pswitch_1c
    const-string v1, "gzip"

    return-object v1

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method

.method protected newContentEncoder(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;
    .registers 12
    .param p1, "msg"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p2, "acceptEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    const-string v0, "Content-Encoding"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "contentEncoding":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    const-string v2, "identity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 103
    return-object v1

    .line 106
    :cond_12
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->determineWrapper(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    move-result-object v2

    .line 107
    .local v2, "wrapper":Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    if-nez v2, :cond_19

    .line 108
    return-object v1

    .line 111
    :cond_19
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v1

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v1, v3, :cond_33

    .line 112
    new-instance v1, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    new-array v3, v5, [Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    new-instance v5, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;

    iget v6, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    invoke-direct {v5, v2, v6}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    aput-object v5, v3, v4

    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelDownstreamHandler;)V

    return-object v1

    .line 115
    :cond_33
    new-instance v1, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    new-array v3, v5, [Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    new-instance v5, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;

    iget v6, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    iget v7, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    iget v8, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    invoke-direct {v5, v2, v6, v7, v8}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;III)V

    aput-object v5, v3, v4

    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelDownstreamHandler;)V

    return-object v1
.end method
