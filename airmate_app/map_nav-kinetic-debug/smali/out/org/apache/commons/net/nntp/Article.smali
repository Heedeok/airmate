.class public Lorg/apache/commons/net/nntp/Article;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Lorg/apache/commons/net/nntp/Threadable;


# instance fields
.field private articleId:Ljava/lang/String;

.field private articleNumber:I

.field private date:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private header:Ljava/lang/StringBuffer;

.field private isReply:Z

.field public kid:Lorg/apache/commons/net/nntp/Article;

.field public next:Lorg/apache/commons/net/nntp/Article;

.field private references:Ljava/lang/StringBuffer;

.field private simplifiedSubject:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->header:Ljava/lang/StringBuffer;

    .line 44
    return-void
.end method

.method private flushSubjectCache()V
    .registers 2

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public static printThread(Lorg/apache/commons/net/nntp/Article;I)V
    .registers 5
    .param p0, "article"    # Lorg/apache/commons/net/nntp/Article;
    .param p1, "depth"    # I

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_d

    .line 159
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "==>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "i":I
    :cond_d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    if-eqz v0, :cond_39

    .line 162
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;I)V

    .line 163
    :cond_39
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    if-eqz v0, :cond_42

    .line 164
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    invoke-static {v0, p1}, Lorg/apache/commons/net/nntp/Article;->printThread(Lorg/apache/commons/net/nntp/Article;I)V

    .line 165
    :cond_42
    return-void
.end method

.method private simplifySubject()V
    .registers 11

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "start":I
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "subject":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 97
    .local v2, "len":I
    const/4 v3, 0x0

    .line 99
    .local v3, "done":Z
    :goto_a
    if-nez v3, :cond_ca

    .line 100
    const/4 v3, 0x1

    .line 104
    :goto_d
    const/16 v4, 0x20

    if-ge v0, v2, :cond_1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1a

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 108
    :cond_1a
    add-int/lit8 v5, v2, -0x2

    if-ge v0, v5, :cond_a3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_a3

    :cond_2e
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_42

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_a3

    .line 112
    :cond_42
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    const/4 v7, 0x1

    if-ne v5, v6, :cond_53

    .line 113
    add-int/lit8 v0, v0, 0x3

    .line 114
    iput-boolean v7, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    .line 115
    const/4 v3, 0x0

    goto :goto_a3

    .line 116
    :cond_53
    add-int/lit8 v5, v2, -0x2

    if-ge v0, v5, :cond_a3

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5b

    if-eq v5, v8, :cond_6b

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x28

    if-ne v5, v8, :cond_a3

    .line 121
    :cond_6b
    add-int/lit8 v5, v0, 0x3

    .line 123
    .local v5, "i":I
    :goto_6d
    if-ge v5, v2, :cond_82

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_82

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_82

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 126
    :cond_82
    add-int/lit8 v8, v2, -0x1

    if-ge v5, v8, :cond_a3

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5d

    if-eq v8, v9, :cond_96

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x29

    if-ne v8, v9, :cond_a3

    :cond_96
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_a3

    .line 129
    add-int/lit8 v0, v5, 0x2

    .line 130
    iput-boolean v7, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    .line 131
    const/4 v3, 0x0

    .line 136
    .end local v5    # "i":I
    :cond_a3
    :goto_a3
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    const-string v6, "(no subject)"

    if-ne v5, v6, :cond_ad

    .line 137
    const-string v5, ""

    iput-object v5, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 139
    :cond_ad
    move v5, v2

    .line 141
    .local v5, "end":I
    :goto_ae
    if-le v5, v0, :cond_bb

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ge v6, v4, :cond_bb

    .line 142
    add-int/lit8 v5, v5, -0x1

    goto :goto_ae

    .line 144
    :cond_bb
    if-nez v0, :cond_c2

    if-ne v5, v2, :cond_c2

    .line 145
    iput-object v1, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    goto :goto_c8

    .line 147
    :cond_c2
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    .line 148
    .end local v5    # "end":I
    :goto_c8
    goto/16 :goto_a

    .line 149
    :cond_ca
    return-void
.end method


# virtual methods
.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->header:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->header:Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->header:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->header:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    return-void
.end method

.method public addReference(Ljava/lang/String;)V
    .registers 4
    .param p1, "msgId"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/lang/StringBuffer;

    if-nez v0, :cond_12

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/lang/StringBuffer;

    .line 65
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/lang/StringBuffer;

    const-string v1, "References: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_12
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/lang/StringBuffer;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    return-void
.end method

.method public getArticleId()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleNumber()I
    .registers 2

    .line 172
    iget v0, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getReferences()[Ljava/lang/String;
    .registers 6

    .line 76
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 78
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 80
    .local v1, "terminator":I
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lorg/apache/commons/net/nntp/Article;->references:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\t"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_26
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 83
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 85
    :cond_34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public isDummy()Z
    .registers 2

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public makeDummy()Lorg/apache/commons/net/nntp/Threadable;
    .registers 2

    .line 251
    new-instance v0, Lorg/apache/commons/net/nntp/Article;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/Article;-><init>()V

    return-object v0
.end method

.method public messageThreadId()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public messageThreadReferences()[Ljava/lang/String;
    .registers 2

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/Article;->getReferences()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->articleId:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setArticleNumber(I)V
    .registers 2
    .param p1, "i"    # I

    .line 192
    iput p1, p0, Lorg/apache/commons/net/nntp/Article;->articleNumber:I

    .line 193
    return-void
.end method

.method public setChild(Lorg/apache/commons/net/nntp/Threadable;)V
    .registers 3
    .param p1, "child"    # Lorg/apache/commons/net/nntp/Threadable;

    .line 235
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/net/nntp/Article;

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->kid:Lorg/apache/commons/net/nntp/Article;

    .line 236
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->flushSubjectCache()V

    .line 237
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->date:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->from:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setNext(Lorg/apache/commons/net/nntp/Threadable;)V
    .registers 3
    .param p1, "next"    # Lorg/apache/commons/net/nntp/Threadable;

    .line 245
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/net/nntp/Article;

    iput-object v0, p0, Lorg/apache/commons/net/nntp/Article;->next:Lorg/apache/commons/net/nntp/Article;

    .line 246
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->flushSubjectCache()V

    .line 247
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lorg/apache/commons/net/nntp/Article;->subject:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public simplifiedSubject()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 222
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->simplifySubject()V

    .line 223
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    return-object v0
.end method

.method public subjectIsReply()Z
    .registers 2

    .line 228
    iget-object v0, p0, Lorg/apache/commons/net/nntp/Article;->simplifiedSubject:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 229
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Article;->simplifySubject()V

    .line 230
    :cond_7
    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/Article;->isReply:Z

    return v0
.end method
