.class final Lcom/google/common/reflect/TypeToken$InterfaceSet;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InterfaceSet"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient interfaces:Lcom/google/common/collect/ImmutableSet;
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
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;)V"
        }
    .end annotation

    .line 488
    .local p0, "this":Lcom/google/common/reflect/TypeToken$InterfaceSet;, "Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    .local p2, "allTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    .line 489
    sget-object p1, Lcom/google/common/reflect/TypeToken$TypeFilter;->INTERFACE_ONLY:Lcom/google/common/reflect/TypeToken$TypeFilter;

    invoke-static {p2, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lcom/google/common/collect/ImmutableSet;

    .line 490
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 505
    .local p0, "this":Lcom/google/common/reflect/TypeToken$InterfaceSet;, "Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lcom/google/common/reflect/TypeToken$InterfaceSet;, "Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "interfaces().classes() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 484
    .local p0, "this":Lcom/google/common/reflect/TypeToken$InterfaceSet;, "Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .line 484
    .local p0, "this":Lcom/google/common/reflect/TypeToken$InterfaceSet;, "Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

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

    .line 493
    .local p0, "this":Lcom/google/common/reflect/TypeToken$InterfaceSet;, "Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 497
    .local p0, "this":Lcom/google/common/reflect/TypeToken$InterfaceSet;, "Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    return-object p0
.end method
