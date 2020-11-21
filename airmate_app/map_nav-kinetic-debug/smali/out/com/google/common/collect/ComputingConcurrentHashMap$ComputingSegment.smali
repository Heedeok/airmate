.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputingSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 4
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 76
    return-void
.end method


# virtual methods
.method compute(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;
    .registers 14
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p4, "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 178
    .local v1, "start":J
    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 183
    .local v5, "end":J
    :try_start_8
    monitor-enter p3
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_34

    .line 184
    :try_start_9
    invoke-virtual {p4, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->compute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 185
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    move-wide v5, v7

    .line 186
    monitor-exit p3
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_31

    .line 187
    if-eqz v0, :cond_22

    .line 189
    const/4 v7, 0x1

    :try_start_17
    invoke-virtual {p0, p1, p2, v0, v7}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v7

    .line 190
    .local v7, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_22

    .line 192
    sget-object v8, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v8}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_34

    .line 195
    .end local v7    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_22
    nop

    .line 197
    cmp-long v7, v5, v3

    if-nez v7, :cond_2b

    .line 198
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 200
    :cond_2b
    if-nez v0, :cond_30

    .line 201
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    :cond_30
    return-object v0

    .line 186
    :catchall_31
    move-exception v7

    :try_start_32
    monitor-exit p3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v7
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 197
    :catchall_34
    move-exception v7

    cmp-long v8, v5, v3

    if-nez v8, :cond_3d

    .line 198
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 200
    :cond_3d
    if-nez v0, :cond_42

    .line 201
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    :cond_42
    throw v7
.end method

.method getOrCompute(Ljava/lang/Object;ILcom/google/common/base/Function;)Ljava/lang/Object;
    .registers 15
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/base/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "computingFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;+TV;>;"
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 84
    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_14

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_14

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f2

    .line 88
    nop

    .line 169
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "hash":I
    .end local p3    # "computingFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;+TV;>;"
    :goto_10
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    return-object v1

    .line 94
    .restart local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .restart local p0    # "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "hash":I
    .restart local p3    # "computingFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;+TV;>;"
    :cond_14
    if-eqz v0, :cond_20

    :try_start_16
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v1

    if-nez v1, :cond_d0

    .line 95
    :cond_20
    const/4 v1, 0x1

    .line 96
    .local v1, "createNewEntry":Z
    const/4 v2, 0x0

    .line 97
    .local v2, "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->lock()V
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_f2

    .line 99
    :try_start_25
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->preWriteCleanup()V

    .line 101
    iget v3, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    add-int/lit8 v3, v3, -0x1

    .line 102
    .local v3, "newCount":I
    iget-object v4, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 103
    .local v4, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, p2

    .line 104
    .local v5, "index":I
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 106
    .local v6, "first":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v6

    :goto_3c
    if-eqz v0, :cond_a6

    .line 107
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 108
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v8

    if-ne v8, p2, :cond_a0

    if-eqz v7, :cond_a0

    iget-object v8, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 110
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v8

    .line 111
    .local v8, "valueReference":Lcom/google/common/collect/MapMakerInternalMap$ValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v9

    if-eqz v9, :cond_60

    .line 112
    const/4 v1, 0x0

    goto :goto_a6

    .line 114
    :cond_60
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 115
    .local v9, "value":Ljava/lang/Object;, "TV;"
    if-nez v9, :cond_70

    .line 116
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v7, p2, v9, v10}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    goto :goto_85

    .line 117
    :cond_70
    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v10}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v10

    if-eqz v10, :cond_92

    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v10, v0}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v10

    if-eqz v10, :cond_92

    .line 120
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v7, p2, v9, v10}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 127
    :goto_85
    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v10, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v10, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 129
    iput v3, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    .line 131
    .end local v9    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_a6

    .line 122
    .restart local v9    # "value":Ljava/lang/Object;, "TV;"
    :cond_92
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordLockedRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_95
    .catchall {:try_start_25 .. :try_end_95} :catchall_ea

    .line 123
    nop

    .line 147
    :try_start_96
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_f2

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    return-object v9

    .line 106
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v8    # "valueReference":Lcom/google/common/collect/MapMakerInternalMap$ValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    .end local v9    # "value":Ljava/lang/Object;, "TV;"
    :cond_a0
    :try_start_a0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v7

    move-object v0, v7

    goto :goto_3c

    .line 135
    :cond_a6
    :goto_a6
    if-eqz v1, :cond_bf

    .line 136
    new-instance v7, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;

    invoke-direct {v7, p3}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;-><init>(Lcom/google/common/base/Function;)V

    move-object v2, v7

    .line 138
    if-nez v0, :cond_bc

    .line 139
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v7

    move-object v0, v7

    .line 140
    invoke-interface {v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 141
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_bf

    .line 143
    :cond_bc
    invoke-interface {v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V
    :try_end_bf
    .catchall {:try_start_a0 .. :try_end_bf} :catchall_ea

    .line 147
    .end local v3    # "newCount":I
    .end local v4    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    .end local v5    # "index":I
    .end local v6    # "first":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_bf
    :goto_bf
    :try_start_bf
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    .line 149
    nop

    .line 151
    if-eqz v1, :cond_d0

    .line 153
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->compute(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;

    move-result-object v3
    :try_end_cc
    .catchall {:try_start_bf .. :try_end_cc} :catchall_f2

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    return-object v3

    .line 158
    .end local v1    # "createNewEntry":Z
    .end local v2    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    :cond_d0
    :try_start_d0
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Recursive computation"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 160
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v1

    .line 161
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 163
    goto/16 :goto_10

    .line 147
    .local v1, "createNewEntry":Z
    .restart local v2    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    :catchall_ea
    move-exception v3

    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    throw v3
    :try_end_f2
    .catchall {:try_start_d0 .. :try_end_f2} :catchall_f2

    .line 169
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "createNewEntry":Z
    .end local v2    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    :catchall_f2
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    throw v0
.end method
