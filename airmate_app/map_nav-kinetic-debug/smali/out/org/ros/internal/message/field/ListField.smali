.class public Lorg/ros/internal/message/field/ListField;
.super Lorg/ros/internal/message/field/Field;
.source "ListField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/internal/message/field/Field;"
    }
.end annotation


# instance fields
.field private value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p2, "name"    # Ljava/lang/String;

    .line 41
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/internal/message/field/Field;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Z)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    .line 43
    return-void
.end method

.method public static newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)Lorg/ros/internal/message/field/ListField;
    .registers 3
    .param p0, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/internal/message/field/FieldType;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/internal/message/field/ListField<",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/ros/internal/message/field/ListField;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/message/field/ListField;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 68
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    .line 70
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 71
    iget-object v2, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    iget-object v3, p0, Lorg/ros/internal/message/field/ListField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-interface {v3, p1}, Lorg/ros/internal/message/field/FieldType;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 73
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 101
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 102
    return v0

    .line 103
    :cond_4
    invoke-super {p0, p1}, Lorg/ros/internal/message/field/Field;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 104
    return v2

    .line 105
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 106
    return v2

    .line 107
    :cond_17
    move-object v1, p1

    check-cast v1, Lorg/ros/internal/message/field/ListField;

    .line 108
    .local v1, "other":Lorg/ros/internal/message/field/ListField;
    iget-object v3, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    if-nez v3, :cond_23

    .line 109
    iget-object v3, v1, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    if-eqz v3, :cond_2e

    .line 110
    return v2

    .line 111
    :cond_23
    iget-object v3, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    iget-object v4, v1, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 112
    return v2

    .line 113
    :cond_2e
    return v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 5

    .line 82
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    const-string v0, "java.util.List<%s>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/internal/message/field/ListField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-interface {v2}, Lorg/ros/internal/message/field/FieldType;->getJavaTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5String()Ljava/lang/String;
    .registers 5

    .line 77
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    const-string v0, "%s %s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/internal/message/field/ListField;->type:Lorg/ros/internal/message/field/FieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/internal/message/field/ListField;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 32
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    invoke-virtual {p0}, Lorg/ros/internal/message/field/ListField;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 92
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    const/16 v0, 0x1f

    .line 93
    .local v0, "prime":I
    invoke-super {p0}, Lorg/ros/internal/message/field/Field;->hashCode()I

    move-result v1

    .line 94
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_14

    :cond_e
    iget-object v3, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v2, v3

    .line 95
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public serialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 60
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/ros/internal/message/field/ListField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-interface {v2, v1, p1}, Lorg/ros/internal/message/field/FieldType;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 63
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_f

    .line 64
    :cond_1f
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 54
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/ros/internal/message/field/ListField;->value:Ljava/util/List;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 87
    .local p0, "this":Lorg/ros/internal/message/field/ListField;, "Lorg/ros/internal/message/field/ListField<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListField<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/ListField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/ListField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
