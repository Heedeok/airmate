.class public Lorg/jboss/netty/util/HashedWheelTimer;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Lorg/jboss/netty/util/Timer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;,
        Lorg/jboss/netty/util/HashedWheelTimer$Worker;
    }
.end annotation


# static fields
.field private static final id:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;


# instance fields
.field final iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ReusableIterator<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final mask:I

.field private final roundDuration:J

.field final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final tickDuration:J

.field final wheel:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation
.end field

.field volatile wheelCursor:I

.field private final worker:Lorg/jboss/netty/util/HashedWheelTimer$Worker;

.field final workerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 84
    const-class v0, Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance v0, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    const-class v1, Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 109
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 110
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "tickDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 121
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 122
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;I)V
    .registers 11
    .param p1, "tickDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "ticksPerWheel"    # I

    .line 133
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 5
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 145
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .registers 11
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "tickDuration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 159
    const/16 v5, 0x200

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V
    .registers 10
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "tickDuration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "ticksPerWheel"    # I

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;-><init>(Lorg/jboss/netty/util/HashedWheelTimer;)V

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->worker:Lorg/jboss/netty/util/HashedWheelTimer$Worker;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 176
    if-eqz p1, :cond_d9

    .line 179
    if-eqz p4, :cond_d1

    .line 182
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_ba

    .line 186
    if-lez p5, :cond_a3

    .line 192
    invoke-static {p5}, Lorg/jboss/netty/util/HashedWheelTimer;->createWheel(I)[Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    .line 193
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    invoke-static {v0}, Lorg/jboss/netty/util/HashedWheelTimer;->createIterators([Ljava/util/Set;)[Lorg/jboss/netty/util/internal/ReusableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;

    .line 194
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    .line 197
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    move-wide p2, v0

    iput-wide v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    .line 200
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p2, v0

    if-eqz v2, :cond_84

    iget-object v2, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v2, v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    cmp-long v2, p2, v0

    if-gez v2, :cond_84

    .line 207
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v0, v0

    int-to-long v0, v0

    mul-long v0, v0, p2

    iput-wide v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->roundDuration:J

    .line 209
    new-instance v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer;->worker:Lorg/jboss/netty/util/HashedWheelTimer$Worker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hashed wheel timer #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/jboss/netty/util/HashedWheelTimer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    .line 213
    sget-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->increase()V

    .line 214
    return-void

    .line 202
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tickDuration is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ticksPerWheel must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tickDuration must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_d1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_d9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createIterators([Ljava/util/Set;)[Lorg/jboss/netty/util/internal/ReusableIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;)[",
            "Lorg/jboss/netty/util/internal/ReusableIterator<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation

    .line 238
    .local p0, "wheel":[Ljava/util/Set;, "[Ljava/util/Set<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    array-length v0, p0

    new-array v0, v0, [Lorg/jboss/netty/util/internal/ReusableIterator;

    .line 239
    .local v0, "iterators":[Lorg/jboss/netty/util/internal/ReusableIterator;, "[Lorg/jboss/netty/util/internal/ReusableIterator<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 240
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/util/internal/ReusableIterator;

    aput-object v2, v0, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 242
    .end local v1    # "i":I
    :cond_14
    return-object v0
.end method

.method private static createWheel(I)[Ljava/util/Set;
    .registers 8
    .param p0, "ticksPerWheel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Set<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation

    .line 218
    if-lez p0, :cond_3d

    .line 222
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_26

    .line 227
    invoke-static {p0}, Lorg/jboss/netty/util/HashedWheelTimer;->normalizeTicksPerWheel(I)I

    move-result p0

    .line 228
    new-array v0, p0, [Ljava/util/Set;

    .line 229
    .local v0, "wheel":[Ljava/util/Set;, "[Ljava/util/Set<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_25

    .line 230
    new-instance v2, Lorg/jboss/netty/util/MapBackedSet;

    new-instance v3, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    const/16 v4, 0x10

    const v5, 0x3f733333    # 0.95f

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>(IFI)V

    invoke-direct {v2, v3}, Lorg/jboss/netty/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    aput-object v2, v0, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 233
    .end local v1    # "i":I
    :cond_25
    return-object v0

    .line 223
    .end local v0    # "wheel":[Ljava/util/Set;, "[Ljava/util/Set<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ticksPerWheel may not be greater than 2^30: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ticksPerWheel must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static normalizeTicksPerWheel(I)I
    .registers 2
    .param p0, "ticksPerWheel"    # I

    .line 246
    const/4 v0, 0x1

    .line 247
    .local v0, "normalizedTicksPerWheel":I
    :goto_1
    if-ge v0, p0, :cond_6

    .line 248
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_6
    return v0
.end method


# virtual methods
.method public newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;
    .registers 10
    .param p1, "task"    # Lorg/jboss/netty/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    .local v0, "currentTime":J
    if-eqz p1, :cond_2a

    .line 313
    if-eqz p4, :cond_22

    .line 317
    iget-object v2, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_13

    .line 318
    invoke-virtual {p0}, Lorg/jboss/netty/util/HashedWheelTimer;->start()V

    .line 321
    :cond_13
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    .line 322
    new-instance v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    add-long v3, v0, p2

    invoke-direct {v2, p0, p1, v3, v4}, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;-><init>(Lorg/jboss/netty/util/HashedWheelTimer;Lorg/jboss/netty/util/TimerTask;J)V

    .line 323
    .local v2, "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    invoke-virtual {p0, v2, p2, p3}, Lorg/jboss/netty/util/HashedWheelTimer;->scheduleTimeout(Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;J)V

    .line 324
    return-object v2

    .line 314
    .end local v2    # "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    :cond_22
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :cond_2a
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "task"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method scheduleTimeout(Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;J)V
    .registers 23
    .param p1, "timeout"    # Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .param p2, "delay"    # J

    .line 330
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-wide v3, v1, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    cmp-long v0, p2, v3

    if-gez v0, :cond_d

    .line 331
    iget-wide v3, v1, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    goto :goto_f

    .line 335
    :cond_d
    move-wide/from16 v3, p2

    .end local p2    # "delay":J
    .local v3, "delay":J
    :goto_f
    iget-wide v5, v1, Lorg/jboss/netty/util/HashedWheelTimer;->roundDuration:J

    rem-long v5, v3, v5

    .line 336
    .local v5, "lastRoundDelay":J
    iget-wide v7, v1, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    rem-long v7, v3, v7

    .line 337
    .local v7, "lastTickDelay":J
    iget-wide v9, v1, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    div-long v9, v5, v9

    const/4 v0, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    cmp-long v14, v7, v12

    if-eqz v14, :cond_25

    const/4 v14, 0x1

    goto :goto_26

    :cond_25
    const/4 v14, 0x0

    :goto_26
    int-to-long v14, v14

    add-long/2addr v9, v14

    .line 340
    .local v9, "relativeIndex":J
    iget-wide v14, v1, Lorg/jboss/netty/util/HashedWheelTimer;->roundDuration:J

    div-long v14, v3, v14

    move-wide/from16 v16, v7

    .end local v7    # "lastTickDelay":J
    .local v16, "lastTickDelay":J
    iget-wide v7, v1, Lorg/jboss/netty/util/HashedWheelTimer;->roundDuration:J

    rem-long v7, v3, v7

    cmp-long v18, v7, v12

    if-nez v18, :cond_38

    const/4 v0, 0x1

    nop

    :cond_38
    int-to-long v7, v0

    sub-long/2addr v14, v7

    .line 344
    .local v14, "remainingRounds":J
    iget-object v0, v1, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 346
    :try_start_43
    iget v0, v1, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    int-to-long v7, v0

    add-long/2addr v7, v9

    iget v0, v1, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    int-to-long v11, v0

    and-long/2addr v7, v11

    long-to-int v0, v7

    .line 347
    .local v0, "stopIndex":I
    iput v0, v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->stopIndex:I

    .line 348
    iput-wide v14, v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    .line 350
    iget-object v7, v1, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    aget-object v7, v7, v0

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_43 .. :try_end_57} :catchall_63

    .line 351
    .end local v0    # "stopIndex":I
    nop

    .line 354
    iget-object v0, v1, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_63
    move-exception v0

    .line 354
    move-object/from16 v7, p0

    .local v7, "this":Lorg/jboss/netty/util/HashedWheelTimer;
    move-object/from16 v2, p1

    .end local p1    # "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .local v2, "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    move-wide/from16 v11, v16

    .end local v16    # "lastTickDelay":J
    .local v11, "lastTickDelay":J
    move-wide v8, v9

    .end local v9    # "relativeIndex":J
    .local v8, "relativeIndex":J
    move-wide v13, v14

    .end local v14    # "remainingRounds":J
    .local v13, "remainingRounds":J
    iget-object v10, v7, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 352
    throw v0
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 261
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_18

    .line 265
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_16

    .line 266
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_20

    .line 268
    :cond_16
    monitor-exit p0

    return-void

    .line 262
    :cond_18
    :try_start_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot be started once stopped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    .line 260
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jboss/netty/util/Timeout;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_5b

    .line 278
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_19

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_81

    monitor-exit p0

    return-object v0

    .line 282
    :cond_19
    const/4 v0, 0x0

    .line 283
    .local v0, "interrupted":Z
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 284
    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_81

    .line 286
    :try_start_27
    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2e} :catch_2f
    .catchall {:try_start_27 .. :try_end_2e} :catchall_81

    goto :goto_31

    .line 287
    :catch_2f
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 289
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_31
    goto :goto_1a

    .line 292
    :cond_32
    if-eqz v0, :cond_3b

    .line 293
    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 296
    :cond_3b
    sget-object v1, Lorg/jboss/netty/util/HashedWheelTimer;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->decrease()V

    .line 298
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 299
    .local v1, "unprocessedTimeouts":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/util/Timeout;>;"
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    .local v3, "arr$":[Ljava/util/Set;
    array-length v4, v3

    .local v2, "i$":I
    .local v4, "len$":I
    :goto_48
    if-ge v2, v4, :cond_55

    aget-object v5, v3, v2

    .line 300
    .local v5, "bucket":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 301
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 299
    .end local v5    # "bucket":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 304
    .end local v2    # "i$":I
    .end local v3    # "arr$":[Ljava/util/Set;
    .end local v4    # "len$":I
    :cond_55
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_81

    monitor-exit p0

    return-object v2

    .line 272
    .end local v0    # "interrupted":Z
    .end local v1    # "unprocessedTimeouts":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/util/Timeout;>;"
    :cond_5b
    :try_start_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".stop() cannot be called from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/jboss/netty/util/TimerTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_81
    .catchall {:try_start_5b .. :try_end_81} :catchall_81

    .line 270
    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0
.end method
