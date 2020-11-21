.class abstract Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$ListTypeConverter;
.super Ljava/lang/Object;
.source "TypeConverterFactoryImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ListTypeConverter"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .param p1, "pClass"    # Ljava/lang/Class;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$ListTypeConverter;->clazz:Ljava/lang/Class;

    .line 60
    return-void
.end method


# virtual methods
.method public backConvert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 89
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 68
    if-nez p1, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    iget-object v0, p0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$ListTypeConverter;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 72
    return-object p1

    .line 74
    :cond_11
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2a

    .line 75
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 76
    .local v0, "objects":[Ljava/lang/Object;
    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$ListTypeConverter;->newList(I)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "result":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    array-length v3, v0

    if-ge v2, v3, :cond_29

    .line 78
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 80
    .end local v2    # "i":I
    :cond_29
    return-object v1

    .line 82
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "result":Ljava/util/List;
    :cond_2a
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 83
    .local v0, "collection":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$ListTypeConverter;->newList(I)Ljava/util/List;

    move-result-object v1

    .line 84
    .restart local v1    # "result":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    return-object v1
.end method

.method public isConvertable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 64
    if-eqz p1, :cond_d

    instance-of v0, p1, [Ljava/lang/Object;

    if-nez v0, :cond_d

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method protected abstract newList(I)Ljava/util/List;
.end method
