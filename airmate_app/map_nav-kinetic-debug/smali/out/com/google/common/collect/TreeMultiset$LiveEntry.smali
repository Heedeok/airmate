.class Lcom/google/common/collect/TreeMultiset$LiveEntry;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiveEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private count:I

.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private expectedRoot:Lcom/google/common/collect/TreeMultiset$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;I)V
    .registers 4
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 335
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$LiveEntry;, "Lcom/google/common/collect/TreeMultiset<TE;>.LiveEntry;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 336
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->access$700(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$Reference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$Node;

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->expectedRoot:Lcom/google/common/collect/TreeMultiset$Node;

    .line 337
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->element:Ljava/lang/Object;

    .line 338
    iput p3, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->count:I

    .line 339
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/google/common/collect/TreeMultiset;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/collect/TreeMultiset$1;

    .line 330
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$LiveEntry;, "Lcom/google/common/collect/TreeMultiset<TE;>.LiveEntry;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/TreeMultiset$LiveEntry;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .line 348
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$LiveEntry;, "Lcom/google/common/collect/TreeMultiset<TE;>.LiveEntry;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$700(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->expectedRoot:Lcom/google/common/collect/TreeMultiset$Node;

    if-ne v0, v1, :cond_11

    .line 349
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->count:I

    return v0

    .line 352
    :cond_11
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$700(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->expectedRoot:Lcom/google/common/collect/TreeMultiset$Node;

    .line 353
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->this$0:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->count:I

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$LiveEntry;, "Lcom/google/common/collect/TreeMultiset<TE;>.LiveEntry;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->element:Ljava/lang/Object;

    return-object v0
.end method
