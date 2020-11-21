.class public Lorg/apache/commons/httpclient/HttpURL;
.super Lorg/apache/commons/httpclient/URI;
.source "HttpURL.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_SCHEME:[C

.field public static final _default_port:I = 0x50

.field public static final _default_scheme:[C

.field static final serialVersionUID:J = -0x63566f5bfaf4d8e3L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 409
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    .line 416
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    sput-object v0, Lorg/apache/commons/httpclient/HttpURL;->_default_scheme:[C

    return-void

    nop

    :array_e
    .array-data 2
        0x68s
        0x74s
        0x74s
        0x70s
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "original"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 121
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 138
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 92
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpURL;->protocolCharset:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "userinfo"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 268
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "userinfo"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 290
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "userinfo"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    .local v0, "buff":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    if-nez p1, :cond_f

    if-nez p2, :cond_f

    if-eq p3, v1, :cond_40

    .line 316
    :cond_f
    sget-object v2, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    .line 317
    sget-object v2, Lorg/apache/commons/httpclient/HttpURL;->_default_scheme:[C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 318
    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    if-eqz p1, :cond_27

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 323
    :cond_27
    if-eqz p2, :cond_40

    .line 324
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    invoke-static {p2, v2}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    if-ne p3, v1, :cond_38

    const/16 v1, 0x50

    if-eq p3, v1, :cond_40

    .line 326
    :cond_38
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 331
    :cond_40
    const/4 v1, 0x1

    if-eqz p4, :cond_61

    .line 332
    sget-object v2, Lorg/apache/commons/httpclient/HttpURL;->scheme:Ljava/util/BitSet;

    if-eqz v2, :cond_58

    const-string v2, "/"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_58

    .line 333
    :cond_50
    new-instance v2, Lorg/apache/commons/httpclient/URIException;

    const-string v3, "abs_path requested"

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 336
    :cond_58
    :goto_58
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p4, v2}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :cond_61
    if-eqz p5, :cond_71

    .line 339
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-static {p5, v2}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    :cond_71
    if-eqz p6, :cond_81

    .line 343
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-static {p6, v2}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    :cond_81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 347
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 348
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 154
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 171
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 189
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 208
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 366
    invoke-static {p1, p2}, Lorg/apache/commons/httpclient/HttpURL;->toUserinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 225
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "userinfo"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 247
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpURL;Ljava/lang/String;)V
    .registers 4
    .param p1, "base"    # Lorg/apache/commons/httpclient/HttpURL;
    .param p2, "relative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 388
    new-instance v0, Lorg/apache/commons/httpclient/HttpURL;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Lorg/apache/commons/httpclient/HttpURL;Lorg/apache/commons/httpclient/HttpURL;)V

    .line 389
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpURL;Lorg/apache/commons/httpclient/HttpURL;)V
    .registers 3
    .param p1, "base"    # Lorg/apache/commons/httpclient/HttpURL;
    .param p2, "relative"    # Lorg/apache/commons/httpclient/HttpURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 400
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V

    .line 401
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 402
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .param p1, "escaped"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 79
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .registers 5
    .param p1, "escaped"    # [C
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 62
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpURL;->protocolCharset:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 65
    return-void
.end method

