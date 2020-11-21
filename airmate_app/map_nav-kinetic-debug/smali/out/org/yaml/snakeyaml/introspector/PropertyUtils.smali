.class public Lorg/yaml/snakeyaml/introspector/PropertyUtils;
.super Ljava/lang/Object;
.source "PropertyUtils.java"


# instance fields
.field private allowReadOnlyProperties:Z

.field private beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

.field private final propertiesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readableProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    .line 33
    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    return-void
.end method


# virtual methods
.method protected createPropertySet(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;
    .registers 8
    .param p2, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 70
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 71
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-virtual {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getPropertiesMap(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 72
    .local v1, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/introspector/Property;

    .line 73
    .local v3, "property":Lorg/yaml/snakeyaml/introspector/Property;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/introspector/Property;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    if-nez v4, :cond_2d

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/introspector/Property;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 74
    :cond_2d
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 77
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    :cond_31
    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 57
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;
    .registers 5
    .param p2, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 61
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 64
    :cond_11
    invoke-virtual {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->createPropertySet(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;

    move-result-object v0

    .line 65
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0
.end method

.method protected getPropertiesMap(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Map;
    .registers 12
    .param p2, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 37
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 41
    :cond_11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/Property;>;"
    move-object v1, p1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_17
    if-eqz v1, :cond_51

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1f
    if-ge v4, v3, :cond_4c

    aget-object v5, v2, v4

    .line 44
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 45
    .local v6, "modifiers":I
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_49

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v7

    if-nez v7, :cond_49

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_49

    .line 47
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/yaml/snakeyaml/introspector/FieldProperty;

    invoke-direct {v8, v5}, Lorg/yaml/snakeyaml/introspector/FieldProperty;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "modifiers":I
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 42
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_4c
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_17

    .line 52
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_51
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0
.end method

.method public getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/yaml/snakeyaml/introspector/Property;"
        }
    .end annotation

    .line 81
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/Class;Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Lorg/yaml/snakeyaml/introspector/Property;
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Lorg/yaml/snakeyaml/introspector/Property;"
        }
    .end annotation

    .line 85
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p3}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getPropertiesMap(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Map;

    move-result-object v0

    .line 86
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/introspector/Property;

    .line 87
    .local v1, "property":Lorg/yaml/snakeyaml/introspector/Property;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/Property;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 91
    return-object v1

    .line 88
    :cond_13
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' on class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setAllowReadOnlyProperties(Z)V
    .registers 3
    .param p1, "allowReadOnlyProperties"    # Z

    .line 103
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    if-eq v0, p1, :cond_b

    .line 104
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    .line 105
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    :cond_b
    return-void
.end method

.method public setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .registers 3
    .param p1, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 95
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    if-eq v0, p1, :cond_10

    .line 96
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 97
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    :cond_10
    return-void
.end method
