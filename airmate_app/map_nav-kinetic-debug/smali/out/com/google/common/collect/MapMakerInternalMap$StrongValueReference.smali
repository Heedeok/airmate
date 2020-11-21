.class final Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1819
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    .local p1, "referent":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1820
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;->referent:Ljava/lang/Object;

    .line 1821
    return-void
.end method


# virtual methods
.method public clear(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1850
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    .local p1, "newValue":Lcom/google/common/collect/MapMakerInternalMap$ValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    return-void
.end method

.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1836
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1825
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public getEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1830
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isComputingReference()Z
    .registers 2

    .line 1841
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1846
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
