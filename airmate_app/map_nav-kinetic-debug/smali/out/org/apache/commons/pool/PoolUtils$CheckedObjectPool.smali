.class Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;
.super Ljava/lang/Object;
.source "PoolUtils.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedObjectPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/ObjectPool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final pool:Lorg/apache/commons/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/ObjectPool;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/ObjectPool<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1087
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    .local p1, "pool":Lorg/apache/commons/pool/ObjectPool;, "Lorg/apache/commons/pool/ObjectPool<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    if-eqz p1, :cond_14

    .line 1091
    if-eqz p2, :cond_c

    .line 1094
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    .line 1095
    iput-object p2, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->type:Ljava/lang/Class;

    .line 1096
    return-void

    .line 1092
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1153
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->addObject()V

    .line 1154
    return-void
.end method

.method public borrowObject()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1105
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    .line 1106
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1107
    return-object v0

    .line 1109
    :cond_f
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Borrowed object is not of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1174
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->clear()V

    .line 1175
    return-void
.end method

.method public close()V
    .registers 2

    .line 1182
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1185
    goto :goto_7

    .line 1183
    :catch_6
    move-exception v0

    .line 1186
    :goto_7
    return-void
.end method

.method public getNumActive()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1167
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->getNumActive()I

    move-result v0

    return v0
.end method

.method public getNumIdle()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1160
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->getNumIdle()I

    move-result v0

    return v0
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1138
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1140
    :try_start_8
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/ObjectPool;->invalidateObject(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_f

    .line 1141
    :catch_e
    move-exception v0

    .line 1143
    :goto_f
    nop

    .line 1147
    return-void

    .line 1145
    :cond_11
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalidated object is not of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public returnObject(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1120
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1122
    :try_start_8
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/ObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_f

    .line 1123
    :catch_e
    move-exception v0

    .line 1125
    :goto_f
    nop

    .line 1129
    return-void

    .line 1127
    :cond_11
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returned object is not of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1196
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/ObjectPool;->setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V

    .line 1197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1204
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;, "Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1205
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CheckedObjectPool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1206
    const-string v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1207
    const-string v1, ", pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$CheckedObjectPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1208
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1209
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
