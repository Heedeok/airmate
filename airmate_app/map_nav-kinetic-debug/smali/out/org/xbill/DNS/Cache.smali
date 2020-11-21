.class public Lorg/xbill/DNS/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Cache$CacheMap;,
        Lorg/xbill/DNS/Cache$NegativeElement;,
        Lorg/xbill/DNS/Cache$CacheRRset;,
        Lorg/xbill/DNS/Cache$Element;
    }
.end annotation


# static fields
.field private static final defaultMaxEntries:I = 0xc350


# instance fields
.field private data:Lorg/xbill/DNS/Cache$CacheMap;

.field private dclass:I

.field private maxcache:I

.field private maxncache:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 182
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "dclass"    # I

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 171
    iput p1, p0, Lorg/xbill/DNS/Cache;->dclass:I

    .line 172
    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 189
    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 190
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "m":Lorg/xbill/DNS/Master;
    :goto_17
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    move-object v2, v1

    .local v2, "record":Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_23

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lorg/xbill/DNS/Cache;->addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V

    goto :goto_17

    .line 194
    :cond_23
    return-void
.end method

.method static synthetic access$000(JJ)I
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 20
    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->limitExpire(JJ)I

    move-result v0

    return v0
.end method

.method private declared-synchronized addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    .registers 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "element"    # Lorg/xbill/DNS/Cache$Element;

    monitor-enter p0

    .line 259
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_10

    .line 261
    iget-object v1, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v1, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_5b

    .line 262
    monitor-exit p0

    return-void

    .line 264
    :cond_10
    :try_start_10
    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    .line 265
    .local v1, "type":I
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3a

    .line 266
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 267
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 268
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Cache$Element;

    .line 269
    .local v4, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v4}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v5

    if-ne v5, v1, :cond_33

    .line 270
    invoke-interface {v2, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_5b

    .line 271
    monitor-exit p0

    return-void

    .line 267
    .end local v4    # "elt":Lorg/xbill/DNS/Cache$Element;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 274
    .end local v3    # "i":I
    :cond_36
    :try_start_36
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v2    # "list":Ljava/util/List;
    goto :goto_59

    .line 276
    :cond_3a
    move-object v2, v0

    check-cast v2, Lorg/xbill/DNS/Cache$Element;

    .line 277
    .local v2, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v3

    if-ne v3, v1, :cond_49

    .line 278
    iget-object v3, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v3, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    .line 280
    :cond_49
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 281
    .local v3, "list":Ljava/util/LinkedList;
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v4, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v4, p1, v3}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_5b

    .line 286
    .end local v2    # "elt":Lorg/xbill/DNS/Cache$Element;
    .end local v3    # "list":Ljava/util/LinkedList;
    :goto_59
    monitor-exit p0

    return-void

    .line 258
    .end local v0    # "types":Ljava/lang/Object;
    .end local v1    # "type":I
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "element":Lorg/xbill/DNS/Cache$Element;
    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;
    .registers 5
    .param p1, "types"    # Ljava/lang/Object;

    monitor-enter p0

    .line 208
    :try_start_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_18

    .line 209
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 210
    .local v0, "typelist":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 211
    .local v1, "size":I
    new-array v2, v1, [Lorg/xbill/DNS/Cache$Element;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/xbill/DNS/Cache$Element;

    check-cast v2, [Lorg/xbill/DNS/Cache$Element;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_23

    monitor-exit p0

    return-object v2

    .line 213
    .end local v0    # "typelist":Ljava/util/List;
    .end local v1    # "size":I
    :cond_18
    :try_start_18
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 214
    .local v0, "set":Lorg/xbill/DNS/Cache$Element;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/xbill/DNS/Cache$Element;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v1

    .line 207
    .end local v0    # "set":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "types":Ljava/lang/Object;
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .end local p1    # "name":Lorg/xbill/DNS/Name;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;
    .registers 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    monitor-enter p0

    .line 251
    :try_start_1
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    .line 252
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 253
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 254
    :cond_a
    :try_start_a
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v1

    .line 250
    .end local v0    # "types":Ljava/lang/Object;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    .end local p3    # "minCred":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;
    .registers 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    .line 520
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 521
    .local v0, "cr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 522
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v1

    return-object v1

    .line 524
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getCred(IZ)I
    .registers 7
    .param p1, "section"    # I
    .param p2, "isAuth"    # Z

    .line 555
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v1, :cond_9

    .line 556
    if-eqz p2, :cond_8

    .line 557
    return v0

    .line 559
    :cond_8
    return v2

    .line 560
    :cond_9
    const/4 v3, 0x2

    if-ne p1, v3, :cond_10

    .line 561
    if-eqz p2, :cond_f

    .line 562
    return v0

    .line 564
    :cond_f
    return v2

    .line 565
    :cond_10
    if-ne p1, v2, :cond_13

    .line 566
    return v1

    .line 568
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getCred: invalid section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static limitExpire(JJ)I
    .registers 10
    .param p0, "ttl"    # J
    .param p2, "maxttl"    # J

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b

    cmp-long v2, p2, p0

    if-gez v2, :cond_b

    .line 31
    move-wide p0, p2

    .line 32
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v2, p0

    .line 33
    .local v2, "expire":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_21

    const-wide/32 v0, 0x7fffffff

    cmp-long v4, v2, v0

    if-lez v4, :cond_1f

    goto :goto_21

    .line 35
    :cond_1f
    long-to-int v0, v2

    return v0

    .line 34
    :cond_21
    :goto_21
    const v0, 0x7fffffff

    return v0
.end method

.method private static markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V
    .registers 6
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "names"    # Ljava/util/Set;

    .line 573
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 574
    .local v0, "first":Lorg/xbill/DNS/Record;
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v1

    if-nez v1, :cond_b

    .line 575
    return-void

    .line 577
    :cond_b
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    .line 578
    .local v1, "it":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 580
    .local v2, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 581
    .local v3, "name":Lorg/xbill/DNS/Name;
    if-eqz v3, :cond_24

    .line 582
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    .end local v2    # "r":Lorg/xbill/DNS/Record;
    .end local v3    # "name":Lorg/xbill/DNS/Name;
    :cond_24
    goto :goto_f

    .line 584
    :cond_25
    return-void
.end method

.method private declared-synchronized oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    .registers 10
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "types"    # Ljava/lang/Object;
    .param p3, "type"    # I
    .param p4, "minCred"    # I

    monitor-enter p0

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "found":Lorg/xbill/DNS/Cache$Element;
    const/16 v1, 0xff

    if-eq p3, v1, :cond_4a

    .line 224
    :try_start_6
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_26

    .line 225
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    .line 226
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 227
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Cache$Element;

    .line 228
    .local v3, "set":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v3}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v4

    if-ne v4, p3, :cond_22

    .line 229
    move-object v0, v3

    .line 230
    goto :goto_25

    .line 226
    .end local v3    # "set":Lorg/xbill/DNS/Cache$Element;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 233
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "i":I
    :cond_25
    :goto_25
    goto :goto_30

    .line 234
    :cond_26
    move-object v1, p2

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 235
    .local v1, "set":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v2
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_52

    if-ne v2, p3, :cond_30

    .line 236
    move-object v0, v1

    .line 238
    .end local v1    # "set":Lorg/xbill/DNS/Cache$Element;
    :cond_30
    :goto_30
    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 239
    monitor-exit p0

    return-object v1

    .line 240
    :cond_35
    :try_start_35
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 241
    invoke-direct {p0, p1, p3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_52

    .line 242
    monitor-exit p0

    return-object v1

    .line 244
    :cond_40
    :try_start_40
    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v2
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_52

    if-gez v2, :cond_48

    .line 245
    monitor-exit p0

    return-object v1

    .line 246
    :cond_48
    monitor-exit p0

    return-object v0

    .line 223
    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "oneElement(ANY)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_52

    .line 219
    .end local v0    # "found":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "types":Ljava/lang/Object;
    .end local p3    # "type":I
    .end local p4    # "minCred":I
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeElement(Lorg/xbill/DNS/Name;I)V
    .registers 8
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    monitor-enter p0

    .line 290
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4b

    .line 291
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_b

    .line 292
    monitor-exit p0

    return-void

    .line 294
    :cond_b
    :try_start_b
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_39

    .line 295
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 296
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 297
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Cache$Element;

    .line 298
    .local v3, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v3}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v4

    if-ne v4, p2, :cond_35

    .line 299
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_33

    .line 301
    iget-object v4, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v4, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_4b

    .line 302
    :cond_33
    monitor-exit p0

    return-void

    .line 296
    .end local v3    # "elt":Lorg/xbill/DNS/Cache$Element;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 305
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "i":I
    :cond_38
    goto :goto_49

    .line 306
    :cond_39
    :try_start_39
    move-object v1, v0

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 307
    .local v1, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v2
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4b

    if-eq v2, p2, :cond_44

    .line 308
    monitor-exit p0

    return-void

    .line 309
    :cond_44
    :try_start_44
    iget-object v2, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v2, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4b

    .line 311
    .end local v1    # "elt":Lorg/xbill/DNS/Cache$Element;
    :goto_49
    monitor-exit p0

    return-void

    .line 289
    .end local v0    # "types":Ljava/lang/Object;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeName(Lorg/xbill/DNS/Name;)V
    .registers 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    monitor-enter p0

    .line 203
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 204
    monitor-exit p0

    return-void

    .line 202
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;
    .registers 27
    .param p1, "in"    # Lorg/xbill/DNS/Message;

    .line 596
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v4

    .line 597
    .local v4, "isAuth":Z
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v5

    .line 603
    .local v5, "question":Lorg/xbill/DNS/Record;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v6

    .line 604
    .local v6, "rcode":I
    const/4 v0, 0x0

    .line 606
    .local v0, "completed":Z
    const/4 v7, 0x0

    .line 607
    .local v7, "response":Lorg/xbill/DNS/SetResponse;
    const-string v8, "verbosecache"

    invoke-static {v8}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v8

    .line 610
    .local v8, "verbose":Z
    const/4 v9, 0x3

    if-eqz v6, :cond_26

    if-ne v6, v9, :cond_28

    :cond_26
    if-nez v5, :cond_2a

    .line 612
    :cond_28
    const/4 v3, 0x0

    return-object v3

    .line 614
    :cond_2a
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 615
    .local v10, "qname":Lorg/xbill/DNS/Name;
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getType()I

    move-result v11

    .line 616
    .local v11, "qtype":I
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v12

    .line 618
    .local v12, "qclass":I
    move-object v13, v10

    .line 620
    .local v13, "curname":Lorg/xbill/DNS/Name;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 622
    .local v14, "additionalNames":Ljava/util/HashSet;
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v9

    .line 623
    .local v9, "answers":[Lorg/xbill/DNS/RRset;
    const/16 v16, 0x0

    move-object/from16 v17, v7

    move v7, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v7, "completed":Z
    .local v17, "response":Lorg/xbill/DNS/SetResponse;
    :goto_47
    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    array-length v0, v9

    move/from16 v3, v18

    .end local v18    # "i":I
    .local v3, "i":I
    if-ge v3, v0, :cond_119

    .line 624
    aget-object v0, v9, v3

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v0

    if-eq v0, v12, :cond_60

    .line 625
    nop

    .line 623
    move-object/from16 v19, v5

    move/from16 v21, v8

    move/from16 v22, v11

    move/from16 v20, v12

    goto :goto_a7

    .line 626
    :cond_60
    aget-object v0, v9, v3

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v15

    .line 627
    .local v15, "type":I
    aget-object v0, v9, v3

    move-object/from16 v19, v5

    .end local v5    # "question":Lorg/xbill/DNS/Record;
    .local v19, "question":Lorg/xbill/DNS/Record;
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    .line 628
    .local v5, "name":Lorg/xbill/DNS/Name;
    move/from16 v21, v8

    move/from16 v20, v12

    const/4 v12, 0x1

    .end local v8    # "verbose":Z
    .end local v12    # "qclass":I
    .local v20, "qclass":I
    .local v21, "verbose":Z
    invoke-direct {v1, v12, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v8

    .line 629
    .local v8, "cred":I
    if-eq v15, v11, :cond_7d

    const/16 v0, 0xff

    if-ne v11, v0, :cond_aa

    :cond_7d
    invoke-virtual {v5, v13}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 632
    aget-object v0, v9, v3

    invoke-virtual {v1, v0, v8}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 633
    const/4 v0, 0x1

    .line 634
    .end local v7    # "completed":Z
    .local v0, "completed":Z
    if-ne v13, v10, :cond_9f

    .line 635
    if-nez v17, :cond_96

    .line 636
    new-instance v7, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x6

    invoke-direct {v7, v12}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    move-object/from16 v17, v7

    goto :goto_98

    .line 638
    :cond_96
    move-object/from16 v7, v17

    .end local v17    # "response":Lorg/xbill/DNS/SetResponse;
    .local v7, "response":Lorg/xbill/DNS/SetResponse;
    :goto_98
    aget-object v12, v9, v3

    invoke-virtual {v7, v12}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 640
    move-object/from16 v17, v7

    .end local v7    # "response":Lorg/xbill/DNS/SetResponse;
    .restart local v17    # "response":Lorg/xbill/DNS/SetResponse;
    :cond_9f
    aget-object v7, v9, v3

    invoke-static {v7, v14}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    .line 623
    move v7, v0

    move/from16 v22, v11

    .end local v0    # "completed":Z
    .end local v5    # "name":Lorg/xbill/DNS/Name;
    .end local v8    # "cred":I
    .end local v11    # "qtype":I
    .end local v15    # "type":I
    .local v7, "completed":Z
    .local v22, "qtype":I
    :cond_a7
    :goto_a7
    const/4 v12, 0x5

    goto/16 :goto_10b

    .line 641
    .end local v22    # "qtype":I
    .restart local v5    # "name":Lorg/xbill/DNS/Name;
    .restart local v8    # "cred":I
    .restart local v11    # "qtype":I
    .restart local v15    # "type":I
    :cond_aa
    const/4 v0, 0x5

    if-ne v15, v0, :cond_d8

    invoke-virtual {v5, v13}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 643
    aget-object v0, v9, v3

    invoke-virtual {v1, v0, v8}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 644
    if-ne v13, v10, :cond_c7

    .line 645
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x4

    move/from16 v22, v11

    .end local v11    # "qtype":I
    .restart local v22    # "qtype":I
    aget-object v11, v9, v3

    invoke-direct {v0, v12, v11}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object/from16 v17, v0

    goto :goto_c9

    .line 647
    .end local v22    # "qtype":I
    .restart local v11    # "qtype":I
    :cond_c7
    move/from16 v22, v11

    .end local v11    # "qtype":I
    .restart local v22    # "qtype":I
    :goto_c9
    aget-object v0, v9, v3

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/CNAMERecord;

    .line 648
    .local v0, "cname":Lorg/xbill/DNS/CNAMERecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 649
    .end local v13    # "curname":Lorg/xbill/DNS/Name;
    .local v0, "curname":Lorg/xbill/DNS/Name;
    nop

    .line 623
    move-object v13, v0

    goto :goto_a7

    .line 649
    .end local v0    # "curname":Lorg/xbill/DNS/Name;
    .end local v22    # "qtype":I
    .restart local v11    # "qtype":I
    .restart local v13    # "curname":Lorg/xbill/DNS/Name;
    :cond_d8
    move/from16 v22, v11

    .end local v11    # "qtype":I
    .restart local v22    # "qtype":I
    const/16 v0, 0x27

    if-ne v15, v0, :cond_a7

    invoke-virtual {v13, v5}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 651
    aget-object v0, v9, v3

    invoke-virtual {v1, v0, v8}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 652
    if-ne v13, v10, :cond_f6

    .line 653
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    aget-object v11, v9, v3

    const/4 v12, 0x5

    invoke-direct {v0, v12, v11}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object/from16 v17, v0

    goto :goto_f7

    .line 655
    :cond_f6
    const/4 v12, 0x5

    :goto_f7
    aget-object v0, v9, v3

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/DNAMERecord;

    move-object v11, v0

    .line 657
    .local v11, "dname":Lorg/xbill/DNS/DNAMERecord;
    :try_start_100
    invoke-virtual {v13, v11}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_104
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_100 .. :try_end_104} :catch_107

    .line 661
    .end local v13    # "curname":Lorg/xbill/DNS/Name;
    .restart local v0    # "curname":Lorg/xbill/DNS/Name;
    nop

    .line 623
    move-object v13, v0

    goto :goto_10b

    .line 659
    .end local v0    # "curname":Lorg/xbill/DNS/Name;
    .restart local v13    # "curname":Lorg/xbill/DNS/Name;
    :catch_107
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 660
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    goto :goto_121

    .line 623
    .end local v0    # "e":Lorg/xbill/DNS/NameTooLongException;
    .end local v5    # "name":Lorg/xbill/DNS/Name;
    .end local v8    # "cred":I
    .end local v11    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .end local v15    # "type":I
    :goto_10b
    add-int/lit8 v0, v3, 0x1

    move-object/from16 v5, v19

    move/from16 v12, v20

    move/from16 v8, v21

    move/from16 v11, v22

    const/4 v3, 0x5

    const/4 v15, 0x1

    goto/16 :goto_47

    .line 665
    .end local v3    # "i":I
    .end local v19    # "question":Lorg/xbill/DNS/Record;
    .end local v20    # "qclass":I
    .end local v21    # "verbose":Z
    .end local v22    # "qtype":I
    .local v5, "question":Lorg/xbill/DNS/Record;
    .local v8, "verbose":Z
    .local v11, "qtype":I
    .restart local v12    # "qclass":I
    :cond_119
    move-object/from16 v19, v5

    move/from16 v21, v8

    move/from16 v22, v11

    move/from16 v20, v12

    .end local v5    # "question":Lorg/xbill/DNS/Record;
    .end local v8    # "verbose":Z
    .end local v11    # "qtype":I
    .end local v12    # "qclass":I
    .restart local v19    # "question":Lorg/xbill/DNS/Record;
    .restart local v20    # "qclass":I
    .restart local v21    # "verbose":Z
    .restart local v22    # "qtype":I
    :goto_121
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 666
    .local v3, "auth":[Lorg/xbill/DNS/RRset;
    const/4 v5, 0x0

    .local v5, "soa":Lorg/xbill/DNS/RRset;
    const/4 v8, 0x0

    .line 667
    .local v8, "ns":Lorg/xbill/DNS/RRset;
    move-object v11, v8

    move-object v8, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v8, "soa":Lorg/xbill/DNS/RRset;
    .local v11, "ns":Lorg/xbill/DNS/RRset;
    :goto_12b
    array-length v12, v3

    if-ge v5, v12, :cond_15f

    .line 668
    aget-object v12, v3, v5

    invoke-virtual {v12}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v12

    const/4 v15, 0x6

    if-ne v12, v15, :cond_146

    aget-object v12, v3, v5

    invoke-virtual {v12}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v12

    if-eqz v12, :cond_146

    .line 670
    aget-object v8, v3, v5

    goto :goto_15c

    .line 671
    :cond_146
    aget-object v12, v3, v5

    invoke-virtual {v12}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v12

    if-ne v12, v0, :cond_15c

    aget-object v12, v3, v5

    invoke-virtual {v12}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v12

    if-eqz v12, :cond_15c

    .line 673
    aget-object v11, v3, v5

    .line 667
    :cond_15c
    :goto_15c
    add-int/lit8 v5, v5, 0x1

    goto :goto_12b

    .line 675
    .end local v5    # "i":I
    :cond_15f
    if-nez v7, :cond_1ae

    .line 677
    const/4 v5, 0x3

    if-ne v6, v5, :cond_166

    const/4 v12, 0x0

    goto :goto_168

    :cond_166
    move/from16 v12, v22

    .line 678
    .local v12, "cachetype":I
    :goto_168
    if-eq v6, v5, :cond_189

    if-nez v8, :cond_189

    if-nez v11, :cond_16f

    goto :goto_189

    .line 696
    :cond_16f
    invoke-direct {v1, v0, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v0

    .line 697
    .local v0, "cred":I
    invoke-virtual {v1, v11, v0}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 698
    invoke-static {v11, v14}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    .line 699
    if-nez v17, :cond_186

    .line 700
    new-instance v5, Lorg/xbill/DNS/SetResponse;

    const/4 v15, 0x3

    invoke-direct {v5, v15, v11}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 704
    move-object/from16 v23, v3

    move-object/from16 v17, v5

    goto :goto_1ad

    .end local v12    # "cachetype":I
    :cond_186
    move-object/from16 v23, v3

    goto :goto_1ad

    .line 680
    .end local v0    # "cred":I
    .restart local v12    # "cachetype":I
    :cond_189
    :goto_189
    invoke-direct {v1, v0, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v5

    .line 681
    .local v5, "cred":I
    const/4 v15, 0x0

    .line 682
    .local v15, "soarec":Lorg/xbill/DNS/SOARecord;
    if-eqz v8, :cond_198

    .line 683
    invoke-virtual {v8}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, Lorg/xbill/DNS/SOARecord;

    .line 684
    :cond_198
    invoke-virtual {v1, v13, v12, v15, v5}, Lorg/xbill/DNS/Cache;->addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V

    .line 685
    if-nez v17, :cond_1aa

    .line 687
    move-object/from16 v23, v3

    const/4 v3, 0x3

    .end local v3    # "auth":[Lorg/xbill/DNS/RRset;
    .local v23, "auth":[Lorg/xbill/DNS/RRset;
    if-ne v6, v3, :cond_1a4

    .line 688
    const/4 v0, 0x1

    goto :goto_1a5

    .line 690
    :cond_1a4
    nop

    .line 691
    .local v0, "responseType":I
    :goto_1a5
    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v17

    goto :goto_1ac

    .line 694
    .end local v0    # "responseType":I
    .end local v15    # "soarec":Lorg/xbill/DNS/SOARecord;
    .end local v23    # "auth":[Lorg/xbill/DNS/RRset;
    .restart local v3    # "auth":[Lorg/xbill/DNS/RRset;
    :cond_1aa
    move-object/from16 v23, v3

    .line 704
    .end local v3    # "auth":[Lorg/xbill/DNS/RRset;
    .restart local v23    # "auth":[Lorg/xbill/DNS/RRset;
    :goto_1ac
    move v0, v5

    .end local v5    # "cred":I
    .end local v12    # "cachetype":I
    .local v0, "cred":I
    :goto_1ad
    goto :goto_1be

    .end local v0    # "cred":I
    .end local v23    # "auth":[Lorg/xbill/DNS/RRset;
    .restart local v3    # "auth":[Lorg/xbill/DNS/RRset;
    :cond_1ae
    move-object/from16 v23, v3

    .end local v3    # "auth":[Lorg/xbill/DNS/RRset;
    .restart local v23    # "auth":[Lorg/xbill/DNS/RRset;
    if-nez v6, :cond_1be

    if-eqz v11, :cond_1be

    .line 706
    invoke-direct {v1, v0, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v0

    .line 707
    .restart local v0    # "cred":I
    invoke-virtual {v1, v11, v0}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 708
    invoke-static {v11, v14}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    .line 711
    .end local v17    # "response":Lorg/xbill/DNS/SetResponse;
    .local v0, "response":Lorg/xbill/DNS/SetResponse;
    :cond_1be
    :goto_1be
    move-object/from16 v0, v17

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v5

    .line 712
    .local v5, "addl":[Lorg/xbill/DNS/RRset;
    nop

    .local v16, "i":I
    :goto_1c6
    move/from16 v3, v16

    .end local v16    # "i":I
    .local v3, "i":I
    array-length v12, v5

    if-ge v3, v12, :cond_200

    .line 713
    aget-object v12, v5, v3

    invoke-virtual {v12}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v12

    .line 714
    .local v12, "type":I
    const/4 v15, 0x1

    if-eq v12, v15, :cond_1dd

    const/16 v15, 0x1c

    if-eq v12, v15, :cond_1dd

    const/16 v15, 0x26

    if-eq v12, v15, :cond_1dd

    .line 715
    goto :goto_1ea

    .line 716
    :cond_1dd
    aget-object v15, v5, v3

    invoke-virtual {v15}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    .line 717
    .local v15, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1ed

    .line 718
    nop

    .line 712
    .end local v6    # "rcode":I
    .end local v12    # "type":I
    .end local v15    # "name":Lorg/xbill/DNS/Name;
    .local v24, "rcode":I
    :goto_1ea
    move/from16 v24, v6

    goto :goto_1f9

    .line 719
    .end local v24    # "rcode":I
    .restart local v6    # "rcode":I
    .restart local v12    # "type":I
    .restart local v15    # "name":Lorg/xbill/DNS/Name;
    :cond_1ed
    move/from16 v24, v6

    const/4 v2, 0x3

    .end local v6    # "rcode":I
    .restart local v24    # "rcode":I
    invoke-direct {v1, v2, v4}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v6

    .line 720
    .local v6, "cred":I
    aget-object v2, v5, v3

    invoke-virtual {v1, v2, v6}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 712
    .end local v6    # "cred":I
    .end local v12    # "type":I
    .end local v15    # "name":Lorg/xbill/DNS/Name;
    :goto_1f9
    add-int/lit8 v16, v3, 0x1

    move/from16 v6, v24

    move-object/from16 v2, p1

    goto :goto_1c6

    .line 722
    .end local v3    # "i":I
    .end local v24    # "rcode":I
    .local v6, "rcode":I
    :cond_200
    move/from16 v24, v6

    .end local v6    # "rcode":I
    .restart local v24    # "rcode":I
    if-eqz v21, :cond_21a

    .line 723
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "addMessage: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 724
    :cond_21a
    return-object v0
.end method

.method public declared-synchronized addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V
    .registers 16
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "soa"    # Lorg/xbill/DNS/SOARecord;
    .param p4, "cred"    # I

    monitor-enter p0

    .line 383
    const-wide/16 v0, 0x0

    .line 384
    .local v0, "ttl":J
    if-eqz p3, :cond_d

    .line 385
    :try_start_5
    invoke-virtual {p3}, Lorg/xbill/DNS/SOARecord;->getTTL()J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_d

    .line 382
    .end local v0    # "ttl":J
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    .end local p3    # "soa":Lorg/xbill/DNS/SOARecord;
    .end local p4    # "cred":I
    :catchall_b
    move-exception p1

    goto :goto_41

    .line 386
    .restart local v0    # "ttl":J
    .restart local p1    # "name":Lorg/xbill/DNS/Name;
    .restart local p2    # "type":I
    .restart local p3    # "soa":Lorg/xbill/DNS/SOARecord;
    .restart local p4    # "cred":I
    :cond_d
    :goto_d
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 387
    .local v2, "element":Lorg/xbill/DNS/Cache$Element;
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_24

    .line 388
    if-eqz v2, :cond_3f

    invoke-interface {v2, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v3

    if-gtz v3, :cond_3f

    .line 389
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    goto :goto_3f

    .line 391
    :cond_24
    if-eqz v2, :cond_2d

    invoke-interface {v2, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v3

    if-gtz v3, :cond_2d

    .line 392
    const/4 v2, 0x0

    .line 393
    :cond_2d
    if-nez v2, :cond_3f

    .line 394
    new-instance v10, Lorg/xbill/DNS/Cache$NegativeElement;

    iget v3, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    int-to-long v8, v3

    move-object v3, v10

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v3 .. v9}, Lorg/xbill/DNS/Cache$NegativeElement;-><init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IJ)V

    invoke-direct {p0, p1, v10}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_b

    .line 398
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    .line 382
    .end local v0    # "ttl":J
    .end local v2    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    .end local p3    # "soa":Lorg/xbill/DNS/SOARecord;
    .end local p4    # "cred":I
    :goto_41
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRRset(Lorg/xbill/DNS/RRset;I)V
    .registers 11
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p2, "cred"    # I

    monitor-enter p0

    .line 352
    :try_start_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v0

    .line 353
    .local v0, "ttl":J
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 354
    .local v2, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    .line 355
    .local v3, "type":I
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v4

    .line 356
    .local v4, "element":Lorg/xbill/DNS/Cache$Element;
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_24

    .line 357
    if-eqz v4, :cond_42

    invoke-interface {v4, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v5

    if-gtz v5, :cond_42

    .line 358
    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    goto :goto_42

    .line 360
    :cond_24
    if-eqz v4, :cond_2d

    invoke-interface {v4, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v5

    if-gtz v5, :cond_2d

    .line 361
    const/4 v4, 0x0

    .line 362
    :cond_2d
    if-nez v4, :cond_42

    .line 364
    instance-of v5, p1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v5, :cond_37

    .line 365
    move-object v5, p1

    check-cast v5, Lorg/xbill/DNS/Cache$CacheRRset;

    goto :goto_3f

    .line 367
    :cond_37
    new-instance v5, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v6, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v6, v6

    invoke-direct {v5, p1, p2, v6, v7}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/RRset;IJ)V

    .line 368
    .local v5, "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    :goto_3f
    invoke-direct {p0, v2, v5}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 371
    .end local v5    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    :cond_42
    :goto_42
    monitor-exit p0

    return-void

    .line 351
    .end local v0    # "ttl":J
    .end local v2    # "name":Lorg/xbill/DNS/Name;
    .end local v3    # "type":I
    .end local v4    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "rrset":Lorg/xbill/DNS/RRset;
    .end local p2    # "cred":I
    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V
    .registers 10
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "cred"    # I
    .param p3, "o"    # Ljava/lang/Object;

    monitor-enter p0

    .line 328
    :try_start_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 329
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 330
    .local v1, "type":I
    invoke-static {v1}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_35

    if-nez v2, :cond_11

    .line 331
    monitor-exit p0

    return-void

    .line 332
    :cond_11
    :try_start_11
    invoke-direct {p0, v0, v1, p2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 333
    .local v2, "element":Lorg/xbill/DNS/Cache$Element;
    if-nez v2, :cond_23

    .line 334
    new-instance v3, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v4, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v4, v4

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/Record;IJ)V

    .line 335
    .local v3, "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    invoke-virtual {p0, v3, p2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 336
    .end local v3    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    goto :goto_33

    :cond_23
    invoke-interface {v2, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v3

    if-nez v3, :cond_33

    .line 337
    instance-of v3, v2, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v3, :cond_33

    .line 338
    move-object v3, v2

    check-cast v3, Lorg/xbill/DNS/Cache$CacheRRset;

    .line 339
    .restart local v3    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    invoke-virtual {v3, p1}, Lorg/xbill/DNS/Cache$CacheRRset;->addRR(Lorg/xbill/DNS/Record;)V
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_35

    .line 342
    .end local v3    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 327
    .end local v0    # "name":Lorg/xbill/DNS/Name;
    .end local v1    # "type":I
    .end local v2    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local p1    # "r":Lorg/xbill/DNS/Record;
    .end local p2    # "cred":I
    .end local p3    # "o":Ljava/lang/Object;
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearCache()V
    .registers 2

    monitor-enter p0

    .line 316
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 317
    monitor-exit p0

    return-void

    .line 315
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAnyRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .registers 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 550
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .registers 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 537
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public flushName(Lorg/xbill/DNS/Name;)V
    .registers 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .line 745
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->removeName(Lorg/xbill/DNS/Name;)V

    .line 746
    return-void
.end method

.method public flushSet(Lorg/xbill/DNS/Name;I)V
    .registers 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .line 735
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    .line 736
    return-void
.end method

.method public getDClass()I
    .registers 2

    .line 826
    iget v0, p0, Lorg/xbill/DNS/Cache;->dclass:I

    return v0
.end method

.method public getMaxCache()I
    .registers 2

    .line 782
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    return v0
.end method

.method public getMaxEntries()I
    .registers 2

    .line 801
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public getMaxNCache()I
    .registers 2

    .line 764
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 791
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->size()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .registers 22
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    monitor-enter p0

    .line 412
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 414
    .local v3, "labels":I
    move v4, v3

    .local v4, "tlabels":I
    :goto_c
    const/4 v6, 0x1

    if-lt v4, v6, :cond_f6

    .line 415
    if-ne v4, v6, :cond_13

    const/4 v7, 0x1

    goto :goto_14

    :cond_13
    const/4 v7, 0x0

    .line 416
    .local v7, "isRoot":Z
    :goto_14
    if-ne v4, v3, :cond_18

    const/4 v8, 0x1

    goto :goto_19

    :cond_18
    const/4 v8, 0x0

    .line 418
    .local v8, "isExact":Z
    :goto_19
    if-eqz v7, :cond_20

    .line 419
    sget-object v9, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 423
    .local v9, "tname":Lorg/xbill/DNS/Name;
    :goto_1d
    move-object/from16 v11, p1

    goto :goto_2e

    .line 420
    .end local v9    # "tname":Lorg/xbill/DNS/Name;
    :cond_20
    if-eqz v8, :cond_25

    .line 421
    move-object/from16 v9, p1

    goto :goto_1d

    .line 423
    :cond_25
    new-instance v9, Lorg/xbill/DNS/Name;

    sub-int v10, v3, v4

    move-object/from16 v11, p1

    invoke-direct {v9, v11, v10}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 425
    .restart local v9    # "tname":Lorg/xbill/DNS/Name;
    :goto_2e
    iget-object v10, v1, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v10, v9}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 426
    .local v10, "types":Ljava/lang/Object;
    if-nez v10, :cond_38

    .line 427
    goto/16 :goto_f2

    .line 430
    :cond_38
    const/4 v12, 0x6

    if-eqz v8, :cond_7b

    const/16 v13, 0xff

    if-ne v0, v13, :cond_7b

    .line 431
    new-instance v13, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v13, v12}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 432
    .local v13, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-direct {v1, v10}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v14

    .line 433
    .local v14, "elements":[Lorg/xbill/DNS/Cache$Element;
    const/4 v15, 0x0

    .line 434
    .local v15, "added":I
    move/from16 v16, v15

    const/4 v15, 0x0

    .local v15, "i":I
    .local v16, "added":I
    :goto_4c
    array-length v6, v14

    if-ge v15, v6, :cond_77

    .line 435
    aget-object v6, v14, v15

    .line 436
    .local v6, "element":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v6}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v17

    if-eqz v17, :cond_5f

    .line 437
    invoke-interface {v6}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v5

    invoke-direct {v1, v9, v5}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    .line 438
    goto :goto_73

    .line 440
    :cond_5f
    instance-of v5, v6, Lorg/xbill/DNS/Cache$CacheRRset;

    if-nez v5, :cond_64

    .line 441
    goto :goto_73

    .line 442
    :cond_64
    invoke-interface {v6, v2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v5

    if-gez v5, :cond_6b

    .line 443
    goto :goto_73

    .line 444
    :cond_6b
    move-object v5, v6

    check-cast v5, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v13, v5}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_71
    .catchall {:try_start_7 .. :try_end_71} :catchall_ff

    .line 445
    add-int/lit8 v16, v16, 0x1

    .line 434
    :goto_73
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    goto :goto_4c

    .line 448
    .end local v6    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local v15    # "i":I
    :cond_77
    if-lez v16, :cond_7b

    .line 449
    monitor-exit p0

    return-object v13

    .line 456
    .end local v13    # "sr":Lorg/xbill/DNS/SetResponse;
    .end local v14    # "elements":[Lorg/xbill/DNS/Cache$Element;
    .end local v16    # "added":I
    :cond_7b
    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v8, :cond_b6

    .line 457
    :try_start_7f
    invoke-direct {v1, v9, v10, v0, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v13

    .line 458
    .local v13, "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v13, :cond_96

    instance-of v14, v13, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v14, :cond_96

    .line 461
    new-instance v5, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v5, v12}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 462
    .local v5, "sr":Lorg/xbill/DNS/SetResponse;
    move-object v6, v13

    check-cast v6, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_94
    .catchall {:try_start_7f .. :try_end_94} :catchall_ff

    .line 463
    monitor-exit p0

    return-object v5

    .line 464
    .end local v5    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_96
    if-eqz v13, :cond_9f

    .line 465
    :try_start_98
    new-instance v5, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v5, v6}, Lorg/xbill/DNS/SetResponse;-><init>(I)V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_ff

    .line 466
    .restart local v5    # "sr":Lorg/xbill/DNS/SetResponse;
    monitor-exit p0

    return-object v5

    .line 469
    .end local v5    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_9f
    :try_start_9f
    invoke-direct {v1, v9, v10, v5, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v5

    .line 470
    .end local v13    # "element":Lorg/xbill/DNS/Cache$Element;
    .local v5, "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v5, :cond_b4

    instance-of v12, v5, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v12, :cond_b4

    .line 473
    new-instance v6, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x4

    move-object v13, v5

    check-cast v13, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v6, v12, v13}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_b2
    .catchall {:try_start_9f .. :try_end_b2} :catchall_ff

    monitor-exit p0

    return-object v6

    .line 487
    :cond_b4
    move-object v12, v5

    goto :goto_cc

    .line 477
    .end local v5    # "element":Lorg/xbill/DNS/Cache$Element;
    :cond_b6
    const/16 v12, 0x27

    :try_start_b8
    invoke-direct {v1, v9, v10, v12, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v12

    .line 478
    .local v12, "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v12, :cond_cc

    instance-of v13, v12, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v13, :cond_cc

    .line 481
    new-instance v6, Lorg/xbill/DNS/SetResponse;

    move-object v13, v12

    check-cast v13, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v6, v5, v13}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_ca
    .catchall {:try_start_b8 .. :try_end_ca} :catchall_ff

    monitor-exit p0

    return-object v6

    .line 487
    :cond_cc
    :goto_cc
    :try_start_cc
    invoke-direct {v1, v9, v10, v6, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v5

    .line 488
    .end local v12    # "element":Lorg/xbill/DNS/Cache$Element;
    .restart local v5    # "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v5, :cond_e1

    instance-of v6, v5, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v6, :cond_e1

    .line 489
    new-instance v6, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x3

    move-object v13, v5

    check-cast v13, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v6, v12, v13}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_df
    .catchall {:try_start_cc .. :try_end_df} :catchall_ff

    monitor-exit p0

    return-object v6

    .line 493
    :cond_e1
    if-eqz v8, :cond_f2

    .line 494
    const/4 v6, 0x0

    :try_start_e4
    invoke-direct {v1, v9, v10, v6, v2}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v6

    move-object v5, v6

    .line 495
    if-eqz v5, :cond_f2

    .line 496
    const/4 v6, 0x1

    invoke-static {v6}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v6
    :try_end_f0
    .catchall {:try_start_e4 .. :try_end_f0} :catchall_ff

    monitor-exit p0

    return-object v6

    .line 414
    .end local v5    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local v7    # "isRoot":Z
    .end local v8    # "isExact":Z
    :cond_f2
    :goto_f2
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_c

    .line 500
    .end local v9    # "tname":Lorg/xbill/DNS/Name;
    .end local v10    # "types":Ljava/lang/Object;
    :cond_f6
    move-object/from16 v11, p1

    const/4 v5, 0x0

    :try_start_f9
    invoke-static {v5}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v5
    :try_end_fd
    .catchall {:try_start_f9 .. :try_end_fd} :catchall_ff

    monitor-exit p0

    return-object v5

    .line 411
    .end local v3    # "labels":I
    .end local v4    # "tlabels":I
    .end local p1    # "name":Lorg/xbill/DNS/Name;
    .end local p2    # "type":I
    .end local p3    # "minCred":I
    :catchall_ff
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .registers 5
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    .line 515
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMaxCache(I)V
    .registers 2
    .param p1, "seconds"    # I

    .line 773
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 774
    return-void
.end method

.method public setMaxEntries(I)V
    .registers 3
    .param p1, "entries"    # I

    .line 818
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->setMaxSize(I)V

    .line 819
    return-void
.end method

.method public setMaxNCache(I)V
    .registers 2
    .param p1, "seconds"    # I

    .line 755
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 756
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 834
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 835
    .local v0, "sb":Ljava/lang/StringBuffer;
    monitor-enter p0

    .line 836
    :try_start_6
    iget-object v1, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v1}, Lorg/xbill/DNS/Cache$CacheMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 837
    .local v1, "it":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 838
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 839
    .local v2, "elements":[Lorg/xbill/DNS/Cache$Element;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v4, v2

    if-ge v3, v4, :cond_2f

    .line 840
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 841
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 843
    .end local v2    # "elements":[Lorg/xbill/DNS/Cache$Element;
    .end local v3    # "i":I
    :cond_2f
    goto :goto_10

    .line 844
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_36

    .line 845
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 844
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method
