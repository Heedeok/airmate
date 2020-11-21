.class public Lorg/apache/commons/httpclient/protocol/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field private static final PROTOCOLS:Ljava/util/Map;


# instance fields
.field private defaultPort:I

.field private scheme:Ljava/lang/String;

.field private secure:Z

.field private socketFactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/protocol/Protocol;->PROTOCOLS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;I)V
    .registers 7
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    .param p3, "defaultPort"    # I

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-eqz p1, :cond_33

    .line 179
    if-eqz p2, :cond_2b

    .line 182
    if-lez p3, :cond_14

    .line 186
    iput-object p1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->scheme:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->socketFactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    .line 188
    iput p3, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->defaultPort:I

    .line 189
    instance-of v0, p2, Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->secure:Z

    .line 190
    return-void

    .line 183
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "port is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socketFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scheme is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;I)V
    .registers 4
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;
    .param p3, "defaultPort"    # I

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/protocol/Protocol;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;I)V

    .line 206
    return-void
.end method

.method public static getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 110
    if-eqz p0, :cond_11

    .line 114
    sget-object v0, Lorg/apache/commons/httpclient/protocol/Protocol;->PROTOCOLS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 116
    .local v0, "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    if-nez v0, :cond_10

    .line 117
    invoke-static {p0}, Lorg/apache/commons/httpclient/protocol/Protocol;->lazyRegisterProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    .line 120
    :cond_10
    return-object v0

    .line 111
    .end local v0    # "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lazyRegisterProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 135
    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 136
    new-instance v0, Lorg/apache/commons/httpclient/protocol/Protocol;

    const-string v1, "http"

    invoke-static {}, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    move-result-object v2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/protocol/Protocol;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;I)V

    .line 138
    .local v0, "http":Lorg/apache/commons/httpclient/protocol/Protocol;
    const-string v1, "http"

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->registerProtocol(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 139
    return-object v0

    .line 142
    .end local v0    # "http":Lorg/apache/commons/httpclient/protocol/Protocol;
    :cond_1b
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 143
    new-instance v0, Lorg/apache/commons/httpclient/protocol/Protocol;

    const-string v1, "https"

    invoke-static {}, Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;

    move-result-object v2

    const/16 v3, 0x1bb

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/protocol/Protocol;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;I)V

    .line 145
    .local v0, "https":Lorg/apache/commons/httpclient/protocol/Protocol;
    const-string v1, "https"

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->registerProtocol(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 146
    return-object v0

    .line 149
    .end local v0    # "https":Lorg/apache/commons/httpclient/protocol/Protocol;
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unsupported protocol: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerProtocol(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 74
    if-eqz p0, :cond_12

    .line 77
    if-eqz p1, :cond_a

    .line 81
    sget-object v0, Lorg/apache/commons/httpclient/protocol/Protocol;->PROTOCOLS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void

    .line 78
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unregisterProtocol(Ljava/lang/String;)V
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .line 91
    if-eqz p0, :cond_8

    .line 95
    sget-object v0, Lorg/apache/commons/httpclient/protocol/Protocol;->PROTOCOLS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void

    .line 92
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 268
    instance-of v0, p1, Lorg/apache/commons/httpclient/protocol/Protocol;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 270
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 272
    .local v0, "p":Lorg/apache/commons/httpclient/protocol/Protocol;
    iget v2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->defaultPort:I

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v3

    if-ne v2, v3, :cond_32

    iget-object v2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->secure:Z

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->isSecure()Z

    move-result v3

    if-ne v2, v3, :cond_32

    iget-object v2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->socketFactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v1, 0x1

    nop

    :cond_32
    return v1

    .line 279
    .end local v0    # "p":Lorg/apache/commons/httpclient/protocol/Protocol;
    :cond_33
    return v1
.end method

.method public getDefaultPort()I
    .registers 2

    .line 213
    iget v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->defaultPort:I

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    .registers 2

    .line 222
    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->socketFactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 289
    const/16 v0, 0x11

    .line 290
    .local v0, "hash":I
    iget v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->defaultPort:I

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 291
    iget-object v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 292
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->secure:Z

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 293
    iget-object v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->socketFactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 294
    return v0
.end method

.method public isSecure()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->secure:Z

    return v0
.end method

.method public resolvePort(I)I
    .registers 3
    .param p1, "port"    # I

    .line 250
    if-gtz p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v0

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 258
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->defaultPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
