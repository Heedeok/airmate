.class public final Lorg/apache/commons/httpclient/cookie/CookieOrigin;
.super Ljava/lang/Object;
.source "CookieOrigin.java"


# instance fields
.field private final host:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final port:I

.field private final secure:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_45

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 57
    if-ltz p2, :cond_26

    .line 60
    if-eqz p3, :cond_1e

    .line 64
    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    .line 65
    iput p2, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->port:I

    .line 66
    iput-object p3, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    .line 67
    iput-boolean p4, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->secure:Z

    .line 68
    return-void

    .line 61
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path of origin may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 79
    iget v0, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->port:I

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->secure:Z

    return v0
.end method
