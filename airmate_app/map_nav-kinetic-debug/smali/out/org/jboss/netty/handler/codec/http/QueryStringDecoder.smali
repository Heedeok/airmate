.class public Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;
.super Ljava/lang/Object;
.source "QueryStringDecoder.java"


# static fields
.field private static final DEFAULT_MAX_PARAMS:I = 0x400


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final hasPath:Z

.field private final maxParams:I

.field private nParams:I

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "hasPath"    # Z

    .line 101
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "hasPath"    # Z
    .param p4, "maxParams"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-eqz p1, :cond_3e

    .line 112
    if-eqz p2, :cond_36

    .line 115
    if-lez p4, :cond_1a

    .line 121
    const/16 v0, 0x3b

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 123
    iput p4, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    .line 124
    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    .line 125
    return-void

    .line 116
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: a positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "hasPath"    # Z

    .line 85
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .line 140
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 148
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;I)V
    .registers 8
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "maxParams"    # I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    if-eqz p1, :cond_63

    .line 159
    if-eqz p2, :cond_5b

    .line 162
    if-lez p3, :cond_3f

    .line 167
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "rawPath":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    goto :goto_18

    .line 171
    :cond_13
    const-string v0, ""

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    .line 175
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "newUri":Ljava/lang/String;
    const/16 v2, 0x3b

    const/16 v3, 0x26

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 180
    iput p3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    .line 182
    return-void

    .line 163
    .end local v0    # "rawPath":Ljava/lang/String;
    .end local v1    # "newUri":Ljava/lang/String;
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: a positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_5b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 282
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->nParams:I

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    if-lt v0, v1, :cond_8

    .line 283
    const/4 v0, 0x0

    return v0

    .line 286
    :cond_8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 287
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 288
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 289
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_1a
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget v2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->nParams:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->nParams:I

    .line 293
    return v1
.end method

