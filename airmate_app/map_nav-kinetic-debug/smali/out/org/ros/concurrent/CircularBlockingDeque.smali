.class public Lorg/ros/concurrent/CircularBlockingDeque;
.super Ljava/lang/Object;
.source "CircularBlockingDeque.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final deque:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private length:I

.field private final limit:I

.field private final mutex:Ljava/lang/Object;

.field private start:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 55
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->deque:[Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    .line 58
    iput p1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    .line 60
    iput v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/ros/concurrent/CircularBlockingDeque;)I
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/CircularBlockingDeque;

    .line 29
    iget v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    return v0
.end method

.method static synthetic access$100(Lorg/ros/concurrent/CircularBlockingDeque;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/CircularBlockingDeque;

    .line 29
    iget-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->deque:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/ros/concurrent/CircularBlockingDeque;)I
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/CircularBlockingDeque;

    .line 29
    iget v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    return v0
.end method

.method static synthetic access$300(Lorg/ros/concurrent/CircularBlockingDeque;)I
    .registers 2
    .param p0, "x0"    # Lorg/ros/concurrent/CircularBlockingDeque;

    .line 29
    iget v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    return v0
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gez v1, :cond_f

    .line 95
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    goto :goto_14

    .line 97
    :cond_f
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    .line 99
    :goto_14
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->deque:[Ljava/lang/Object;

    iget v3, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    aput-object p1, v1, v3

    .line 100
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    iget v3, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    if-ge v1, v3, :cond_25

    .line 101
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    .line 103
    :cond_25
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 104
    monitor-exit v0

    .line 105
    return v2

    .line 104
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public addLast(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->deque:[Ljava/lang/Object;

    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    iget v3, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    rem-int/2addr v2, v3

    aput-object p1, v1, v2

    .line 74
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1f

    .line 75
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    add-int/2addr v1, v3

    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    rem-int/2addr v1, v2

    iput v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    goto :goto_24

    .line 77
    :cond_1f
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    .line 79
    :goto_24
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 80
    monitor-exit v0

    .line 81
    return v3

    .line 80
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 184
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<TT;>;"
    iget v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<TT;>;"
    new-instance v0, Lorg/ros/concurrent/CircularBlockingDeque$1;

    invoke-direct {v0, p0}, Lorg/ros/concurrent/CircularBlockingDeque$1;-><init>(Lorg/ros/concurrent/CircularBlockingDeque;)V

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    if-lez v1, :cond_f

    .line 140
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->deque:[Ljava/lang/Object;

    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    aget-object v1, v1, v2

    monitor-exit v0

    return-object v1

    .line 142
    :cond_f
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 143
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public peekLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    if-lez v1, :cond_17

    .line 177
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->deque:[Ljava/lang/Object;

    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    iget v3, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    monitor-exit v0

    return-object v1

    .line 179
    :cond_17
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 180
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public takeFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :goto_3
    :try_start_3
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    if-lez v1, :cond_20

    .line 120
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->deque:[Ljava/lang/Object;

    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    aget-object v1, v1, v2

    .line 121
    .local v1, "entry":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    rem-int/2addr v2, v3

    iput v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    .line 122
    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    .line 123
    nop

    .line 125
    nop

    .line 127
    monitor-exit v0

    .line 128
    return-object v1

    .line 125
    .end local v1    # "entry":Ljava/lang/Object;, "TT;"
    :cond_20
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 127
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public takeLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :goto_3
    :try_start_3
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    if-lez v1, :cond_1f

    .line 158
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->deque:[Ljava/lang/Object;

    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->start:I

    iget v3, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/ros/concurrent/CircularBlockingDeque;->limit:I

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 159
    .local v1, "entry":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/ros/concurrent/CircularBlockingDeque;->length:I

    .line 160
    nop

    .line 162
    nop

    .line 164
    monitor-exit v0

    .line 165
    return-object v1

    .line 162
    .end local v1    # "entry":Ljava/lang/Object;, "TT;"
    :cond_1f
    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 164
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method
