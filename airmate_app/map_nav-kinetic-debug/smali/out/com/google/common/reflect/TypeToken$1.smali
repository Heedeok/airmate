.class final Lcom/google/common/reflect/TypeToken$1;
.super Ljava/lang/Object;
.source "TypeToken.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->sortKeysByValue(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$valueComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Map;)V
    .registers 3

    .line 912
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$1;->val$valueComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$1;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)I"
        }
    .end annotation

    .line 914
    .local p1, "left":Ljava/lang/Object;, "TK;"
    .local p2, "right":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$1;->val$valueComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$1;->val$map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken$1;->val$map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
