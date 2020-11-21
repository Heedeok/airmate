.class Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPool.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectTimestampPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field tstamp:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2305
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Ljava/lang/Object;J)V

    .line 2306
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;J)V
    .registers 4
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 2313
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2314
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    .line 2315
    iput-wide p2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    .line 2316
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2337
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->compareTo(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<",
            "TT;>;)I"
        }
    .end annotation

    .line 2348
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    .local p1, "other":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    iget-wide v2, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    sub-long/2addr v0, v2

    .line 2349
    .local v0, "tstampdiff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    .line 2352
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    return v2

    .line 2355
    :cond_15
    const-wide/32 v2, -0x80000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method public getTstamp()J
    .registers 3

    .line 2370
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2363
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2325
    .local p0, "this":Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;, "Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
