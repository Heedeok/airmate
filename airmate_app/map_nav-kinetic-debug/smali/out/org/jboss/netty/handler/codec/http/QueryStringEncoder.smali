.class public Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;
.super Ljava/lang/Object;
.source "QueryStringEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;
    }
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;",
            ">;"
        }
    .end annotation
.end field

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    .line 60
    if-eqz p1, :cond_1b

    .line 63
    if-eqz p2, :cond_13

    .line 67
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->uri:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    .line 69
    return-void

    .line 64
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 127
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 128
    :catch_11
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 83
    if-eqz p1, :cond_17

    .line 86
    if-eqz p2, :cond_f

    .line 89
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    new-instance v1, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void

    .line 87
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 108
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->uri:Ljava/lang/String;

    return-object v0

    .line 111
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->uri:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 113
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;

    .line 114
    .local v2, "param":Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;
    iget-object v3, v2, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->encodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v3, v2, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;->value:Ljava/lang/String;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->encodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_53

    .line 118
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .end local v2    # "param":Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 121
    .end local v1    # "i":I
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUri()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
