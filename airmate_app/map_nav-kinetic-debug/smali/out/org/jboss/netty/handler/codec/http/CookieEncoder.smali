.class public Lorg/jboss/netty/handler/codec/http/CookieEncoder;
.super Ljava/lang/Object;
.source "CookieEncoder.java"


# instance fields
.field private final cookies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jboss/netty/handler/codec/http/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final server:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "server"    # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    .line 63
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->server:Z

    .line 64
    return-void
.end method

.method private static add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 271
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    return-void
.end method

.method private static add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 227
    if-nez p2, :cond_8

    .line 228
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void

    .line 232
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 233
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 234
    .local v1, "c":C
    const/16 v2, 0x9

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_3b

    packed-switch v1, :pswitch_data_44

    packed-switch v1, :pswitch_data_4c

    packed-switch v1, :pswitch_data_5e

    .line 232
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 239
    .restart local v1    # "c":C
    :cond_3b
    :pswitch_3b
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void

    .line 244
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_3f
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x28
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x3a
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x5b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method private static addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 256
    if-nez p2, :cond_4

    .line 257
    const-string p2, ""

    .line 260
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    return-void
.end method

.method private static addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 248
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    return-void
.end method

.method private encodeClientSide()Ljava/lang/String;
    .registers 9

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/Cookie;

    .line 189
    .local v2, "cookie":Lorg/jboss/netty/handler/codec/http/Cookie;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_23

    .line 190
    const-string v3, "$Version"

    invoke-static {v0, v3, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 193
    :cond_23
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 196
    const-string v3, "$Path"

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_3d
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 200
    const-string v3, "$Domain"

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_4c
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v3

    if-lt v3, v4, :cond_a3

    .line 204
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a3

    .line 205
    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    const-string v3, "Port"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_78
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 210
    .local v6, "port":I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .end local v6    # "port":I
    goto :goto_78

    .line 213
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 214
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .end local v2    # "cookie":Lorg/jboss/netty/handler/codec/http/Cookie;
    :cond_a3
    goto/16 :goto_b

    .line 220
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b4

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 223
    :cond_b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private encodeServerSide()Ljava/lang/String;
    .registers 14

    .line 100
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_15e

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/handler/codec/http/Cookie;

    .line 108
    .local v3, "cookie":Lorg/jboss/netty/handler/codec/http/Cookie;
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getMaxAge()I

    move-result v4

    if-ltz v4, :cond_62

    .line 111
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v4

    if-nez v4, :cond_59

    .line 112
    const-string v4, "Expires"

    new-instance v5, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;

    invoke-direct {v5}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;-><init>()V

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getMaxAge()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    add-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 117
    :cond_59
    const-string v4, "Max-Age"

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getMaxAge()I

    move-result v5

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 121
    :cond_62
    :goto_62
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_81

    .line 122
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v4

    if-lez v4, :cond_78

    .line 123
    const-string v4, "Path"

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 125
    :cond_78
    const-string v4, "Path"

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_81
    :goto_81
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a0

    .line 130
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v4

    if-lez v4, :cond_97

    .line 131
    const-string v4, "Domain"

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    .line 133
    :cond_97
    const-string v4, "Domain"

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_a0
    :goto_a0
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->isSecure()Z

    move-result v4

    const/16 v5, 0x20

    const/16 v6, 0x3b

    if-eqz v4, :cond_b5

    .line 137
    const-string v4, "Secure"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    :cond_b5
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->isHttpOnly()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 142
    const-string v4, "HTTPOnly"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_c6
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v4

    if-lt v4, v1, :cond_148

    .line 147
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_db

    .line 148
    const-string v4, "Comment"

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_db
    const-string v4, "Version"

    invoke-static {v0, v4, v1}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 153
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getCommentUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ef

    .line 154
    const-string v4, "CommentURL"

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getCommentUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_ef
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_137

    .line 158
    const-string v4, "Port"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_110
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_129

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 162
    .local v8, "port":I
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .end local v8    # "port":I
    goto :goto_110

    .line 165
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v0, v7, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 166
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    :cond_137
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->isDiscard()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 171
    const-string v4, "Discard"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .end local v3    # "cookie":Lorg/jboss/netty/handler/codec/http/Cookie;
    :cond_148
    goto/16 :goto_14

    .line 178
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_14a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_159

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 182
    :cond_159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_15e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encode() can encode only one cookie on server mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cookies added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultCookie;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public addCookie(Lorg/jboss/netty/handler/codec/http/Cookie;)V
    .registers 3
    .param p1, "cookie"    # Lorg/jboss/netty/handler/codec/http/Cookie;

    .line 78
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public encode()Ljava/lang/String;
    .registers 3

    .line 90
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->server:Z

    if-eqz v0, :cond_9

    .line 91
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->encodeServerSide()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 93
    :cond_9
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->encodeClientSide()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "answer":Ljava/lang/String;
    :goto_d
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 96
    return-object v0
.end method
