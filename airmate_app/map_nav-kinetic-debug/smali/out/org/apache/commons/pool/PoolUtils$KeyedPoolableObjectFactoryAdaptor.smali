.class Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;
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
    name = "KeyedPoolableObjectFactoryAdaptor"
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
.field private final factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/PoolableObjectFactory<",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 716
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/pool/PoolableObjectFactory;, "Lorg/apache/commons/pool/PoolableObjectFactory<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    if-eqz p1, :cond_8

    .line 720
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 721
    return-void

    .line 718
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
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

    .line 761
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p2}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V

    .line 762
    return-void
.end method

.method public destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
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

    .line 740
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p2}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V

    .line 741
    return-void
.end method

.method public makeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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

    .line 730
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
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

    .line 771
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p2}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V

    .line 772
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 779
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 780
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "KeyedPoolableObjectFactoryAdaptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    const-string v1, "{factory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 782
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 783
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 751
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$KeyedPoolableObjectFactoryAdaptor;->factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p2}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
