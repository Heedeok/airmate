.class Lorg/ros/internal/message/field/ValueField;
.super Lorg/ros/internal/message/field/Field;
.source "ValueField.java"


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
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5
    .param p1, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "isConstant"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/message/field/FieldType;",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2, p4}, Lorg/ros/internal/message/field/Field;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Z)V

    .line 40
    iput-object p3, p0, Lorg/ros/internal/message/field/ValueField;->value:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method static newConstant(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/message/field/ValueField;
    .registers 5
    .param p0, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/internal/message/field/FieldType;",
            "Ljava/lang/String;",
            "TT;)",
            "Lorg/ros/internal/message/field/ValueField<",
            "TT;>;"
        }
    .end annotation

    .line 31
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/ros/internal/message/field/ValueField;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/ros/internal/message/field/ValueField;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method static newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)Lorg/ros/internal/message/field/ValueField;
    .registers 5
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
            "Lorg/ros/internal/message/field/ValueField<",
            "TT;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/ros/internal/message/field/ValueField;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/ros/internal/message/field/ValueField;-><init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 67
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    iget-boolean v0, p0, Lorg/ros/internal/message/field/ValueField;->isConstant:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 68
    iget-object v0, p0, Lorg/ros/internal/message/field/ValueField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-interface {v0, p1}, Lorg/ros/internal/message/field/FieldType;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/message/field/ValueField;->setValue(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 96
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 97
    return v0

    .line 98
    :cond_4
    invoke-super {p0, p1}, Lorg/ros/internal/message/field/Field;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 99
    return v2

    .line 100
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 101
    return v2

    .line 102
    :cond_17
    move-object v1, p1

    check-cast v1, Lorg/ros/internal/message/field/Field;

    .line 103
    .local v1, "other":Lorg/ros/internal/message/field/Field;
    invoke-virtual {p0}, Lorg/ros/internal/message/field/ValueField;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_27

    .line 104
    invoke-virtual {v1}, Lorg/ros/internal/message/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 105
    return v2

    .line 106
    :cond_27
    invoke-virtual {p0}, Lorg/ros/internal/message/field/ValueField;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lorg/ros/internal/message/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 107
    return v2

    .line 108
    :cond_36
    return v0
.end method

.method public getJavaTypeName()Ljava/lang/String;
    .registers 2

    .line 78
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/message/field/ValueField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-interface {v0}, Lorg/ros/internal/message/field/FieldType;->getJavaTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5String()Ljava/lang/String;
    .registers 5

    .line 73
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    const-string v0, "%s %s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/internal/message/field/ValueField;->type:Lorg/ros/internal/message/field/FieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/internal/message/field/ValueField;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/message/field/ValueField;->value:Ljava/lang/Object;

    if-nez v0, :cond_d

    .line 47
    iget-object v0, p0, Lorg/ros/internal/message/field/ValueField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-interface {v0}, Lorg/ros/internal/message/field/FieldType;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/message/field/ValueField;->setValue(Ljava/lang/Object;)V

    .line 49
    :cond_d
    iget-object v0, p0, Lorg/ros/internal/message/field/ValueField;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 88
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    const/16 v0, 0x1f

    .line 89
    .local v0, "prime":I
    invoke-super {p0}, Lorg/ros/internal/message/field/Field;->hashCode()I

    move-result v1

    .line 90
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Lorg/ros/internal/message/field/ValueField;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_18

    :cond_10
    invoke-virtual {p0}, Lorg/ros/internal/message/field/ValueField;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_18
    add-int/2addr v2, v3

    .line 91
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public serialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 62
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/message/field/ValueField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-virtual {p0}, Lorg/ros/internal/message/field/ValueField;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/ros/internal/message/field/FieldType;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 63
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 55
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-boolean v0, p0, Lorg/ros/internal/message/field/ValueField;->isConstant:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 57
    iput-object p1, p0, Lorg/ros/internal/message/field/ValueField;->value:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 83
    .local p0, "this":Lorg/ros/internal/message/field/ValueField;, "Lorg/ros/internal/message/field/ValueField<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueField<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/ValueField;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/field/ValueField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
