.class final Lorg/jboss/netty/channel/group/CombinedIterator;
.super Ljava/lang/Object;
.source "CombinedIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final i1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final i2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lorg/jboss/netty/channel/group/CombinedIterator;, "Lorg/jboss/netty/channel/group/CombinedIterator<TE;>;"
    .local p1, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .local p2, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-eqz p1, :cond_16

    .line 33
    if-eqz p2, :cond_e

    .line 36
    iput-object p1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    .line 37
    iput-object p2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    .line 38
    iput-object p1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    .line 39
    return-void

    .line 34
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "i2"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "i1"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .line 42
    .local p0, "this":Lorg/jboss/netty/channel/group/CombinedIterator;, "Lorg/jboss/netty/channel/group/CombinedIterator<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 43
    .local v0, "hasNext":Z
    if-eqz v0, :cond_a

    .line 44
    const/4 v1, 0x1

    return v1

    .line 47
    :cond_a
    iget-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    iget-object v2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    if-ne v1, v2, :cond_19

    .line 48
    iget-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    .line 49
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/CombinedIterator;->hasNext()Z

    move-result v1

    return v1

    .line 51
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/jboss/netty/channel/group/CombinedIterator;, "Lorg/jboss/netty/channel/group/CombinedIterator<TE;>;"
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 58
    .local v0, "e":Ljava/lang/Object;, "TE;"
    return-object v0

    .line 59
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :catch_7
    move-exception v0

    .line 60
    .local v0, "e":Ljava/util/NoSuchElementException;
    iget-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    iget-object v2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    if-ne v1, v2, :cond_17

    .line 61
    iget-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    .line 62
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/CombinedIterator;->next()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 64
    :cond_17
    throw v0
.end method

.method public remove()V
    .registers 2

    .line 70
    .local p0, "this":Lorg/jboss/netty/channel/group/CombinedIterator;, "Lorg/jboss/netty/channel/group/CombinedIterator<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 71
    return-void
.end method
