.class Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$TransformedEntriesMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV1;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Maps$TransformedEntriesMap$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedEntriesMap$1;Ljava/util/Iterator;)V
    .registers 3

    .line 1203
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;, "Lcom/google/common/collect/Maps$TransformedEntriesMap$1.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<TK;TV1;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;->this$1:Lcom/google/common/collect/Maps$TransformedEntriesMap$1;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 1203
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;, "Lcom/google/common/collect/Maps$TransformedEntriesMap$1.1;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;->transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1206
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;, "Lcom/google/common/collect/Maps$TransformedEntriesMap$1.1;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV1;>;"
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1$1;-><init>(Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method