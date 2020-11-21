.class public Lorg/apache/commons/httpclient/HttpsURL;
.super Lorg/apache/commons/httpclient/HttpURL;
.source "HttpsURL.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x1bb

.field public static final DEFAULT_SCHEME:[C

.field public static final _default_port:I = 0x1bb

.field public static final _default_scheme:[C

.field static final serialVersionUID:J = 0xc5241aa7c286428L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 399
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lorg/apache/commons/httpclient/HttpsURL;->DEFAULT_SCHEME:[C

    .line 406
    sget-object v0, Lorg/apache/commons/httpclient/HttpsURL;->DEFAULT_SCHEME:[C

    sput-object v0, Lorg/apache/commons/httpclient/HttpsURL;->_default_scheme:[C

    return-void

    nop

    :array_e
    .array-data 2
        0x68s
        0x74s
        0x74s
        0x70s
        0x73s
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpURL;-><init>()V

    .line 49
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

    .line 107
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpURL;-><init>()V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpsURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpsURL;->checkValid()V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 123
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 140
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
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

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpURL;-><init>()V

    .line 94
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpsURL;->protocolCharset:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpsURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpsURL;->checkValid()V

    .line 97
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

    .line 270
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
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

    .line 292
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
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

    .line 313
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpURL;-><init>()V

    .line 316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .local v0, "buff":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    if-nez p1, :cond_f

    if-nez p2, :cond_f

    if-eq p3, v1, :cond_40

    .line 318
    :cond_f
    sget-object v2, Lorg/apache/commons/httpclient/HttpsURL;->DEFAULT_SCHEME:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpsURL;->_scheme:[C

    .line 319
    sget-object v2, Lorg/apache/commons/httpclient/HttpsURL;->_default_scheme:[C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 320
    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    if-eqz p1, :cond_27

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    :cond_27
    if-eqz p2, :cond_40

    .line 326
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    invoke-static {p2, v2}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    if-ne p3, v1, :cond_38

    const/16 v1, 0x1bb

    if-eq p3, v1, :cond_40

    .line 328
    :cond_38
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 333
    :cond_40
    const/4 v1, 0x1

    if-eqz p4, :cond_61

    .line 334
    sget-object v2, Lorg/apache/commons/httpclient/HttpsURL;->scheme:Ljava/util/BitSet;

    if-eqz v2, :cond_58

    const-string v2, "/"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_58

    .line 335
    :cond_50
    new-instance v2, Lorg/apache/commons/httpclient/URIException;

    const-string v3, "abs_path requested"

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 338
    :cond_58
    :goto_58
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p4, v2}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :cond_61
    if-eqz p5, :cond_71

    .line 341
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-static {p5, v2}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :cond_71
    if-eqz p6, :cond_81

    .line 345
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-static {p6, v2}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    :cond_81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/httpclient/HttpsURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 349
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpsURL;->checkValid()V

    .line 350
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

    .line 156
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
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

    .line 173
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
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

    .line 191
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
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

    .line 210
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
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

    .line 367
    invoke-static {p1, p2}, Lorg/apache/commons/httpclient/HttpURL;->toUserinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 227
    const/4 v1, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
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

    .line 249
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpsURL;Ljava/lang/String;)V
    .registers 4
    .param p1, "base"    # Lorg/apache/commons/httpclient/HttpsURL;
    .param p2, "relative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 378
    new-instance v0, Lorg/apache/commons/httpclient/HttpsURL;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpsURL;-><init>(Lorg/apache/commons/httpclient/HttpsURL;Lorg/apache/commons/httpclient/HttpsURL;)V

    .line 379
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpsURL;Lorg/apache/commons/httpclient/HttpsURL;)V
    .registers 3
    .param p1, "base"    # Lorg/apache/commons/httpclient/HttpsURL;
    .param p2, "relative"    # Lorg/apache/commons/httpclient/HttpsURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Lorg/apache/commons/httpclient/HttpURL;Lorg/apache/commons/httpclient/HttpURL;)V

    .line 391
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpsURL;->checkValid()V

    .line 392
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

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpURL;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpsURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpsURL;->checkValid()V

    .line 81
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

    .line 63
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpURL;-><init>()V

    .line 64
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpsURL;->protocolCharset:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpsURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpsURL;->checkValid()V

    .line 67
    return-void
.end method


# virtual methods
.method protected checkValid()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpsURL;->_scheme:[C

    sget-object v1, Lorg/apache/commons/httpclient/HttpsURL;->DEFAULT_SCHEME:[C

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpsURL;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpsURL;->_scheme:[C

    if-nez v0, :cond_f

    goto :goto_18

    .line 468
    :cond_f
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x1

    const-string v2, "wrong class use"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 470
    :cond_18
    :goto_18
    return-void
.end method

.method public getPort()I
    .registers 3

    .line 455
    iget v0, p0, Lorg/apache/commons/httpclient/HttpsURL;->_port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x1bb

    goto :goto_a

    :cond_8
    iget v0, p0, Lorg/apache/commons/httpclient/HttpsURL;->_port:I

    :goto_a
    return v0
.end method

.method public getRawScheme()[C
    .registers 2

    .line 435
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpsURL;->_scheme:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    sget-object v0, Lorg/apache/commons/httpclient/HttpsURL;->DEFAULT_SCHEME:[C

    :goto_8
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 3

    .line 445
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpsURL;->_scheme:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/httpclient/HttpsURL;->DEFAULT_SCHEME:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_d
    return-object v0
.end method
