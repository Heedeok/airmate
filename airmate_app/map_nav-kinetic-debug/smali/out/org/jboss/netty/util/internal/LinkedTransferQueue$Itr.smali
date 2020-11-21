.class final Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private lastPred:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field private lastRet:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field final synthetic this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/LinkedTransferQueue;)V
    .registers 2

    .line 917
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->advance(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    .line 919
    return-void
.end method

.method private advance(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V
    .registers 9
    .param p1, "prev"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 868
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v1, v0

    .local v1, "r":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-nez v0, :cond_f

    .line 869
    iput-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastPred:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    goto :goto_35

    .line 870
    :cond_f
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastPred:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v3, v0

    .local v3, "b":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v0, :cond_33

    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_33

    .line 876
    :cond_1b
    :goto_1b
    iget-object v0, v3, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v4, v0

    .local v4, "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v0, :cond_35

    if-eq v4, v3, :cond_35

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v4, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v5, v0

    .local v5, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v0, :cond_35

    if-eq v5, v4, :cond_35

    .line 877
    invoke-virtual {v3, v4, v5}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    goto :goto_1b

    .line 871
    .end local v4    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v5    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_33
    :goto_33
    iput-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastPred:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 881
    .end local v3    # "b":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_35
    :goto_35
    iput-object p1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 883
    move-object v0, p1

    .line 884
    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_38
    if-nez v0, :cond_3f

    iget-object v3, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    goto :goto_41

    :cond_3f
    iget-object v3, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 885
    .local v3, "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_41
    if-nez v3, :cond_44

    .line 886
    goto :goto_68

    .line 887
    :cond_44
    if-ne v3, v0, :cond_48

    .line 888
    const/4 v0, 0x0

    .line 889
    goto :goto_38

    .line 891
    :cond_48
    iget-object v4, v3, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 892
    .local v4, "item":Ljava/lang/Object;
    iget-boolean v5, v3, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eqz v5, :cond_5b

    .line 893
    if-eqz v4, :cond_5e

    if-eq v4, v3, :cond_5e

    .line 894
    invoke-static {v4}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 895
    iput-object v3, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 896
    return-void

    .line 899
    :cond_5b
    if-nez v4, :cond_5e

    .line 900
    goto :goto_68

    .line 903
    :cond_5e
    if-nez v0, :cond_62

    .line 904
    move-object v0, v3

    goto :goto_74

    .line 905
    :cond_62
    iget-object v5, v3, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->next:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-object v6, v5

    .local v6, "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-nez v5, :cond_6d

    .line 906
    nop

    .line 913
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v3    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .end local v4    # "item":Ljava/lang/Object;
    .end local v6    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_68
    iput-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 914
    iput-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 915
    return-void

    .line 907
    .restart local v0    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v3    # "s":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    .restart local v4    # "item":Ljava/lang/Object;
    .restart local v6    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_6d
    if-ne v3, v6, :cond_71

    .line 908
    const/4 v0, 0x0

    goto :goto_74

    .line 910
    :cond_71
    invoke-virtual {v0, v3, v6}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->casNext(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Z

    .line 912
    .end local v4    # "item":Ljava/lang/Object;
    .end local v6    # "n":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_74
    goto :goto_38
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .line 922
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 926
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 927
    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v0, :cond_a

    .line 930
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 931
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->advance(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    .line 932
    return-object v1

    .line 928
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public final remove()V
    .registers 4

    .line 936
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 937
    .local v0, "lastRet":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-eqz v0, :cond_15

    .line 940
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 941
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 942
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastPred:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    .line 944
    :cond_14
    return-void

    .line 938
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
