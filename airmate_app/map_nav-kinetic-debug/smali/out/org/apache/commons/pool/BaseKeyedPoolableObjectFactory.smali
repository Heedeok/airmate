.class public abstract Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory;
.super Ljava/lang/Object;
.source "BaseKeyedPoolableObjectFactory.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedPoolableObjectFactory;


# annotations
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
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

    .line 83
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
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

    .line 56
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public abstract makeObject(Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
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

    .line 96
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method
