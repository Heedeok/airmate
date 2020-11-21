.class Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;
.super Ljava/util/TimerTask;
.source "GenericObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Evictor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;


# direct methods
.method private constructor <init>(Lorg/apache/commons/pool/impl/GenericObjectPool;)V
    .registers 2

    .line 1767
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>.Evictor;"
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/pool/impl/GenericObjectPool;Lorg/apache/commons/pool/impl/GenericObjectPool$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/apache/commons/pool/impl/GenericObjectPool;
    .param p2, "x1"    # Lorg/apache/commons/pool/impl/GenericObjectPool$1;

    .line 1767
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>.Evictor;"
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;-><init>(Lorg/apache/commons/pool/impl/GenericObjectPool;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1775
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;, "Lorg/apache/commons/pool/impl/GenericObjectPool<TT;>.Evictor;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->evict()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    .line 1778
    :catch_6
    move-exception v0

    .line 1781
    .local v0, "oome":Ljava/lang/OutOfMemoryError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/OutOfMemoryError;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_f

    .line 1776
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_d
    move-exception v0

    .line 1782
    :goto_e
    nop

    .line 1784
    :goto_f
    :try_start_f
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    invoke-static {v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->access$700(Lorg/apache/commons/pool/impl/GenericObjectPool;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15

    .line 1787
    goto :goto_16

    .line 1785
    :catch_15
    move-exception v0

    .line 1788
    :goto_16
    return-void
.end method
