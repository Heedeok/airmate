.class Lcom/google/common/collect/StandardTable$Values$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$Values;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Values;Ljava/util/Iterator;)V
    .registers 3

    .line 913
    .local p0, "this":Lcom/google/common/collect/StandardTable$Values$1;, "Lcom/google/common/collect/StandardTable$Values.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Values$1;->this$1:Lcom/google/common/collect/StandardTable$Values;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Lcom/google/common/collect/Table$Cell;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;)TV;"
        }
    .end annotation

    .line 916
    .local p0, "this":Lcom/google/common/collect/StandardTable$Values$1;, "Lcom/google/common/collect/StandardTable$Values.1;"
    .local p1, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 913
    .local p0, "this":Lcom/google/common/collect/StandardTable$Values$1;, "Lcom/google/common/collect/StandardTable$Values.1;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/StandardTable$Values$1;->transform(Lcom/google/common/collect/Table$Cell;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method