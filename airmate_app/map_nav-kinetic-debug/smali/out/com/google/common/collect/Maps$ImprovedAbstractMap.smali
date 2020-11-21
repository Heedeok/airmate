.class abstract Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ImprovedAbstractMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2083
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createEntrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2094
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    .line 2095
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_b

    .line 2096
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->createEntrySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    .line 2098
    :cond_b
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 2137
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2104
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    .line 2105
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_c

    .line 2106
    new-instance v1, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;-><init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;)V

    iput-object v1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    return-object v1

    .line 2112
    :cond_c
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2118
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    .line 2119
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    .line 2120
    new-instance v1, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;-><init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;)V

    iput-object v1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    return-object v1

    .line 2126
    :cond_c
    return-object v0
.end method
