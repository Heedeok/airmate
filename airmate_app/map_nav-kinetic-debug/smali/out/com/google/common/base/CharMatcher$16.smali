.class Lcom/google/common/base/CharMatcher$16;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/CharMatcher;

.field final synthetic val$delegate:Lcom/google/common/base/CharMatcher;

.field final synthetic val$toString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;Ljava/lang/String;)V
    .registers 4

    .line 757
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$16;->this$0:Lcom/google/common/base/CharMatcher;

    iput-object p2, p0, Lcom/google/common/base/CharMatcher$16;->val$delegate:Lcom/google/common/base/CharMatcher;

    iput-object p3, p0, Lcom/google/common/base/CharMatcher$16;->val$toString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 757
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-super {p0, v0}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 760
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$16;->val$delegate:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .registers 3
    .param p1, "table"    # Lcom/google/common/base/CharMatcher$LookupTable;

    .line 765
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$16;->val$delegate:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V

    .line 766
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 770
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$16;->val$toString:Ljava/lang/String;

    return-object v0
.end method
