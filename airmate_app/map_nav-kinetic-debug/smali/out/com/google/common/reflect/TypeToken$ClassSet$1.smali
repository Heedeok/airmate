.class Lcom/google/common/reflect/TypeToken$ClassSet$1;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$ClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator<",
        "Lcom/google/common/reflect/TypeToken<",
        "-TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/reflect/TypeToken$ClassSet;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$ClassSet;Lcom/google/common/reflect/TypeToken;)V
    .registers 3

    .line 515
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet$1;, "Lcom/google/common/reflect/TypeToken$ClassSet.1;"
    .local p2, "x0":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$ClassSet$1;->this$1:Lcom/google/common/reflect/TypeToken$ClassSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeNext(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet$1;, "Lcom/google/common/reflect/TypeToken$ClassSet.1;"
    .local p1, "previous":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getGenericSuperclass()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 515
    .local p0, "this":Lcom/google/common/reflect/TypeToken$ClassSet$1;, "Lcom/google/common/reflect/TypeToken$ClassSet.1;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeToken$ClassSet$1;->computeNext(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method
