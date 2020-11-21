.class public Lorg/jboss/netty/handler/codec/http/DefaultCookie;
.super Ljava/lang/Object;
.source "DefaultCookie.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/Cookie;


# instance fields
.field private comment:Ljava/lang/String;

.field private commentUrl:Ljava/lang/String;

.field private discard:Z

.field private domain:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:I

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private ports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private secure:Z

.field private unmodifiablePorts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    .line 37
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->maxAge:I

    .line 47
    if-eqz p1, :cond_9d

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_95

    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_70

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 57
    .local v2, "c":C
    const/16 v3, 0x7f

    if-gt v2, v3, :cond_59

    .line 63
    const/16 v3, 0x20

    if-eq v2, v3, :cond_42

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_42

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_42

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_42

    packed-switch v2, :pswitch_data_a6

    .line 55
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 66
    .restart local v2    # "c":C
    :cond_42
    :pswitch_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name contains one of the following prohibited characters: =,; \\t\\r\\n\\v\\f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name contains non-ascii character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_70
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_7e

    .line 76
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->name:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->setValue(Ljava/lang/String;)V

    .line 78
    return-void

    .line 73
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name starting with \'$\' not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_9d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_a6
    .packed-switch 0x9
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method private static validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 322
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 323
    return-object v0

    .line 325
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 327
    return-object v0

    .line 329
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 331
    .local v1, "c":C
    const/16 v2, 0x3b

    if-eq v1, v2, :cond_24

    packed-switch v1, :pswitch_data_4a

    .line 329
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 333
    .restart local v1    # "c":C
    :cond_24
    :pswitch_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " contains one of the following prohibited characters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";\\r\\n\\f\\v ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_48
    return-object p1

    nop

    :pswitch_data_4a
    .packed-switch 0xa
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 27
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/Cookie;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->compareTo(Lorg/jboss/netty/handler/codec/http/Cookie;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/Cookie;)I
    .registers 7
    .param p1, "c"    # Lorg/jboss/netty/handler/codec/http/Cookie;

    .line 257
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v0, "v":I
    if-eqz v0, :cond_f

    .line 259
    return v0

    .line 262
    :cond_f
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez v1, :cond_1e

    .line 263
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 264
    return v3

    .line 266
    :cond_1e
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    .line 267
    return v2

    .line 269
    :cond_25
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 270
    if-eqz v0, :cond_34

    .line 271
    return v0

    .line 275
    :cond_34
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_43

    .line 276
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 277
    return v3

    .line 286
    :cond_41
    const/4 v1, 0x0

    return v1

    .line 279
    :cond_43
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4a

    .line 280
    return v2

    .line 282
    :cond_4a
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 283
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 223
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/Cookie;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 224
    return v1

    .line 227
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/Cookie;

    .line 228
    .local v0, "that":Lorg/jboss/netty/handler/codec/http/Cookie;
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 229
    return v1

    .line 232
    :cond_18
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_25

    .line 233
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 234
    return v1

    .line 236
    :cond_25
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 237
    return v1

    .line 238
    :cond_2c
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 239
    return v1

    .line 242
    :cond_3b
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4a

    .line 243
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 244
    return v1

    .line 252
    :cond_48
    const/4 v1, 0x1

    return v1

    .line 246
    :cond_4a
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_51

    .line 247
    return v1

    .line 249
    :cond_51
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentUrl()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->commentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .registers 2

    .line 180
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->maxAge:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    if-nez v0, :cond_c

    .line 137
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 139
    :cond_c
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 193
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->version:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 218
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDiscard()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->discard:Z

    return v0
.end method

.method public isHttpOnly()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->httpOnly:Z

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->secure:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 3
    .param p1, "comment"    # Ljava/lang/String;

    .line 116
    const-string v0, "comment"

    invoke-static {v0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->comment:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setCommentUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "commentUrl"    # Ljava/lang/String;

    .line 124
    const-string v0, "commentUrl"

    invoke-static {v0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->commentUrl:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setDiscard(Z)V
    .registers 2
    .param p1, "discard"    # Z

    .line 132
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->discard:Z

    .line 133
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 100
    const-string v0, "domain"

    invoke-static {v0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->domain:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setHttpOnly(Z)V
    .registers 2
    .param p1, "httpOnly"    # Z

    .line 213
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->httpOnly:Z

    .line 214
    return-void
.end method

.method public setMaxAge(I)V
    .registers 5
    .param p1, "maxAge"    # I

    .line 184
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    .line 189
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->maxAge:I

    .line 190
    return-void

    .line 185
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxAge must be either -1, 0, or a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 108
    const-string v0, "path"

    invoke-static {v0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->path:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setPorts(Ljava/lang/Iterable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "ports":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 165
    .local v0, "newPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 166
    .local v2, "p":I
    if-lez v2, :cond_28

    const v3, 0xffff

    if-gt v2, v3, :cond_28

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v2    # "p":I
    goto :goto_9

    .line 167
    .restart local v2    # "p":I
    :cond_28
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port out of range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":I
    :cond_3f
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    goto :goto_53

    .line 174
    :cond_4e
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 177
    :goto_53
    return-void
.end method

.method public varargs setPorts([I)V
    .registers 11
    .param p1, "ports"    # [I

    .line 143
    if-eqz p1, :cond_4e

    .line 147
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 148
    .local v0, "portsCopy":[I
    array-length v1, v0

    if-nez v1, :cond_14

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    goto :goto_4d

    .line 151
    :cond_14
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 152
    .local v1, "newPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object v2, v0

    .local v2, "arr$":[I
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1c
    if-ge v4, v3, :cond_48

    aget v5, v2, v4

    .line 153
    .local v5, "p":I
    if-lez v5, :cond_31

    const v6, 0xffff

    if-gt v5, v6, :cond_31

    .line 156
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v5    # "p":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 154
    .restart local v5    # "p":I
    :cond_31
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "port out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 158
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v5    # "p":I
    :cond_48
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    .line 159
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 161
    .end local v1    # "newPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_4d
    return-void

    .line 144
    .end local v0    # "portsCopy":[I
    :cond_4e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ports"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSecure(Z)V
    .registers 2
    .param p1, "secure"    # Z

    .line 205
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->secure:Z

    .line 206
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 89
    if-eqz p1, :cond_5

    .line 92
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->value:Ljava/lang/String;

    .line 93
    return-void

    .line 90
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .line 197
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->version:I

    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 296
    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_2a
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 300
    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_3c
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 304
    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_4e
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getMaxAge()I

    move-result v1

    if-ltz v1, :cond_65

    .line 308
    const-string v1, ", maxAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getMaxAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    :cond_65
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 313
    const-string v1, ", secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_70
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->isHttpOnly()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 316
    const-string v1, ", HTTPOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
