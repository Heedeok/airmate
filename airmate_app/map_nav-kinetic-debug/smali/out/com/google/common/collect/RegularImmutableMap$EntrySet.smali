.class Lcom/google/common/collect/RegularImmutableMap$EntrySet;
.super Lcom/google/common/collect/ImmutableMap$EntrySet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .registers 2

    .line 194
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableMap;Lcom/google/common/collect/RegularImmutableMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/RegularImmutableMap;
    .param p2, "x1"    # Lcom/google/common/collect/RegularImmutableMap$1;

    .line 194
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMap;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableMap;->access$100(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 193
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
