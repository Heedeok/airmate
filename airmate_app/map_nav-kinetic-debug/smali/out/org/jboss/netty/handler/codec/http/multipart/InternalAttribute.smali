.class public Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;
.super Ljava/lang/Object;
.source "InternalAttribute.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;


# instance fields
.field protected value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 37
    if-eqz p1, :cond_8

    .line 40
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void

    .line 38
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addValue(Ljava/lang/String;I)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "rank"    # I

    .line 44
    if-eqz p1, :cond_8

    .line 47
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    return-void

    .line 45
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .registers 5
    .param p1, "arg0"    # Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 72
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    if-eqz v0, :cond_c

    .line 76
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;)I

    move-result v0

    return v0

    .line 73
    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;)I
    .registers 4
    .param p1, "o"    # Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    .line 80
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-nez v0, :cond_6

    .line 65
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 68
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .registers 2

    .line 29
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->InternalAttribute:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 100
    const-string v0, "InternalAttribute"

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 59
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;I)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "rank"    # I

    .line 51
    if-eqz p1, :cond_8

    .line 54
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void

    .line 52
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 5

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "size":I
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, "elt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 87
    .end local v2    # "elt":Ljava/lang/String;
    goto :goto_7

    .line 88
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "elt":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v2    # "elt":Ljava/lang/String;
    goto :goto_b

    .line 96
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
