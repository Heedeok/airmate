.class public abstract Lorg/apache/commons/pool/BasePoolableObjectFactory;
.super Ljava/lang/Object;
.source "BasePoolableObjectFactory.java"

# interfaces
.implements Lorg/apache/commons/pool/PoolableObjectFactory;


# annotations
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    .local p0, "this":Lorg/apache/commons/pool/BasePoolableObjectFactory;, "Lorg/apache/commons/pool/BasePoolableObjectFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;)V
    .registers 2
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

    .line 66
    .local p0, "this":Lorg/apache/commons/pool/BasePoolableObjectFactory;, "Lorg/apache/commons/pool/BasePoolableObjectFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public destroyObject(Ljava/lang/Object;)V
    .registers 2
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

    .line 48
    .local p0, "this":Lorg/apache/commons/pool/BasePoolableObjectFactory;, "Lorg/apache/commons/pool/BasePoolableObjectFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public abstract makeObject()Ljava/lang/Object;
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
.end method

.method public passivateObject(Ljava/lang/Object;)V
    .registers 2
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

    .line 75
    .local p0, "this":Lorg/apache/commons/pool/BasePoolableObjectFactory;, "Lorg/apache/commons/pool/BasePoolableObjectFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public validateObject(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/commons/pool/BasePoolableObjectFactory;, "Lorg/apache/commons/pool/BasePoolableObjectFactory<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method
