.class final Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;
.super Ljava/lang/Object;
.source "AtomicFieldUpdaterUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;
    }
.end annotation


# static fields
.field private static final AVAILABLE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "available":Z
    :try_start_1
    const-class v1, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;

    const-class v2, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;

    const-string v3, "next"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 40
    .local v1, "tmp":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;>;"
    new-instance v2, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;

    invoke-direct {v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;-><init>()V

    .line 41
    .local v2, "testNode":Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;
    invoke-virtual {v1, v2, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    iget-object v3, v2, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;->next:Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;

    if-ne v3, v2, :cond_19

    .line 46
    const/4 v0, 0x1

    .line 49
    .end local v1    # "tmp":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;>;"
    .end local v2    # "testNode":Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;
    goto :goto_20

    .line 44
    .restart local v1    # "tmp":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;>;"
    .restart local v2    # "testNode":Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;
    :cond_19
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_1f

    .line 47
    .end local v1    # "tmp":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;>;"
    .end local v2    # "testNode":Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;
    :catch_1f
    move-exception v1

    .line 50
    :goto_20
    sput-boolean v0, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->AVAILABLE:Z

    .line 51
    .end local v0    # "available":Z
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static isAvailable()Z
    .registers 1

    .line 70
    sget-boolean v0, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->AVAILABLE:Z

    return v0
.end method

.method static newIntUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "TT;>;"
        }
    .end annotation

    .line 62
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v0, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->AVAILABLE:Z

    if-eqz v0, :cond_9

    .line 63
    invoke-static {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    return-object v0

    .line 65
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method static newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 4
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "TT;TV;>;"
        }
    .end annotation

    .line 54
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "vclass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    sget-boolean v0, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->AVAILABLE:Z

    if-eqz v0, :cond_9

    .line 55
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0

    .line 57
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method
