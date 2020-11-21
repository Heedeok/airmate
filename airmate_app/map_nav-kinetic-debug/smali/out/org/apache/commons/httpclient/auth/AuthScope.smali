.class public Lorg/apache/commons/httpclient/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# static fields
.field public static final ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String;

.field public static final ANY_PORT:I = -0x1

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private host:Ljava/lang/String;

.field private port:I

.field private realm:Ljava/lang/String;

.field private scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    .line 61
    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .line 66
    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    .line 73
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthScope;

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 149
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;

    .line 132
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    .line 109
    if-nez p1, :cond_12

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :goto_16
    iput-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 110
    if-gez p2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, p2

    :goto_1c
    iput v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    .line 111
    if-nez p3, :cond_23

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    goto :goto_24

    :cond_23
    move-object v0, p3

    :goto_24
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 112
    if-nez p4, :cond_2b

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    goto :goto_2f

    :cond_2b
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/auth/AuthScope;)V
    .registers 4
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    .line 159
    if-eqz p1, :cond_28

    .line 162
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    .line 164
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 166
    return-void

    .line 160
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static paramsEqual(II)Z
    .registers 3
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 225
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "p1"    # Ljava/lang/String;
    .param p1, "p2"    # Ljava/lang/String;

    .line 211
    if-nez p0, :cond_8

    .line 212
    if-ne p0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 214
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 274
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 275
    return v0

    .line 277
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    .line 278
    return v1

    .line 280
    :cond_8
    instance-of v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;

    if-nez v2, :cond_11

    .line 281
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 283
    :cond_11
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 284
    .local v2, "that":Lorg/apache/commons/httpclient/auth/AuthScope;
    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    iget v4, v2, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v0, 0x1

    nop

    :cond_3e
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 183
    iget v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 322
    const/16 v0, 0x11

    .line 323
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 324
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 325
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 326
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 327
    return v0
.end method

.method public match(Lorg/apache/commons/httpclient/auth/AuthScope;)I
    .registers 6
    .param p1, "that"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "factor":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_f

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 242
    :cond_f
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v1, v3, :cond_1c

    iget-object v1, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v1, v3, :cond_1c

    .line 243
    return v2

    .line 246
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 247
    add-int/lit8 v0, v0, 0x2

    goto :goto_36

    .line 249
    :cond_29
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v1, v3, :cond_36

    iget-object v1, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v1, v3, :cond_36

    .line 250
    return v2

    .line 253
    :cond_36
    :goto_36
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    iget v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(II)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 254
    add-int/lit8 v0, v0, 0x4

    goto :goto_4c

    .line 256
    :cond_43
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-eq v1, v2, :cond_4c

    iget v1, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-eq v1, v2, :cond_4c

    .line 257
    return v2

    .line 260
    :cond_4c
    :goto_4c
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 261
    add-int/lit8 v0, v0, 0x8

    goto :goto_66

    .line 263
    :cond_59
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v1, v3, :cond_66

    iget-object v1, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v1, v3, :cond_66

    .line 264
    return v2

    .line 267
    :cond_66
    :goto_66
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 297
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 300
    :cond_17
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 301
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 302
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    .line 305
    :cond_29
    const-string v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    :goto_2e
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 308
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 309
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-ltz v1, :cond_4a

    .line 311
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 315
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
