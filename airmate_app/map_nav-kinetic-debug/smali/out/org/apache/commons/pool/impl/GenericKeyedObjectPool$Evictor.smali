.class Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;
.super Ljava/util/TimerTask;
.source "GenericKeyedObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Evictor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;


# direct methods
.method private constructor <init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)V
    .registers 2

    .line 2378
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Evictor;"
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
    .param p2, "x1"    # Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$1;

    .line 2378
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Evictor;"
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2387
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool<TK;TV;>.Evictor;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->evict()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    .line 2390
    :catch_6
    move-exception v0

    .line 2393
    .local v0, "oome":Ljava/lang/OutOfMemoryError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/OutOfMemoryError;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_f

    .line 2388
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_d
    move-exception v0

    .line 2394
    :goto_e
    nop

    .line 2397
    :goto_f
    :try_start_f
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->access$1600(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15

    .line 2400
    goto :goto_16

    .line 2398
    :catch_15
    move-exception v0

    .line 2401
    :goto_16
    return-void
.end method
