.class final Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;
.super Ljava/lang/Object;
.source "HttpCodecUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method static isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .registers 6
    .param p0, "m"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 108
    const-string v0, "Transfer-Encoding"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "chunked":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 110
    return v2

    .line 113
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "v":Ljava/lang/String;
    const-string v4, "chunked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 115
    const/4 v2, 0x1

    return v2

    .line 117
    .end local v3    # "v":Ljava/lang/String;
    :cond_28
    goto :goto_12

    .line 118
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_29
    return v2
.end method

.method static validateHeaderName(Ljava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    if-eqz p0, :cond_55

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 28
    .local v1, "c":C
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_3d

    .line 34
    const/16 v2, 0x20

    if-eq v1, v2, :cond_26

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_26

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_26

    packed-switch v1, :pswitch_data_5e

    packed-switch v1, :pswitch_data_6c

    .line 26
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 37
    .restart local v1    # "c":C
    :cond_26
    :pswitch_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name contains one of the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_3d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name contains non-ascii character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_54
    return-void

    .line 24
    :cond_55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_5e
    .packed-switch 0x9
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x3a
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method static validateHeaderValue(Ljava/lang/String;)V
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .line 45
    if-eqz p0, :cond_ac

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_92

    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 58
    .local v2, "c":C
    packed-switch v2, :pswitch_data_b4

    .line 68
    const/16 v3, 0xa

    packed-switch v0, :pswitch_data_bc

    .end local v2    # "c":C
    goto/16 :goto_8e

    .line 63
    .restart local v2    # "c":C
    :pswitch_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value contains a prohibited character \'\\f\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :pswitch_2f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value contains a prohibited character \'\\v\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :pswitch_46
    const/16 v3, 0x9

    if-eq v2, v3, :cond_66

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4f

    goto :goto_66

    .line 95
    :cond_4f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only \' \' and \'\\t\' are allowed after \'\\n\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_66
    :goto_66
    const/4 v0, 0x0

    .line 93
    goto :goto_8e

    .line 80
    :pswitch_68
    if-ne v2, v3, :cond_6c

    .line 82
    const/4 v0, 0x2

    .line 83
    goto :goto_8e

    .line 85
    :cond_6c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only \'\\n\' is allowed after \'\\r\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :pswitch_83
    if-eq v2, v3, :cond_8c

    const/16 v3, 0xd

    if-eq v2, v3, :cond_8a

    goto :goto_8d

    .line 72
    :cond_8a
    const/4 v0, 0x1

    .line 73
    goto :goto_8d

    .line 75
    :cond_8c
    const/4 v0, 0x2

    .line 78
    :goto_8d
    nop

    .line 54
    .end local v2    # "c":C
    :goto_8e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 101
    .end local v1    # "i":I
    :cond_92
    if-nez v0, :cond_95

    .line 105
    return-void

    .line 102
    :cond_95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value must not end with \'\\r\' or \'\\n\':"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "state":I
    :cond_ac
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_b4
    .packed-switch 0xb
        :pswitch_2f
        :pswitch_18
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_83
        :pswitch_68
        :pswitch_46
    .end packed-switch
.end method
