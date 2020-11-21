.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "Threader.java"


# instance fields
.field private bogusIdCount:I

.field private idTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lorg/apache/commons/net/nntp/ThreadContainer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;)V
    .registers 10
    .param p1, "threadable"    # Lorg/apache/commons/net/nntp/Threadable;

    .line 85
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 90
    .local v1, "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-eqz v1, :cond_32

    .line 91
    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v2, :cond_30

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Bogus-id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    goto :goto_32

    .line 97
    :cond_30
    iput-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 102
    :cond_32
    :goto_32
    if-nez v1, :cond_41

    .line 103
    new-instance v2, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v2}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    move-object v1, v2

    .line 104
    iput-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 105
    iget-object v2, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_41
    const/4 v2, 0x0

    .line 112
    .local v2, "parentRef":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "references":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    array-length v5, v3

    if-ge v4, v5, :cond_7b

    .line 114
    aget-object v5, v3, v4

    .line 115
    .local v5, "refString":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 118
    .local v6, "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-nez v6, :cond_61

    .line 119
    new-instance v7, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v7}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    move-object v6, v7

    .line 120
    iget-object v7, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_61
    if-eqz v2, :cond_77

    iget-object v7, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v7, :cond_77

    if-eq v2, v6, :cond_77

    invoke-virtual {v2, v6}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v7

    if-nez v7, :cond_77

    .line 131
    iput-object v2, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 132
    iget-object v7, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 133
    iput-object v6, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 135
    :cond_77
    move-object v2, v6

    .line 113
    .end local v5    # "refString":Ljava/lang/String;
    .end local v6    # "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 141
    .end local v3    # "references":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_7b
    if-eqz v2, :cond_86

    if-eq v2, v1, :cond_85

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 143
    :cond_85
    const/4 v2, 0x0

    .line 148
    :cond_86
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v3, :cond_ce

    .line 151
    const/4 v3, 0x0

    .local v3, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v4, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 152
    .local v4, "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_8f
    if-eqz v4, :cond_98

    .line 154
    if-ne v4, v1, :cond_94

    .line 155
    goto :goto_98

    .line 153
    :cond_94
    move-object v3, v4

    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_8f

    .line 158
    :cond_98
    :goto_98
    if-eqz v4, :cond_ad

    .line 167
    if-nez v3, :cond_a3

    .line 168
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a7

    .line 170
    :cond_a3
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 172
    :goto_a7
    const/4 v5, 0x0

    iput-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 173
    iput-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_ce

    .line 159
    :cond_ad
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Didnt find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in parent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    .end local v3    # "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v4    # "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_ce
    :goto_ce
    if-eqz v2, :cond_d8

    .line 178
    iput-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 179
    iget-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 180
    iput-object v1, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 182
    :cond_d8
    return-void
.end method

.method private findRootSet()Lorg/apache/commons/net/nntp/ThreadContainer;
    .registers 8

    .line 189
    new-instance v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 190
    .local v0, "root":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 195
    .local v3, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_4d

    .line 196
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_30

    .line 199
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 200
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_4d

    .line 197
    :cond_30
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c.next is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_4d
    :goto_4d
    goto :goto_f

    .line 203
    :cond_4e
    return-object v0
.end method

