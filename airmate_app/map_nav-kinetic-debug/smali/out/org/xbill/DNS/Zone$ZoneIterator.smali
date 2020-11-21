.class Lorg/xbill/DNS/Zone$ZoneIterator;
.super Ljava/lang/Object;
.source "Zone.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Zone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoneIterator"
.end annotation


# instance fields
.field private count:I

.field private current:[Lorg/xbill/DNS/RRset;

.field private final synthetic this$0:Lorg/xbill/DNS/Zone;

.field private wantLastSOA:Z

.field private zentries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/Zone;Z)V
    .registers 10
    .param p2, "axfr"    # Z

    .line 39
    iput-object p1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    monitor-enter p1

    .line 41
    :try_start_6
    invoke-static {p1}, Lorg/xbill/DNS/Zone;->access$000(Lorg/xbill/DNS/Zone;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zentries:Ljava/util/Iterator;

    .line 42
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_53

    .line 43
    iput-boolean p2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    .line 44
    invoke-static {p1}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/xbill/DNS/Zone;->access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object p1

    .line 45
    .local p1, "sets":[Lorg/xbill/DNS/RRset;
    array-length v0, p1

    new-array v0, v0, [Lorg/xbill/DNS/RRset;

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x2

    move v2, v0

    const/4 v0, 0x2

    .local v0, "j":I
    .local v2, "i":I
    :goto_28
    array-length v3, p1

    if-ge v2, v3, :cond_52

    .line 47
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    .line 48
    .local v3, "type":I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_3c

    .line 49
    iget-object v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    const/4 v5, 0x0

    aget-object v6, p1, v2

    aput-object v6, v4, v5

    goto :goto_4f

    .line 50
    :cond_3c
    if-ne v3, v1, :cond_46

    .line 51
    iget-object v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    aget-object v5, p1, v2

    const/4 v6, 0x1

    aput-object v5, v4, v6

    goto :goto_4f

    .line 53
    :cond_46
    iget-object v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    add-int/lit8 v5, v0, 0x1

    .local v5, "j":I
    aget-object v6, p1, v2

    aput-object v6, v4, v0

    .line 46
    move v0, v5

    .end local v3    # "type":I
    .end local v5    # "j":I
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 55
    .end local v0    # "j":I
    .end local v2    # "i":I
    :cond_52
    return-void

    .line 42
    .end local p1    # "sets":[Lorg/xbill/DNS/RRset;
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 6

    .line 64
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone$ZoneIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 67
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 68
    iput-boolean v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    .line 69
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    iget-object v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-static {v1}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Zone;->access$300(Lorg/xbill/DNS/Zone;Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1b
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    iget v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    aget-object v0, v0, v2

    .line 72
    .local v0, "set":Ljava/lang/Object;
    iget v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    iget-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    array-length v3, v3

    if-ne v2, v3, :cond_63

    .line 73
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    .line 74
    :goto_2f
    iget-object v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zentries:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 75
    iget-object v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zentries:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-static {v4}, Lorg/xbill/DNS/Zone;->access$400(Lorg/xbill/DNS/Zone;)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 77
    goto :goto_2f

    .line 78
    :cond_50
    iget-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/Zone;->access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 79
    .local v3, "sets":[Lorg/xbill/DNS/RRset;
    array-length v4, v3

    if-nez v4, :cond_5e

    .line 80
    goto :goto_2f

    .line 81
    :cond_5e
    iput-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    .line 82
    iput v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    .line 83
    nop

    .line 86
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "sets":[Lorg/xbill/DNS/RRset;
    :cond_63
    return-object v0

    .line 65
    .end local v0    # "set":Ljava/lang/Object;
    :cond_64
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