.method protected static toUserinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 370
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 372
    .local v0, "usrinfo":Ljava/lang/StringBuffer;
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-static {p0, v1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    if-nez p1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 374
    :cond_1b
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-static {p1, v1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected checkValid()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    if-nez v0, :cond_f

    goto :goto_18

    .line 829
    :cond_f
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x1

    const-string v2, "wrong class use"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 831
    :cond_18
    :goto_18
    return-void
.end method

.method public getEscapedPassword()Ljava/lang/String;
    .registers 3

    .line 707
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawPassword()[C

    move-result-object v0

    .line 708
    .local v0, "password":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v1
.end method

.method public getEscapedUser()Ljava/lang/String;
    .registers 3

    .line 615
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v0

    .line 616
    .local v0, "user":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v1
.end method

.method public getPassword()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 719
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawPassword()[C

    move-result-object v0

    .line 720
    .local v0, "password":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public getPort()I
    .registers 3

    .line 463
    iget v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x50

    goto :goto_a

    :cond_8
    iget v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    :goto_a
    return v0
.end method

.method public getRawAboveHierPath()[C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 745
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawCurrentHierPath()[C

    move-result-object v0

    .line 746
    .local v0, "path":[C
    if-eqz v0, :cond_f

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_f

    :cond_a
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->getRawCurrentHierPath([C)[C

    move-result-object v1

    goto :goto_11

    :cond_f
    :goto_f
    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->rootPath:[C

    :goto_11
    return-object v1
.end method

.method public getRawCurrentHierPath()[C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_11

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    invoke-super {p0, v0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath([C)[C

    move-result-object v0

    goto :goto_13

    :cond_11
    :goto_11
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->rootPath:[C

    :goto_13
    return-object v0
.end method

.method public getRawPassword()[C
    .registers 7

    .line 690
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->indexFirstOf([CC)I

    move-result v0

    .line 691
    .local v0, "from":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 692
    const/4 v1, 0x0

    return-object v1

    .line 694
    :cond_d
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 695
    .local v1, "len":I
    new-array v2, v1, [C

    .line 696
    .local v2, "result":[C
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 697
    return-object v2
.end method

.method public getRawPath()[C
    .registers 3

    .line 756
    invoke-super {p0}, Lorg/apache/commons/httpclient/URI;->getRawPath()[C

    move-result-object v0

    .line 757
    .local v0, "path":[C
    if-eqz v0, :cond_c

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_c

    :cond_a
    move-object v1, v0

    goto :goto_e

    :cond_c
    :goto_c
    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->rootPath:[C

    :goto_e
    return-object v1
.end method

.method public getRawScheme()[C
    .registers 2

    .line 443
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    :goto_8
    return-object v0
.end method

.method public getRawUser()[C
    .registers 5

    .line 595
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_21

    .line 598
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->indexFirstOf([CC)I

    move-result v0

    .line 600
    .local v0, "to":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 601
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    return-object v1

    .line 603
    :cond_18
    new-array v1, v0, [C

    .line 604
    .local v1, "result":[C
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    return-object v1

    .line 596
    .end local v0    # "to":I
    .end local v1    # "result":[C
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 3

    .line 453
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 627
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v0

    .line 628
    .local v0, "user":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public setEscapedPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "escapedPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 667
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->setRawPassword([C)V

    .line 669
    return-void
.end method

.method public setEscapedUser(Ljava/lang/String;)V
    .registers 3
    .param p1, "escapedUser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->setRawUser([C)V

    .line 574
    return-void
.end method

.method public setEscapedUserinfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "escapedUser"    # Ljava/lang/String;
    .param p2, "escapedPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    if-nez p2, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_c
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->setRawUserinfo([C[C)V

    .line 515
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 679
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_e

    :cond_4
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    :goto_e
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->setRawPassword([C)V

    .line 681
    return-void
.end method

.method public setQuery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "queryName"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 775
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 777
    .local v0, "buff":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "charset":Ljava/lang/String;
    sget-object v2, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {p1, v2, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 779
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 780
    sget-object v2, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {p2, v2, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 781
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpURL;->_query:[C

    .line 782
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 783
    return-void
.end method

.method public setQuery([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "queryName"    # [Ljava/lang/String;
    .param p2, "queryValue"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 799
    array-length v0, p1

    .line 800
    .local v0, "length":I
    array-length v1, p2

    if-ne v0, v1, :cond_45

    .line 804
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 806
    .local v1, "buff":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "charset":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_37

    .line 808
    aget-object v4, p1, v3

    sget-object v5, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {v4, v5, v2}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 809
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 810
    aget-object v4, p2, v3

    sget-object v5, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {v4, v5, v2}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 811
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v0, :cond_34

    .line 812
    const/16 v4, 0x26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 807
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 815
    .end local v3    # "i":I
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpURL;->_query:[C

    .line 816
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 817
    return-void

    .line 801
    .end local v1    # "buff":Ljava/lang/StringBuffer;
    .end local v2    # "charset":Ljava/lang/String;
    :cond_45
    new-instance v1, Lorg/apache/commons/httpclient/URIException;

    const-string v2, "wrong array size of query"

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRawPassword([C)V
    .registers 9
    .param p1, "escapedPassword"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 639
    if-eqz p1, :cond_14

    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpURL;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_14

    .line 641
    :cond_b
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x3

    const-string v2, "escaped password not valid"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 644
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_a2

    .line 647
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 648
    .local v0, "username":Ljava/lang/String;
    if-nez p1, :cond_2e

    const/4 v1, 0x0

    goto :goto_33

    :cond_2e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 650
    .local v1, "password":Ljava/lang/String;
    :goto_33
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v1, :cond_40

    const-string v3, ""

    goto :goto_51

    :cond_40
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "userinfo":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawHost()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 652
    .local v3, "hostname":Ljava/lang/String;
    iget v4, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_68

    move-object v4, v3

    goto :goto_7e

    :cond_68
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, "hostport":Ljava/lang/String;
    :goto_7e
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 654
    .local v5, "authority":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    .line 655
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    .line 656
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 657
    return-void

    .line 645
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "userinfo":Ljava/lang/String;
    .end local v3    # "hostname":Ljava/lang/String;
    .end local v4    # "hostport":Ljava/lang/String;
    .end local v5    # "authority":Ljava/lang/String;
    :cond_a2
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x1

    const-string v2, "username required"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public setRawUser([C)V
    .registers 10
    .param p1, "escapedUser"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 544
    if-eqz p1, :cond_97

    array-length v0, p1

    if-eqz v0, :cond_97

    .line 547
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpURL;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 551
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 552
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawPassword()[C

    move-result-object v1

    .line 553
    .local v1, "rawPassword":[C
    if-nez v1, :cond_1a

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 554
    .local v2, "password":Ljava/lang/String;
    :goto_1f
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v2, :cond_2c

    const-string v4, ""

    goto :goto_3d

    :cond_2c
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "userinfo":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawHost()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 556
    .local v4, "hostname":Ljava/lang/String;
    iget v5, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_54

    move-object v5, v4

    goto :goto_6a

    :cond_54
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "hostport":Ljava/lang/String;
    :goto_6a
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "authority":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    .line 559
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    .line 560
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 561
    return-void

    .line 548
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "rawPassword":[C
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "userinfo":Ljava/lang/String;
    .end local v4    # "hostname":Ljava/lang/String;
    .end local v5    # "hostport":Ljava/lang/String;
    .end local v6    # "authority":Ljava/lang/String;
    :cond_8e
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x3

    const-string v2, "escaped user not valid"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 545
    :cond_97
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x1

    const-string v2, "user required"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public setRawUserinfo([C[C)V
    .registers 10
    .param p1, "escapedUser"    # [C
    .param p2, "escapedPassword"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 479
    if-eqz p1, :cond_9d

    array-length v0, p1

    if-eqz v0, :cond_9d

    .line 482
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpURL;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_94

    if-eqz p2, :cond_17

    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/httpclient/HttpURL;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 488
    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 489
    .local v0, "username":Ljava/lang/String;
    if-nez p2, :cond_20

    const/4 v1, 0x0

    goto :goto_25

    :cond_20
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    .line 491
    .local v1, "password":Ljava/lang/String;
    :goto_25
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v1, :cond_32

    const-string v3, ""

    goto :goto_43

    :cond_32
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "userinfo":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawHost()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 493
    .local v3, "hostname":Ljava/lang/String;
    iget v4, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5a

    move-object v4, v3

    goto :goto_70

    :cond_5a
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "hostport":Ljava/lang/String;
    :goto_70
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, "authority":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    .line 496
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 498
    return-void

    .line 485
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "userinfo":Ljava/lang/String;
    .end local v3    # "hostname":Ljava/lang/String;
    .end local v4    # "hostport":Ljava/lang/String;
    .end local v5    # "authority":Ljava/lang/String;
    :cond_94
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x3

    const-string v2, "escaped userinfo not valid"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 480
    :cond_9d
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x1

    const-string v2, "user required"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected setURI()V
    .registers 5

    .line 840
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 842
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    const/16 v2, 0x3a

    if-eqz v1, :cond_13

    .line 843
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 844
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 846
    :cond_13
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_is_net_path:Z

    if-eqz v1, :cond_40

    .line 847
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 848
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    if-eqz v1, :cond_40

    .line 849
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    if-eqz v1, :cond_3b

    .line 850
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_host:[C

    if-eqz v1, :cond_40

    .line 851
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_host:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 852
    iget v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_40

    .line 853
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 854
    iget v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 858
    :cond_3b
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 862
    :cond_40
    :goto_40
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_opaque:[C

    if-eqz v1, :cond_4e

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_is_opaque_part:Z

    if-eqz v1, :cond_4e

    .line 863
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_opaque:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 864
    :cond_4e
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    if-eqz v1, :cond_5c

    .line 866
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    array-length v1, v1

    if-eqz v1, :cond_5c

    .line 867
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 870
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_query:[C

    if-eqz v1, :cond_6a

    .line 871
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 872
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_query:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 875
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_uri:[C

    .line 876
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/httpclient/HttpURL;->hash:I

    .line 877
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 4
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 585
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->setRawUser([C)V

    .line 586
    return-void
.end method

.method public setUserinfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "charset":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-static {p1, v1, v0}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v1

    if-nez p2, :cond_e

    const/4 v2, 0x0

    goto :goto_14

    :cond_e
    sget-object v2, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-static {p2, v2, v0}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    :goto_14
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/httpclient/HttpURL;->setRawUserinfo([C[C)V

    .line 534
    return-void
.end method
