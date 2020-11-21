.class public Lorg/apache/xmlrpc/server/PropertyHandlerMapping;
.super Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;
.source "PropertyHandlerMapping.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;-><init>()V

    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .param p1, "pKey"    # Ljava/lang/String;
    .param p2, "pClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->registerPublicMethods(Ljava/lang/String;Ljava/lang/Class;)V

    .line 112
    return-void
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 7
    .param p1, "pClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "pResource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 52
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_a

    .line 55
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->load(Ljava/lang/ClassLoader;Ljava/net/URL;)V

    .line 56
    return-void

    .line 53
    :cond_a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to locate resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .registers 5
    .param p1, "pClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "pURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 68
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 69
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->load(Ljava/lang/ClassLoader;Ljava/util/Map;)V

    .line 70
    return-void
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)V
    .registers 8
    .param p1, "pClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "pMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 80
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->newHandlerClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 85
    .local v4, "c":Ljava/lang/Class;
    invoke-virtual {p0, v2, v4}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->registerPublicMethods(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "c":Ljava/lang/Class;
    goto :goto_8

    .line 87
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_28
    return-void
.end method

.method protected newHandlerClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 8
    .param p1, "pClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "pClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_26

    .line 96
    .local v0, "c":Ljava/lang/Class;
    nop

    .line 95
    nop

    .line 97
    if-eqz v0, :cond_9

    .line 100
    return-object v0

    .line 98
    :cond_9
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " returned null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 94
    .end local v0    # "c":Ljava/lang/Class;
    :catch_26
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeHandler(Ljava/lang/String;)V
    .registers 5
    .param p1, "pKey"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->handlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 120
    .end local v1    # "k":Ljava/lang/String;
    :cond_1f
    goto :goto_a

    .line 121
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_20
    return-void
.end method
