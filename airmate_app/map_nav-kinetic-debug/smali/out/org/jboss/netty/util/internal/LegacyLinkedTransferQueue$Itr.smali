.class final Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;
.super Ljava/lang/Object;
.source "LegacyLinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;
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
.field private lastPred:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

.field private lastRet:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

.field final synthetic this$0:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;)V
    .registers 2

    .line 895
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>.Itr;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->advance(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)V

    .line 897
    return-void
.end method

.method private advance(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)V
    .registers 5
    .param p1, "prev"    # Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 876
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->lastPred:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 877
    iput-object p1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 878
    if-nez p1, :cond_d

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-result-object v0

    .line 879
    .local v0, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :goto_13
    if-eqz v0, :cond_32

    .line 880
    iget-object v1, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 881
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->isData:Z

    if-eqz v2, :cond_28

    .line 882
    if-eqz v1, :cond_2b

    if-eq v1, v0, :cond_2b

    .line 883
    invoke-static {v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 884
    iput-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 885
    return-void

    .line 888
    :cond_28
    if-nez v1, :cond_2b

    .line 889
    goto :goto_32

    .line 879
    .end local v1    # "item":Ljava/lang/Object;
    :cond_2b
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_13

    .line 892
    .end local v0    # "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    :cond_32
    :goto_32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 893
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 900
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 904
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 905
    .local v0, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-eqz v0, :cond_a

    .line 908
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 909
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->advance(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)V

    .line 910
    return-object v1

    .line 906
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .registers 4

    .line 914
    .local p0, "this":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    .line 915
    .local v0, "p":Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;
    if-eqz v0, :cond_12

    .line 918
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;->tryMatchData()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 919
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Itr;->lastPred:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue$Node;)V

    .line 921
    :cond_11
    return-void

    .line 916
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