.method public static decodeComponent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 308
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 15
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 336
    if-nez p0, :cond_5

    .line 337
    const-string v0, ""

    return-object v0

    .line 339
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 340
    .local v0, "size":I
    const/4 v1, 0x0

    .line 341
    .local v1, "modified":Z
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v3, "modified":Z
    :goto_d
    const/16 v4, 0x2b

    const/16 v5, 0x25

    if-ge v1, v0, :cond_22

    .line 342
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 343
    .local v6, "c":C
    if-eq v6, v5, :cond_1c

    if-eq v6, v4, :cond_1e

    .end local v6    # "c":C
    goto :goto_1f

    .line 345
    .restart local v6    # "c":C
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 348
    :cond_1e
    const/4 v3, 0x1

    .line 341
    .end local v6    # "c":C
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 352
    .end local v1    # "i":I
    :cond_22
    if-nez v3, :cond_25

    .line 353
    return-object p0

    .line 355
    :cond_25
    new-array v1, v0, [B

    .line 356
    .local v1, "buf":[B
    const/4 v6, 0x0

    .line 357
    .local v6, "pos":I
    move v7, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    .local v6, "i":I
    .local v7, "pos":I
    .local v8, "c2":C
    :goto_2b
    if-ge v6, v0, :cond_dc

    .line 358
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 359
    .local v9, "c":C
    if-eq v9, v5, :cond_40

    if-eq v9, v4, :cond_39

    .line 387
    move v12, v9

    move v9, v8

    move v8, v12

    goto :goto_6e

    .line 361
    :cond_39
    add-int/lit8 v10, v7, 0x1

    .local v10, "pos":I
    const/16 v11, 0x20

    aput-byte v11, v1, v7

    .line 362
    .end local v7    # "pos":I
    goto :goto_74

    .line 364
    .end local v10    # "pos":I
    .restart local v7    # "pos":I
    :cond_40
    add-int/lit8 v10, v0, -0x1

    if-eq v6, v10, :cond_c5

    .line 368
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 369
    if-ne v9, v5, :cond_51

    .line 370
    add-int/lit8 v10, v7, 0x1

    .restart local v10    # "pos":I
    aput-byte v5, v1, v7

    .line 371
    .end local v7    # "pos":I
    goto :goto_74

    .line 372
    .end local v8    # "c2":C
    .end local v10    # "pos":I
    .restart local v7    # "pos":I
    :cond_51
    add-int/lit8 v8, v0, -0x1

    if-eq v6, v8, :cond_ae

    .line 376
    invoke-static {v9}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeHexNibble(C)C

    move-result v8

    .line 377
    .end local v9    # "c":C
    .local v8, "c":C
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeHexNibble(C)C

    move-result v9

    .line 378
    .local v9, "c2":C
    const v10, 0xffff

    if-eq v8, v10, :cond_78

    if-eq v9, v10, :cond_78

    .line 384
    mul-int/lit8 v10, v8, 0x10

    add-int/2addr v10, v9

    int-to-char v8, v10

    .line 387
    :goto_6e
    add-int/lit8 v10, v7, 0x1

    .restart local v10    # "pos":I
    int-to-byte v11, v8

    aput-byte v11, v1, v7

    .line 357
    move v8, v9

    .end local v9    # "c2":C
    .end local v10    # "pos":I
    .local v8, "c2":C
    :goto_74
    move v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 379
    .local v8, "c":C
    .restart local v9    # "c2":C
    :cond_78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid escape sequence `%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "\' at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, -0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    .end local v8    # "c":C
    .local v9, "c":C
    :cond_ae
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "partial escape sequence at end of string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
    :cond_c5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unterminated escape sequence at end of string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    .end local v6    # "i":I
    .end local v9    # "c":C
    :cond_dc
    :try_start_dc
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v2, v7, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_e5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_dc .. :try_end_e5} :catch_e6

    return-object v4

    .line 393
    :catch_e6
    move-exception v2

    .line 394
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static decodeHexNibble(C)C
    .registers 2
    .param p0, "c"    # C

    .line 406
    const/16 v0, 0x30

    if-gt v0, p0, :cond_c

    const/16 v0, 0x39

    if-gt p0, v0, :cond_c

    .line 407
    add-int/lit8 v0, p0, -0x30

    int-to-char v0, v0

    return v0

    .line 408
    :cond_c
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1a

    .line 409
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    return v0

    .line 410
    :cond_1a
    const/16 v0, 0x41

    if-gt v0, p0, :cond_28

    const/16 v0, 0x46

    if-gt p0, v0, :cond_28

    .line 411
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    return v0

    .line 413
    :cond_28
    const v0, 0xffff

    return v0
.end method

.method private decodeParams(Ljava/lang/String;)V
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    .line 234
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    iput v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->nParams:I

    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 238
    .local v3, "pos":I
    const/4 v4, 0x0

    .line 239
    .local v4, "c":C
    nop

    .local v1, "i":I
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_61

    .line 240
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 241
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_2d

    if-nez v2, :cond_2d

    .line 242
    if-eq v3, v1, :cond_2a

    .line 243
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 245
    :cond_2a
    add-int/lit8 v3, v1, 0x1

    goto :goto_5e

    .line 246
    :cond_2d
    const/16 v5, 0x26

    if-ne v4, v5, :cond_5e

    .line 247
    if-nez v2, :cond_48

    if-eq v3, v1, :cond_48

    .line 251
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {p0, v0, v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 252
    return-void

    .line 254
    :cond_48
    if-eqz v2, :cond_5c

    .line 255
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v2, v5}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 256
    return-void

    .line 258
    :cond_5b
    const/4 v2, 0x0

    .line 260
    :cond_5c
    add-int/lit8 v3, v1, 0x1

    .line 239
    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 264
    :cond_61
    if-eq v3, v1, :cond_89

    .line 265
    if-nez v2, :cond_78

    .line 266
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {p0, v0, v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_94

    .line 267
    return-void

    .line 270
    :cond_78
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v2, v5}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_94

    .line 271
    return-void

    .line 274
    :cond_89
    if-eqz v2, :cond_94

    .line 275
    const-string v5, ""

    invoke-direct {p0, v0, v2, v5}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_94

    .line 276
    return-void

    .line 279
    :cond_94
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    if-nez v0, :cond_3b

    .line 216
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    if-eqz v0, :cond_29

    .line 217
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 218
    .local v0, "pathLength":I
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_1d

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 221
    :cond_1d
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeParams(Ljava/lang/String;)V

    .line 222
    .end local v0    # "pathLength":I
    goto :goto_3b

    .line 223
    :cond_29
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_36

    .line 224
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 226
    :cond_36
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeParams(Ljava/lang/String;)V

    .line 229
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 4

    .line 196
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 197
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    if-nez v0, :cond_d

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    return-object v0

    .line 201
    :cond_d
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 202
    .local v0, "pathEndPos":I
    if-gez v0, :cond_1c

    .line 203
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    goto :goto_26

    .line 205
    :cond_1c
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    return-object v1

    .line 208
    .end local v0    # "pathEndPos":I
    :cond_26
    :goto_26
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    return-object v0
.end method
