.class Lcom/google/common/collect/TreeBasedTable$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeBasedTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeBasedTable;->createColumnKeyIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field lastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeBasedTable;

.field final synthetic val$comparator:Ljava/util/Comparator;

.field final synthetic val$merged:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/util/Iterator;Ljava/util/Comparator;)V
    .registers 4

    .line 356
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$2;, "Lcom/google/common/collect/TreeBasedTable.2;"
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$2;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iput-object p2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$2;, "Lcom/google/common/collect/TreeBasedTable.2;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 363
    .local v0, "next":Ljava/lang/Object;, "TC;"
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 367
    .local v1, "duplicate":Z
    :goto_1f
    if-nez v1, :cond_26

    .line 368
    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 369
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    return-object v2

    .line 371
    .end local v0    # "next":Ljava/lang/Object;, "TC;"
    .end local v1    # "duplicate":Z
    :cond_26
    goto :goto_0

    .line 373
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
