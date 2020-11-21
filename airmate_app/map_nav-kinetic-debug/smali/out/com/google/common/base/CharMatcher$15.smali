.class Lcom/google/common/base/CharMatcher$15;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->precomputedInternal()Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/CharMatcher;

.field final synthetic val$outer:Lcom/google/common/base/CharMatcher;

.field final synthetic val$table:Lcom/google/common/base/CharMatcher$LookupTable;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher$LookupTable;Lcom/google/common/base/CharMatcher;)V
    .registers 4

    .line 738
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$15;->this$0:Lcom/google/common/base/CharMatcher;

    iput-object p2, p0, Lcom/google/common/base/CharMatcher$15;->val$table:Lcom/google/common/base/CharMatcher$LookupTable;

    iput-object p3, p0, Lcom/google/common/base/CharMatcher$15;->val$outer:Lcom/google/common/base/CharMatcher;

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 738
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-super {p0, v0}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 740
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$15;->val$table:Lcom/google/common/base/CharMatcher$LookupTable;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher$LookupTable;->get(C)Z

    move-result v0

    return v0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 1

    .line 746
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 750
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$15;->val$outer:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
