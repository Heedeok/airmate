.class Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;
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
    name = "PoolableObjectFactoryAdaptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/PoolableObjectFactory<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<",
            "TK;TV;>;TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 629
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "keyedFactory":Lorg/apache/commons/pool/KeyedPoolableObjectFactory;, "Lorg/apache/commons/pool/KeyedPoolableObjectFactory<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    if-eqz p1, :cond_14

    .line 633
    if-eqz p2, :cond_c

    .line 636
    iput-object p1, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 637
    iput-object p2, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->key:Ljava/lang/Object;

    .line 638
    return-void

    .line 634
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedFactory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 674
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->activateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 675
    return-void
.end method

.method public destroyObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 655
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 656
    return-void
.end method

.method public makeObject()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 646
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public passivateObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 683
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 691
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 692
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "PoolableObjectFactoryAdaptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    const-string v1, "{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 694
    const-string v1, ", keyedFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 695
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 696
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validateObject(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 665
    .local p0, "this":Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;, "Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->keyedFactory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v1, p0, Lorg/apache/commons/pool/PoolUtils$PoolableObjectFactoryAdaptor;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