.method private gatherSubjects()V
    .registers 12

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v1, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_5
    if-eqz v1, :cond_c

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 274
    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    .line 278
    .end local v1    # "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_c
    new-instance v1, Ljava/util/HashMap;

    int-to-double v2, v0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 279
    .local v1, "subjectTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;"
    const/4 v0, 0x0

    .line 281
    iget-object v2, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v2, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_25
    if-eqz v2, :cond_6a

    .line 282
    iget-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 287
    .local v3, "threadable":Lorg/apache/commons/net/nntp/Threadable;
    if-nez v3, :cond_2f

    .line 288
    iget-object v4, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v3, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 290
    :cond_2f
    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "subj":Ljava/lang/String;
    if-eqz v4, :cond_67

    const-string v5, ""

    if-ne v4, v5, :cond_3a

    .line 293
    goto :goto_67

    .line 295
    :cond_3a
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 304
    .local v5, "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-eqz v5, :cond_62

    iget-object v6, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v6, :cond_4a

    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v6, :cond_62

    :cond_4a
    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v6, :cond_67

    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-eqz v6, :cond_67

    iget-object v6, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v6, :cond_67

    iget-object v6, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-nez v6, :cond_67

    .line 310
    :cond_62
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 281
    .end local v3    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    .end local v4    # "subj":Ljava/lang/String;
    .end local v5    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_67
    :goto_67
    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_25

    .line 316
    .end local v2    # "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_6a
    if-nez v0, :cond_6d

    .line 317
    return-void

    .line 322
    :cond_6d
    const/4 v2, 0x0

    .local v2, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v3, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v3, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v3, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 323
    .local v4, "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_74
    if-eqz v3, :cond_116

    .line 325
    iget-object v5, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 328
    .local v5, "threadable":Lorg/apache/commons/net/nntp/Threadable;
    if-nez v5, :cond_7e

    .line 329
    iget-object v6, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 331
    :cond_7e
    invoke-interface {v5}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "subj":Ljava/lang/String;
    const/4 v7, 0x0

    if-eqz v6, :cond_10c

    const-string v8, ""

    if-ne v6, v8, :cond_8b

    .line 335
    goto/16 :goto_10c

    .line 337
    :cond_8b
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 339
    .local v8, "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-ne v8, v3, :cond_95

    .line 340
    goto/16 :goto_10c

    .line 344
    :cond_95
    if-nez v2, :cond_9e

    .line 345
    iget-object v9, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a2

    .line 347
    :cond_9e
    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 348
    :goto_a2
    iput-object v7, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 350
    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v9, :cond_c7

    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v9, :cond_c7

    .line 353
    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 354
    .local v9, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_ae
    if-eqz v9, :cond_b7

    iget-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v10, :cond_b7

    .line 355
    iget-object v9, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_ae

    .line 357
    :cond_b7
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 359
    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_bd
    if-eqz v9, :cond_c4

    .line 360
    iput-object v8, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 359
    iget-object v9, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_bd

    .line 362
    :cond_c4
    iput-object v7, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 363
    .end local v9    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    goto :goto_10b

    :cond_c7
    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v9, :cond_103

    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v9, :cond_e0

    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v9

    if-eqz v9, :cond_e0

    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v9

    if-nez v9, :cond_e0

    goto :goto_103

    .line 375
    :cond_e0
    new-instance v9, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v9}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 376
    .local v9, "newc":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v10, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 377
    iget-object v10, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 379
    iget-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 380
    .local v10, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_ef
    if-eqz v10, :cond_f6

    .line 382
    iput-object v9, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 381
    iget-object v10, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_ef

    .line 384
    .end local v10    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_f6
    iput-object v7, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 385
    iput-object v7, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 387
    iput-object v8, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 388
    iput-object v8, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 391
    iput-object v3, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 392
    iput-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_10b

    .line 369
    .end local v9    # "newc":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_103
    :goto_103
    iput-object v8, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 370
    iget-object v9, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 371
    iput-object v3, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 395
    :goto_10b
    move-object v3, v2

    .line 324
    .end local v5    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    .end local v6    # "subj":Ljava/lang/String;
    .end local v8    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_10c
    :goto_10c
    move-object v2, v3

    move-object v3, v4

    if-nez v4, :cond_111

    goto :goto_113

    :cond_111
    iget-object v7, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_113
    move-object v4, v7

    goto/16 :goto_74

    .line 398
    :cond_116
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 399
    const/4 v1, 0x0

    .line 401
    return-void
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .registers 8
    .param p1, "parent"    # Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 212
    const/4 v0, 0x0

    .local v0, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v1, "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 213
    .local v2, "next":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_5
    if-eqz v1, :cond_5f

    .line 219
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v3, :cond_1c

    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_1c

    .line 220
    if-nez v0, :cond_16

    .line 221
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v3, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1a

    .line 223
    :cond_16
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 226
    :goto_1a
    move-object v1, v0

    goto :goto_55

    .line 230
    :cond_1c
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v3, :cond_4e

    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v3, :cond_4e

    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_2e

    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v3, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_4e

    .line 237
    :cond_2e
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 240
    .local v3, "kids":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-nez v0, :cond_35

    .line 241
    iput-object v3, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_37

    .line 243
    :cond_35
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 247
    :goto_37
    move-object v4, v3

    .local v4, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_38
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_43

    .line 248
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 247
    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_38

    .line 250
    :cond_43
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 251
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 255
    move-object v2, v3

    .line 258
    move-object v1, v0

    .line 259
    .end local v3    # "kids":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v4    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    goto :goto_55

    :cond_4e
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v3, :cond_55

    .line 262
    invoke-direct {p0, v1}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    .line 214
    :cond_55
    :goto_55
    move-object v0, v1

    .line 215
    move-object v1, v2

    .line 216
    if-nez v1, :cond_5b

    const/4 v3, 0x0

    goto :goto_5d

    :cond_5b
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_5d
    move-object v2, v3

    goto :goto_5

    .line 265
    :cond_5f
    return-void
.end method


# virtual methods
.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .registers 5
    .param p1, "messages"    # [Lorg/apache/commons/net/nntp/Threadable;

    .line 45
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 46
    return-object v0

    .line 48
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_1f

    .line 52
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 53
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;)V

    .line 51
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 56
    .end local v1    # "i":I
    :cond_1f
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Threader;->findRootSet()Lorg/apache/commons/net/nntp/ThreadContainer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 57
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 58
    iput-object v0, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    .line 60
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {p0, v1}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    .line 62
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    .line 63
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects()V

    .line 65
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v1, :cond_6c

    .line 68
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v1, "r":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_43
    if-eqz v1, :cond_56

    .line 69
    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v2, :cond_53

    .line 70
    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 68
    :cond_53
    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_43

    .line 73
    .end local v1    # "r":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_56
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v1, :cond_5e

    move-object v1, v0

    goto :goto_64

    :cond_5e
    iget-object v1, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 74
    .local v1, "result":Lorg/apache/commons/net/nntp/Threadable;
    :goto_64
    iget-object v2, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v2}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    .line 75
    iput-object v0, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 77
    return-object v1

    .line 66
    .end local v1    # "result":Lorg/apache/commons/net/nntp/Threadable;
    :cond_6c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "root node has a next:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
