.class public abstract Ljavax/jmdns/impl/DNSMessage;
.super Ljava/lang/Object;
.source "DNSMessage.java"


# static fields
.field public static final MULTICAST:Z = true

.field public static final UNICAST:Z = false


# instance fields
.field protected final _additionals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final _answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final _authoritativeAnswers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation
.end field

.field private _flags:I

.field private _id:I

.field _multicast:Z

.field protected final _questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/DNSQuestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IIZ)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "id"    # I
    .param p3, "multicast"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    .line 58
    iput p2, p0, Ljavax/jmdns/impl/DNSMessage;->_id:I

    .line 59
    iput-boolean p3, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    .line 64
    return-void
.end method


# virtual methods
.method public getAdditionals()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    return-object v0
.end method

.method public getAllAnswers()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v0, "aList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSRecord;>;"
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    return-object v0
.end method

.method public getAnswers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .line 102
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 87
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_id:I

    :goto_8
    return v0
.end method

.method public getNumberOfAdditionals()I
    .registers 2

    .line 181
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getAdditionals()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfAnswers()I
    .registers 2

    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getAnswers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfAuthorities()I
    .registers 2

    .line 167
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getAuthorities()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfQuestions()I
    .registers 2

    .line 131
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getQuestions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getQuestions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSQuestion;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 217
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public isMulticast()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    return v0
.end method

.method public isQuery()Z
    .registers 3

    .line 199
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isResponse()Z
    .registers 3

    .line 208
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTruncated()Z
    .registers 2

    .line 190
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method print()Ljava/lang/String;
    .registers 5

    .line 224
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 225
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSQuestion;

    .line 228
    .local v2, "question":Ljavax/jmdns/impl/DNSQuestion;
    const-string v3, "\tquestion:      "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 230
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    .end local v2    # "question":Ljavax/jmdns/impl/DNSQuestion;
    goto :goto_19

    .line 232
    :cond_33
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 233
    .local v2, "answer":Ljavax/jmdns/impl/DNSRecord;
    const-string v3, "\tanswer:        "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 235
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    .end local v2    # "answer":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_39

    .line 237
    :cond_53
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 238
    .restart local v2    # "answer":Ljavax/jmdns/impl/DNSRecord;
    const-string v3, "\tauthoritative: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 240
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    .end local v2    # "answer":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_59

    .line 242
    :cond_73
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 243
    .restart local v2    # "answer":Ljavax/jmdns/impl/DNSRecord;
    const-string v3, "\tadditional:    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 245
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    .end local v2    # "answer":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_79

    .line 247
    :cond_93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected print([B)Ljava/lang/String;
    .registers 10
    .param p1, "data"    # [B

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xfa0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "off":I
    array-length v2, p1

    .local v2, "len":I
    :goto_9
    if-ge v1, v2, :cond_ae

    .line 259
    sub-int v3, v2, v1

    const/16 v4, 0x20

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 260
    .local v3, "n":I
    const/16 v5, 0x10

    if-ge v1, v5, :cond_1a

    .line 261
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :cond_1a
    const/16 v5, 0x100

    if-ge v1, v5, :cond_21

    .line 264
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_21
    const/16 v5, 0x1000

    if-ge v1, v5, :cond_28

    .line 267
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    :cond_28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    const/4 v5, 0x0

    .line 272
    .local v5, "index":I
    const/4 v5, 0x0

    :goto_36
    if-ge v5, v3, :cond_60

    .line 273
    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_3f

    .line 274
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    :cond_3f
    add-int v6, v1, v5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int v6, v1, v5

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0xf

    shr-int/lit8 v6, v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 280
    :cond_60
    if-ge v5, v4, :cond_74

    .line 281
    move v6, v5

    .local v6, "i":I
    :goto_63
    if-ge v6, v4, :cond_74

    .line 282
    rem-int/lit8 v7, v6, 0x8

    if-nez v7, :cond_6c

    .line 283
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_6c
    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    .line 288
    .end local v6    # "i":I
    :cond_74
    const-string v6, "    "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const/4 v5, 0x0

    :goto_7a
    if-ge v5, v3, :cond_99

    .line 290
    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_83

    .line 291
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    :cond_83
    add-int v6, v1, v5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    .line 294
    .local v6, "ch":I
    if-le v6, v4, :cond_91

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_91

    int-to-char v7, v6

    goto :goto_93

    :cond_91
    const/16 v7, 0x2e

    :goto_93
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    .end local v6    # "ch":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 296
    :cond_99
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    add-int/lit8 v4, v1, 0x20

    const/16 v6, 0x800

    if-lt v4, v6, :cond_aa

    .line 300
    const-string v4, "....\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    goto :goto_ae

    .line 258
    .end local v3    # "n":I
    .end local v5    # "index":I
    :cond_aa
    add-int/lit8 v1, v1, 0x20

    goto/16 :goto_9

    .line 304
    .end local v1    # "off":I
    .end local v2    # "len":I
    :cond_ae
    :goto_ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 110
    iput p1, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    .line 111
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 95
    iput p1, p0, Ljavax/jmdns/impl/DNSMessage;->_id:I

    .line 96
    return-void
.end method
