.class final Lcom/google/common/reflect/TypeToken$ClassSet;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClassSet"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient classes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/reflect/TypeToken;


# direct methods
.method private constructor <init>(Lcom/google/common/reflect/TypeToken;)V
    .registers 3

    .line 511
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    .line 513
    new-instance p1, Lcom/google/common/reflect/TypeToken$ClassSet$1;

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_17

    :cond_15
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->this$0:Lcom/google/common/reflect/TypeToken;

    :goto_17
    invoke-direct {p1, p0, v0}, Lcom/google/common/reflect/TypeToken$ClassSet$1;-><init>(Lcom/google/common/reflect/TypeToken$ClassSet;Lcom/google/common/reflect/TypeToken;)V

    sget-object v0, Lcom/google/common/reflect/TypeToken$TypeFilter;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/TypeToken$TypeFilter;

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->classes:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/reflect/TypeToken;
    .param p2, "x1"    # Lcom/google/common/reflect/TypeToken$1;

    .line 511
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$ClassSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 534
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->classes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 526
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 511
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$ClassSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .line 511
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$ClassSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$ClassSet;->classes:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet;, "Lcom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "classes().interfaces() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
