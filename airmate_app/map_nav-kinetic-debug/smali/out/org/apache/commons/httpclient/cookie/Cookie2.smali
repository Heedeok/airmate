.class public Lorg/apache/commons/httpclient/cookie/Cookie2;
.super Lorg/apache/commons/httpclient/Cookie;
.source "Cookie2.java"


# static fields
.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final COMMENTURL:Ljava/lang/String; = "commenturl"

.field public static final DISCARD:Ljava/lang/String; = "discard"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final MAXAGE:Ljava/lang/String; = "max-age"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final SECURE:Ljava/lang/String; = "secure"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private cookieCommentURL:Ljava/lang/String;

.field private cookiePorts:[I

.field private discard:Z

.field private hasPortAttribute:Z

.field private hasVersionAttribute:Z

.field private isPortAttributeBlank:Z


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 65
    const-string v2, "noname"

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    .line 295
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    .line 301
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    .line 306
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    .line 295
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    .line 301
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    .line 306
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    .registers 8
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "expires"    # Ljava/util/Date;
    .param p6, "secure"    # Z

    .line 98
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    .line 295
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    .line 301
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    .line 306
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z[I)V
    .registers 9
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "expires"    # Ljava/util/Date;
    .param p6, "secure"    # Z
    .param p7, "ports"    # [I

    .line 122
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    .line 295
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    .line 301
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    .line 306
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    .line 123
    invoke-virtual {p0, p7}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPorts([I)V

    .line 124
    return-void
.end method


# virtual methods
.method public getCommentURL()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookieCommentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .registers 2

    .line 155
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookiePorts:[I

    return-object v0
.end method

.method public isPersistent()Z
    .registers 2

    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isPortAttributeBlank()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    return v0
.end method

.method public isPortAttributeSpecified()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    return v0
.end method

.method public isVersionAttributeSpecified()Z
    .registers 2

    .line 262
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    return v0
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "commentURL"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookieCommentURL:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setDiscard(Z)V
    .registers 2
    .param p1, "toDiscard"    # Z

    .line 178
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    .line 179
    return-void
.end method

.method public setPortAttributeBlank(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 230
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    .line 231
    return-void
.end method

.method public setPortAttributeSpecified(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 202
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    .line 203
    return-void
.end method

.method public setPorts([I)V
    .registers 2
    .param p1, "ports"    # [I

    .line 167
    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookiePorts:[I

    .line 168
    return-void
.end method

.method public setVersionAttributeSpecified(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 252
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    .line 253
    return-void
.end method

.method public toExternalForm()Ljava/lang/String;
    .registers 3

    .line 271
    const-string v0, "rfc2965"

    invoke-static {v0}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    .line 273
    .local v0, "spec":Lorg/apache/commons/httpclient/cookie/CookieSpec;
    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
