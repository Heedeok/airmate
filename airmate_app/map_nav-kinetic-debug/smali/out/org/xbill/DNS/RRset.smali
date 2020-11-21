.class public Lorg/xbill/DNS/RRset;
.super Ljava/lang/Object;
.source "RRset.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d62426723a14d0fL


# instance fields
.field private nsigs:S

.field private position:S

.field private rrs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    .line 34
    iput-short v0, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/RRset;)V
    .registers 3
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    monitor-enter p1

    .line 48
    :try_start_4
    iget-object v0, p1, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    .line 49
    iget-short v0, p1, Lorg/xbill/DNS/RRset;->nsigs:S

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    .line 50
    iget-short v0, p1, Lorg/xbill/DNS/RRset;->position:S

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 51
    monitor-exit p1

    .line 52
    return-void

    .line 51
    :catchall_1a
    move-exception v0

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Record;)V
    .registers 2
    .param p1, "record"    # Lorg/xbill/DNS/Record;

    .line 40
    invoke-direct {p0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;->safeAddRR(Lorg/xbill/DNS/Record;)V

    .line 42
    return-void
.end method

.method private declared-synchronized iterator(ZZ)Ljava/util/Iterator;
    .registers 9
    .param p1, "data"    # Z
    .param p2, "cycle"    # Z

    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    .local v0, "total":I
    if-eqz p1, :cond_e

    .line 119
    iget-short v1, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    sub-int v1, v0, v1

    goto :goto_10

    .line 121
    :cond_e
    iget-short v1, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    .line 122
    .local v1, "size":I
    :goto_10
    if-nez v1, :cond_1a

    .line 123
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_5e

    monitor-exit p0

    return-object v2

    .line 125
    :cond_1a
    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    .line 126
    if-nez p2, :cond_21

    .line 127
    const/4 v3, 0x0

    goto :goto_33

    .line 129
    :cond_21
    :try_start_21
    iget-short v3, p0, Lorg/xbill/DNS/RRset;->position:S

    if-lt v3, v1, :cond_27

    .line 130
    iput-short v2, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 131
    :cond_27
    iget-short v3, p0, Lorg/xbill/DNS/RRset;->position:S

    add-int/lit8 v4, v3, 0x1

    int-to-short v4, v4

    iput-short v4, p0, Lorg/xbill/DNS/RRset;->position:S

    goto :goto_33

    .line 134
    :cond_2f
    iget-short v3, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    sub-int v3, v0, v3

    .line 137
    .local v3, "start":I
    :goto_33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v4, "list":Ljava/util/List;
    if-eqz p1, :cond_4f

    .line 139
    iget-object v5, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v5, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    if-eqz v3, :cond_58

    .line 141
    iget-object v5, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v5, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_58

    .line 143
    :cond_4f
    iget-object v2, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    :cond_58
    :goto_58
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_5c
    .catchall {:try_start_21 .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-object v2

    .line 115
    .end local v0    # "total":I
    .end local v1    # "size":I
    .end local v3    # "start":I
    .end local v4    # "list":Ljava/util/List;
    .end local p1    # "data":Z
    .end local p2    # "cycle":Z
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private iteratorToString(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 5
    .param p1, "it"    # Ljava/util/Iterator;

    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 227
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 228
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 229
    .local v1, "rr":Lorg/xbill/DNS/Record;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->rdataToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 233
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    .end local v1    # "rr":Lorg/xbill/DNS/Record;
    :cond_2d
    goto :goto_5

    .line 235
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private safeAddRR(Lorg/xbill/DNS/Record;)V
    .registers 5
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .line 56
    instance-of v0, p1, Lorg/xbill/DNS/RRSIGRecord;

    if-nez v0, :cond_1d

    .line 57
    iget-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    if-nez v0, :cond_e

    .line 58
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 60
    :cond_e
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-short v2, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_29

    .line 62
    :cond_1d
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    .line 65
    :goto_29
    return-void
.end method


# virtual methods
.method public declared-synchronized addRR(Lorg/xbill/DNS/Record;)V
    .registers 8
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 71
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;->safeAddRR(Lorg/xbill/DNS/Record;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_77

    .line 72
    monitor-exit p0

    return-void

    .line 74
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 75
    .local v0, "first":Lorg/xbill/DNS/Record;
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 79
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_62

    .line 80
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_3d

    .line 81
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    move-object p1, v1

    .line 82
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/xbill/DNS/Record;->setTTL(J)V

    goto :goto_62

    .line 84
    :cond_3d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    iget-object v2, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 85
    iget-object v2, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 86
    .local v2, "tmp":Lorg/xbill/DNS/Record;
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v3

    move-object v2, v3

    .line 87
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/xbill/DNS/Record;->setTTL(J)V

    .line 88
    iget-object v3, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v2    # "tmp":Lorg/xbill/DNS/Record;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 93
    .end local v1    # "i":I
    :cond_62
    :goto_62
    iget-object v1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 94
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;->safeAddRR(Lorg/xbill/DNS/Record;)V
    :try_end_6d
    .catchall {:try_start_e .. :try_end_6d} :catchall_77

    .line 95
    :cond_6d
    monitor-exit p0

    return-void

    .line 76
    :cond_6f
    :try_start_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "record does not match rrset"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_77

    .line 69
    .end local v0    # "first":Lorg/xbill/DNS/Record;
    .end local p1    # "r":Lorg/xbill/DNS/Record;
    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 109
    iput-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 110
    monitor-exit p0

    return-void

    .line 106
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteRR(Lorg/xbill/DNS/Record;)V
    .registers 3
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    instance-of v0, p1, Lorg/xbill/DNS/RRSIGRecord;

    if-eqz v0, :cond_14

    .line 101
    iget-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 102
    :cond_14
    monitor-exit p0

    return-void

    .line 99
    .end local p1    # "r":Lorg/xbill/DNS/Record;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized first()Lorg/xbill/DNS/Record;
    .registers 3

    monitor-enter p0

    .line 219
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_14

    .line 221
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 220
    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rrset is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    .line 218
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDClass()I
    .registers 2

    .line 204
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    return v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .registers 2

    .line 186
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTTL()J
    .registers 3

    monitor-enter p0

    .line 210
    :try_start_1
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .registers 2

    .line 195
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    return v0
.end method

.method public declared-synchronized rrs()Ljava/util/Iterator;
    .registers 2

    monitor-enter p0

    .line 165
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0, v0}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rrs(Z)Ljava/util/Iterator;
    .registers 3
    .param p1, "cycle"    # Z

    monitor-enter p0

    .line 156
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .end local p1    # "cycle":Z
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sigs()Ljava/util/Iterator;
    .registers 2

    monitor-enter p0

    .line 171
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0, v0}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 3

    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-short v1, p0, Lorg/xbill/DNS/RRset;->nsigs:S
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 241
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    if-nez v0, :cond_7

    .line 242
    const-string v0, "{empty}"

    return-object v0

    .line 243
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/RRset;->iteratorToString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    iget-short v1, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    if-lez v1, :cond_9a

    .line 251
    const-string v1, " sigs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-direct {p0, v2, v2}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/RRset;->iteratorToString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    :cond_9a
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
