.class public Lorg/jboss/netty/handler/codec/http/CookieDecoder;
.super Ljava/lang/Object;
.source "CookieDecoder.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ","


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "lenient"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static extractKeyValuePairs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 190
    .local v0, "headerLen":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v5, v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 194
    .local v1, "newValueStart":I
    .local v2, "i":I
    .local v3, "name":Ljava/lang/String;
    .local v4, "c":C
    .local v5, "value":Ljava/lang/String;
    :goto_a
    if-ne v2, v0, :cond_d

    .line 195
    .end local v1    # "newValueStart":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "c":C
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_24

    .line 197
    .restart local v1    # "newValueStart":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "c":C
    .restart local v5    # "value":Ljava/lang/String;
    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_e2

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_e2

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_e2

    packed-switch v6, :pswitch_data_e6

    .line 203
    nop

    .line 208
    :goto_21
    if-ne v2, v0, :cond_25

    .line 209
    .end local v1    # "newValueStart":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "c":C
    .end local v5    # "value":Ljava/lang/String;
    nop

    .line 308
    .end local v2    # "i":I
    :goto_24
    return-void

    .line 211
    .restart local v1    # "newValueStart":I
    .restart local v2    # "i":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "c":C
    .restart local v5    # "value":Ljava/lang/String;
    :cond_25
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x24

    if-ne v6, v8, :cond_30

    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 213
    goto :goto_21

    .line 221
    :cond_30
    if-ne v2, v0, :cond_36

    .line 222
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 223
    .restart local v3    # "name":Ljava/lang/String;
    const/4 v5, 0x0

    goto/16 :goto_da

    .line 225
    .restart local v5    # "value":Ljava/lang/String;
    :cond_36
    move v6, v2

    .line 227
    .local v2, "newNameStart":I
    .local v6, "i":I
    :cond_37
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_d3

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_4c

    .line 293
    add-int/lit8 v6, v6, 0x1

    .line 296
    .end local v1    # "newValueStart":I
    .end local v4    # "c":C
    if-ne v6, v0, :cond_37

    .line 298
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    const/4 v5, 0x0

    .line 300
    goto/16 :goto_d9

    .line 235
    :cond_4c
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 236
    add-int/lit8 v6, v6, 0x1

    .line 237
    if-ne v6, v0, :cond_58

    .line 239
    const-string v5, ""

    .line 240
    goto/16 :goto_d9

    .line 243
    .end local v5    # "value":Ljava/lang/String;
    :cond_58
    move v5, v6

    .line 244
    .local v5, "newValueStart":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 245
    .local v1, "c":C
    const/16 v8, 0x27

    const/16 v9, 0x22

    if-eq v1, v9, :cond_7e

    if-ne v1, v8, :cond_66

    goto :goto_7e

    .line 282
    :cond_66
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 283
    .local v4, "semiPos":I
    if-lez v4, :cond_72

    .line 284
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, "value":Ljava/lang/String;
    move v6, v4

    goto :goto_77

    .line 287
    .end local v7    # "value":Ljava/lang/String;
    :cond_72
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 288
    .restart local v7    # "value":Ljava/lang/String;
    move v6, v0

    .line 291
    .end local v4    # "semiPos":I
    :goto_77
    nop

    .line 305
    move v4, v1

    move v1, v5

    move v2, v6

    move-object v5, v7

    goto/16 :goto_da

    .line 247
    .end local v7    # "value":Ljava/lang/String;
    :cond_7e
    :goto_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v4

    .line 248
    .local v7, "newValueBuf":Ljava/lang/StringBuilder;
    move v10, v1

    .line 249
    .local v10, "q":C
    const/4 v4, 0x0

    .line 250
    .local v4, "hadBackslash":Z
    add-int/lit8 v6, v6, 0x1

    .line 252
    :goto_8d
    if-ne v6, v0, :cond_99

    .line 253
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, "value":Ljava/lang/String;
    nop

    .line 305
    move v4, v1

    move v1, v5

    move v2, v6

    move-object v5, v8

    goto :goto_da

    .line 256
    .end local v8    # "value":Ljava/lang/String;
    :cond_99
    const/16 v11, 0x5c

    if-eqz v4, :cond_ba

    .line 257
    const/4 v4, 0x0

    .line 258
    add-int/lit8 v12, v6, 0x1

    .local v12, "i":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 259
    .end local v6    # "i":I
    if-eq v1, v9, :cond_ae

    if-eq v1, v8, :cond_ae

    if-eq v1, v11, :cond_ae

    .line 266
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b8

    .line 262
    :cond_ae
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v7, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 263
    nop

    .line 252
    .end local v12    # "i":I
    .restart local v6    # "i":I
    :cond_b8
    :goto_b8
    move v6, v12

    goto :goto_8d

    .line 269
    :cond_ba
    add-int/lit8 v12, v6, 0x1

    .restart local v12    # "i":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 270
    .end local v6    # "i":I
    if-ne v1, v10, :cond_cc

    .line 271
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "value":Ljava/lang/String;
    nop

    .line 305
    move v4, v1

    move v1, v5

    move-object v5, v6

    move v2, v12

    goto :goto_da

    .line 274
    .end local v6    # "value":Ljava/lang/String;
    :cond_cc
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    if-ne v1, v11, :cond_b8

    .line 276
    const/4 v4, 0x1

    goto :goto_b8

    .line 230
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "newValueStart":I
    .end local v7    # "newValueBuf":Ljava/lang/StringBuilder;
    .end local v10    # "q":C
    .end local v12    # "i":I
    .local v1, "newValueStart":I
    .local v4, "c":C
    .local v6, "i":I
    :cond_d3
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 231
    .restart local v3    # "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 232
    .local v5, "value":Ljava/lang/String;
    nop

    .line 305
    .end local v6    # "i":I
    .local v2, "i":I
    :goto_d9
    move v2, v6

    :goto_da
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto/16 :goto_a

    .line 200
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_e2
    :pswitch_e2
    add-int/lit8 v2, v2, 0x1

    .line 201
    goto/16 :goto_a

    :pswitch_data_e6
    .packed-switch 0x9
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
    .end packed-switch
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/util/Set;
    .registers 34
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lorg/jboss/netty/handler/codec/http/Cookie;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    .line 66
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v0

    .line 67
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v3, p1

    invoke-static {v3, v2, v1}, Lorg/jboss/netty/handler/codec/http/CookieDecoder;->extractKeyValuePairs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 69
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 74
    :cond_1e
    const/4 v4, 0x0

    .line 78
    .local v4, "version":I
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "Version"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 80
    :try_start_2e
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_38} :catch_3b

    .line 83
    .end local v4    # "version":I
    .local v0, "version":I
    nop

    .line 84
    move v4, v0

    goto :goto_3c

    .line 81
    .end local v0    # "version":I
    .restart local v4    # "version":I
    :catch_3b
    move-exception v0

    .line 84
    :goto_3c
    const/4 v0, 0x1

    goto :goto_3f

    .line 86
    :cond_3e
    const/4 v0, 0x0

    .line 89
    .local v0, "i":I
    :goto_3f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v0, :cond_4a

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    return-object v5

    .line 94
    :cond_4a
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 95
    .local v6, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    :goto_4f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1f6

    .line 96
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 97
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 98
    .local v8, "value":Ljava/lang/String;
    if-nez v8, :cond_65

    .line 99
    const-string v8, ""

    .line 102
    :cond_65
    new-instance v9, Lorg/jboss/netty/handler/codec/http/DefaultCookie;

    invoke-direct {v9, v7, v8}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v9, "c":Lorg/jboss/netty/handler/codec/http/Cookie;
    const/4 v10, 0x0

    .line 105
    .local v10, "discard":Z
    const/4 v11, 0x0

    .line 106
    .local v11, "secure":Z
    const/4 v12, 0x0

    .line 107
    .local v12, "httpOnly":Z
    const/4 v13, 0x0

    .line 108
    .local v13, "comment":Ljava/lang/String;
    const/4 v14, 0x0

    .line 109
    .local v14, "commentURL":Ljava/lang/String;
    const/4 v15, 0x0

    .line 110
    .local v15, "domain":Ljava/lang/String;
    const/16 v16, 0x0

    .line 111
    .local v16, "path":Ljava/lang/String;
    const/16 v17, -0x1

    .line 112
    .local v17, "maxAge":I
    new-instance v5, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    .line 114
    .local v3, "ports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v5, v0, 0x1

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v7, v17

    move v8, v4

    move-object/from16 v4, v16

    move/from16 v16, v0

    .end local v0    # "i":I
    .end local v17    # "maxAge":I
    .local v4, "path":Ljava/lang/String;
    .local v5, "j":I
    .local v7, "maxAge":I
    .local v8, "version":I
    .local v16, "i":I
    .local v18, "name":Ljava/lang/String;
    .local v19, "value":Ljava/lang/String;
    :goto_88
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v20, v6

    .end local v6    # "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    .local v20, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    if-ge v5, v0, :cond_1ad

    .line 115
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 116
    .end local v18    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v1

    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 118
    .end local v19    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    const-string v0, "Discard"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 119
    const/4 v0, 0x1

    .line 114
    move v10, v0

    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v29, "value":Ljava/lang/String;
    .local v31, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_aa
    move-object/from16 v29, v1

    move-object/from16 v31, v2

    goto/16 :goto_196

    .line 120
    .end local v29    # "value":Ljava/lang/String;
    .end local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "value":Ljava/lang/String;
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b0
    const-string v0, "Secure"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 121
    const/4 v0, 0x1

    .line 114
    move v11, v0

    goto :goto_aa

    .line 122
    :cond_bb
    const-string v0, "HTTPOnly"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 123
    const/4 v0, 0x1

    .line 114
    move v12, v0

    goto :goto_aa

    .line 124
    :cond_c6
    const-string v0, "Comment"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 125
    move-object v0, v1

    .line 114
    move-object v13, v0

    goto :goto_aa

    .line 126
    :cond_d1
    const-string v0, "CommentURL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 127
    move-object v0, v1

    .line 114
    move-object v14, v0

    goto :goto_aa

    .line 128
    :cond_dc
    const-string v0, "Domain"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 129
    move-object v0, v1

    .line 114
    move-object v15, v0

    goto :goto_aa

    .line 130
    :cond_e7
    const-string v0, "Path"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 131
    move-object v0, v1

    .line 114
    move-object v4, v0

    goto :goto_aa

    .line 132
    :cond_f2
    const-string v0, "Expires"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 134
    :try_start_fa
    new-instance v0, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23
    :try_end_10b
    .catch Ljava/text/ParseException; {:try_start_fa .. :try_end_10b} :catch_133

    const/4 v0, 0x0

    sub-long v18, v18, v23

    .line 137
    .local v18, "maxAgeMillis":J
    const-wide/16 v23, 0x0

    cmp-long v0, v18, v23

    if-gtz v0, :cond_11a

    .line 138
    const/4 v0, 0x0

    .line 145
    move-object/from16 v27, v13

    move-object/from16 v28, v14

    goto :goto_130

    .line 140
    :cond_11a
    const-wide/16 v25, 0x3e8

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    .end local v13    # "comment":Ljava/lang/String;
    .end local v14    # "commentURL":Ljava/lang/String;
    .local v27, "comment":Ljava/lang/String;
    .local v28, "commentURL":Ljava/lang/String;
    :try_start_120
    div-long v13, v18, v25

    long-to-int v0, v13

    rem-long v13, v18, v25
    :try_end_125
    .catch Ljava/text/ParseException; {:try_start_120 .. :try_end_125} :catch_131

    cmp-long v17, v13, v23

    if-eqz v17, :cond_12c

    const/16 v21, 0x1

    goto :goto_12e

    :cond_12c
    const/16 v21, 0x0

    :goto_12e
    add-int v0, v0, v21

    .line 145
    .end local v7    # "maxAge":I
    .end local v18    # "maxAgeMillis":J
    .local v0, "maxAge":I
    :goto_130
    goto :goto_14e

    .line 143
    .end local v0    # "maxAge":I
    .restart local v7    # "maxAge":I
    :catch_131
    move-exception v0

    goto :goto_138

    .end local v27    # "comment":Ljava/lang/String;
    .end local v28    # "commentURL":Ljava/lang/String;
    .restart local v13    # "comment":Ljava/lang/String;
    .restart local v14    # "commentURL":Ljava/lang/String;
    :catch_133
    move-exception v0

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    .line 145
    .end local v13    # "comment":Ljava/lang/String;
    .end local v14    # "commentURL":Ljava/lang/String;
    .restart local v27    # "comment":Ljava/lang/String;
    .restart local v28    # "commentURL":Ljava/lang/String;
    :goto_138
    nop

    .line 114
    move-object/from16 v29, v1

    move-object/from16 v31, v2

    goto :goto_192

    .line 146
    .end local v27    # "comment":Ljava/lang/String;
    .end local v28    # "commentURL":Ljava/lang/String;
    .restart local v13    # "comment":Ljava/lang/String;
    .restart local v14    # "commentURL":Ljava/lang/String;
    :cond_13e
    move-object/from16 v27, v13

    move-object/from16 v28, v14

    .end local v13    # "comment":Ljava/lang/String;
    .end local v14    # "commentURL":Ljava/lang/String;
    .restart local v27    # "comment":Ljava/lang/String;
    .restart local v28    # "commentURL":Ljava/lang/String;
    const-string v0, "Max-Age"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "comment":Ljava/lang/String;
    .end local v28    # "commentURL":Ljava/lang/String;
    .restart local v13    # "comment":Ljava/lang/String;
    .restart local v14    # "commentURL":Ljava/lang/String;
    .restart local v29    # "value":Ljava/lang/String;
    .restart local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_14e
    move v7, v0

    :goto_14f
    move-object/from16 v29, v1

    move-object/from16 v31, v2

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    goto :goto_196

    .line 148
    .end local v13    # "comment":Ljava/lang/String;
    .end local v14    # "commentURL":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    .end local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "value":Ljava/lang/String;
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "comment":Ljava/lang/String;
    .restart local v28    # "commentURL":Ljava/lang/String;
    :cond_158
    const-string v0, "Version"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_14f

    .line 150
    :cond_165
    const-string v0, "Port"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 151
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, "portList":[Ljava/lang/String;
    move-object v14, v13

    move-object/from16 v29, v1

    .end local v1    # "value":Ljava/lang/String;
    .local v14, "arr$":[Ljava/lang/String;
    .restart local v29    # "value":Ljava/lang/String;
    array-length v1, v14

    const/4 v0, 0x0

    .local v0, "i$":I
    .local v1, "len$":I
    :goto_178
    move/from16 v30, v0

    move-object/from16 v31, v2

    move/from16 v2, v30

    .end local v0    # "i$":I
    .local v2, "i$":I
    .restart local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ge v2, v1, :cond_192

    aget-object v0, v14, v2

    move-object/from16 v17, v0

    .line 154
    .local v17, "s1":Ljava/lang/String;
    :try_start_184
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18b
    .catch Ljava/lang/NumberFormatException; {:try_start_184 .. :try_end_18b} :catch_18c

    .line 157
    goto :goto_18d

    .line 155
    :catch_18c
    move-exception v0

    .line 152
    .end local v17    # "s1":Ljava/lang/String;
    :goto_18d
    add-int/lit8 v0, v2, 0x1

    move-object/from16 v2, v31

    goto :goto_178

    .line 114
    .end local v13    # "portList":[Ljava/lang/String;
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    .end local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "value":Ljava/lang/String;
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_192
    :goto_192
    move-object/from16 v13, v27

    move-object/from16 v14, v28

    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "comment":Ljava/lang/String;
    .end local v28    # "commentURL":Ljava/lang/String;
    .local v13, "comment":Ljava/lang/String;
    .local v14, "commentURL":Ljava/lang/String;
    .restart local v29    # "value":Ljava/lang/String;
    .restart local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_196
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move-object/from16 v1, v22

    move-object/from16 v19, v29

    move-object/from16 v2, v31

    goto/16 :goto_88

    .line 164
    .end local v5    # "j":I
    .end local v13    # "comment":Ljava/lang/String;
    .end local v14    # "commentURL":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    .end local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "value":Ljava/lang/String;
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "comment":Ljava/lang/String;
    .restart local v28    # "commentURL":Ljava/lang/String;
    :cond_1a6
    move-object/from16 v29, v1

    move-object/from16 v31, v2

    move-object/from16 v18, v6

    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "value":Ljava/lang/String;
    .restart local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1b7

    .end local v6    # "name":Ljava/lang/String;
    .end local v22    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "comment":Ljava/lang/String;
    .end local v28    # "commentURL":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    .end local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "comment":Ljava/lang/String;
    .restart local v14    # "commentURL":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_1ad
    move-object/from16 v22, v1

    move-object/from16 v31, v2

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v29, v19

    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "comment":Ljava/lang/String;
    .end local v14    # "commentURL":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    .restart local v22    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "comment":Ljava/lang/String;
    .restart local v28    # "commentURL":Ljava/lang/String;
    .restart local v29    # "value":Ljava/lang/String;
    .restart local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1b7
    invoke-interface {v9, v8}, Lorg/jboss/netty/handler/codec/http/Cookie;->setVersion(I)V

    .line 165
    invoke-interface {v9, v7}, Lorg/jboss/netty/handler/codec/http/Cookie;->setMaxAge(I)V

    .line 166
    invoke-interface {v9, v4}, Lorg/jboss/netty/handler/codec/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 167
    invoke-interface {v9, v15}, Lorg/jboss/netty/handler/codec/http/Cookie;->setDomain(Ljava/lang/String;)V

    .line 168
    invoke-interface {v9, v11}, Lorg/jboss/netty/handler/codec/http/Cookie;->setSecure(Z)V

    .line 169
    invoke-interface {v9, v12}, Lorg/jboss/netty/handler/codec/http/Cookie;->setHttpOnly(Z)V

    .line 170
    if-lez v8, :cond_1d1

    .line 171
    move-object/from16 v13, v27

    .end local v27    # "comment":Ljava/lang/String;
    .restart local v13    # "comment":Ljava/lang/String;
    invoke-interface {v9, v13}, Lorg/jboss/netty/handler/codec/http/Cookie;->setComment(Ljava/lang/String;)V

    goto :goto_1d3

    .line 173
    .end local v13    # "comment":Ljava/lang/String;
    .restart local v27    # "comment":Ljava/lang/String;
    :cond_1d1
    move-object/from16 v13, v27

    .end local v27    # "comment":Ljava/lang/String;
    .restart local v13    # "comment":Ljava/lang/String;
    :goto_1d3
    const/4 v0, 0x1

    if-le v8, v0, :cond_1e2

    .line 174
    move-object/from16 v14, v28

    .end local v28    # "commentURL":Ljava/lang/String;
    .restart local v14    # "commentURL":Ljava/lang/String;
    invoke-interface {v9, v14}, Lorg/jboss/netty/handler/codec/http/Cookie;->setCommentUrl(Ljava/lang/String;)V

    .line 175
    invoke-interface {v9, v3}, Lorg/jboss/netty/handler/codec/http/Cookie;->setPorts(Ljava/lang/Iterable;)V

    .line 176
    invoke-interface {v9, v10}, Lorg/jboss/netty/handler/codec/http/Cookie;->setDiscard(Z)V

    goto :goto_1e4

    .line 179
    .end local v14    # "commentURL":Ljava/lang/String;
    .restart local v28    # "commentURL":Ljava/lang/String;
    :cond_1e2
    move-object/from16 v14, v28

    .end local v28    # "commentURL":Ljava/lang/String;
    .restart local v14    # "commentURL":Ljava/lang/String;
    :goto_1e4
    move-object/from16 v1, v20

    .end local v20    # "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    .local v1, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v3    # "ports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "maxAge":I
    .end local v9    # "c":Lorg/jboss/netty/handler/codec/http/Cookie;
    .end local v10    # "discard":Z
    .end local v11    # "secure":Z
    .end local v12    # "httpOnly":Z
    .end local v13    # "comment":Ljava/lang/String;
    .end local v14    # "commentURL":Ljava/lang/String;
    .end local v15    # "domain":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    add-int/lit8 v0, v16, 0x1

    .line 94
    move-object v6, v1

    move v4, v8

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    move-object/from16 v3, p1

    const/4 v5, 0x0

    goto/16 :goto_4f

    .line 182
    .end local v8    # "version":I
    .end local v16    # "i":I
    .end local v22    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "i":I
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "version":I
    .local v6, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    :cond_1f6
    move-object/from16 v22, v1

    move-object/from16 v31, v2

    move-object v1, v6

    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    .local v1, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    .restart local v22    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v1
.end method
