.class Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;
.super Ljava/lang/Object;
.source "PoolUtils.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedPoolableObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedKeyedPoolableObjectFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1941
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "keyedFactory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    if-eqz p1, :cond_f

    .line 1945
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 1946
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->lock:Ljava/lang/Object;

    .line 1947
    return-void

    .line 1943
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedFactory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1980
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1981
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->activateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1982
    monitor-exit v0

    .line 1983
    return-void

    .line 1982
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1962
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1963
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1964
    monitor-exit v0

    .line 1965
    return-void

    .line 1964
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public makeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1953
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1954
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1955
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1989
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1990
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1991
    monitor-exit v0

    .line 1992
    return-void

    .line 1991
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1999
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2000
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "SynchronizedKeyedPoolableObjectFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2001
    const-string v1, "{keyedFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2002
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2003
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 1971
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1972
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$SynchronizedKeyedPoolableObjectFactory;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1973
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
