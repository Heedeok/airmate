.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;
.super Lcom/google/common/collect/ComputingConcurrentHashMap;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputingMapAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ComputingConcurrentHashMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V
    .registers 3
    .param p1, "mapMaker"    # Lcom/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/base/Function<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 388
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter<TK;TV;>;"
    .local p2, "computingFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;+TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    .line 389
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;->getOrCompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_4} :catch_29

    .line 401
    .local v0, "value":Ljava/lang/Object;, "TV;"
    nop

    .line 403
    if-eqz v0, :cond_8

    .line 406
    return-object v0

    .line 404
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;->computingFunction:Lcom/google/common/base/Function;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catch_29
    move-exception v0

    .line 398
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 399
    .local v1, "cause":Ljava/lang/Throwable;
    const-class v2, Lcom/google/common/collect/ComputationException;

    invoke-static {v1, v2}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 400
    new-instance v2, Lcom/google/common/collect/ComputationException;

    invoke-direct {v2, v1}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method bridge synthetic segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 3
    .param p1, "x0"    # I

    .line 382
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v0

    return-object v0
.end method
