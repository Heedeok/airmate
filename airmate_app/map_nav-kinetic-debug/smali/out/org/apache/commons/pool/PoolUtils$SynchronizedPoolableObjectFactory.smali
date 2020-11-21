.class Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;
.super Ljava/lang/Object;
.source "PoolUtils.java"

# interfaces
.implements Lorg/apache/commons/pool/PoolableObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedPoolableObjectFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/PoolableObjectFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1854
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1855
    if-eqz p1, :cond_f

    .line 1858
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 1859
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->lock:Ljava/lang/Object;

    .line 1860
    return-void

    .line 1856
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1893
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1894
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V

    .line 1895
    monitor-exit v0

    .line 1896
    return-void

    .line 1895
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public destroyObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1875
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1876
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V

    .line 1877
    monitor-exit v0

    .line 1878
    return-void

    .line 1877
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public makeObject()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1866
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1867
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1868
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public passivateObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1902
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1903
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V

    .line 1904
    monitor-exit v0

    .line 1905
    return-void

    .line 1904
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1912
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1913
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "SynchronizedPoolableObjectFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1914
    const-string v1, "{factory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1915
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1916
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validateObject(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1884
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1885
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedPoolableObjectFactory;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1886
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
