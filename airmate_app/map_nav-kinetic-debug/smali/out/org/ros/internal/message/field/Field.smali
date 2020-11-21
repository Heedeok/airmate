.class public abstract Lorg/ros/internal/message/field/Field;
.super Ljava/lang/Object;
.source "Field.java"


# instance fields
.field protected final isConstant:Z

.field protected final name:Ljava/lang/String;

.field protected final type:Lorg/ros/internal/message/field/FieldType;


# direct methods
.method protected constructor <init>(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "type"    # Lorg/ros/internal/message/field/FieldType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isConstant"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lorg/ros/internal/message/field/Field;->name:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lorg/ros/internal/message/field/Field;->type:Lorg/ros/internal/message/field/FieldType;

    .line 34
    iput-boolean p3, p0, Lorg/ros/internal/message/field/Field;->isConstant:Z

    .line 35
    return-void
.end method


# virtual methods
.method public abstract deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 93
    return v0

    .line 94
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 95
    return v1

    .line 96
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 97
    return v1

    .line 98
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/message/field/Field;

    .line 99
    .local v2, "other":Lorg/ros/internal/message/field/Field;
    iget-boolean v3, p0, Lorg/ros/internal/message/field/Field;->isConstant:Z

    iget-boolean v4, v2, Lorg/ros/internal/message/field/Field;->isConstant:Z

    if-eq v3, v4, :cond_1d

    .line 100
    return v1

    .line 101
    :cond_1d
    iget-object v3, p0, Lorg/ros/internal/message/field/Field;->name:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 102
    iget-object v3, v2, Lorg/ros/internal/message/field/Field;->name:Ljava/lang/String;

    if-eqz v3, :cond_31

    .line 103
    return v1

    .line 104
    :cond_26
    iget-object v3, p0, Lorg/ros/internal/message/field/Field;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/ros/internal/message/field/Field;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 105
    return v1

    .line 106
    :cond_31
    iget-object v3, p0, Lorg/ros/internal/message/field/Field;->type:Lorg/ros/internal/message/field/FieldType;

    if-nez v3, :cond_3a

    .line 107
    iget-object v3, v2, Lorg/ros/internal/message/field/Field;->type:Lorg/ros/internal/message/field/FieldType;

    if-eqz v3, :cond_45

    .line 108
    return v1

    .line 109
    :cond_3a
    iget-object v3, p0, Lorg/ros/internal/message/field/Field;->type:Lorg/ros/internal/message/field/FieldType;

    iget-object v4, v2, Lorg/ros/internal/message/field/Field;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 110
    return v1

    .line 111
    :cond_45
    return v0
.end method

.method public abstract getJavaTypeName()Ljava/lang/String;
.end method

.method public getMd5String()Ljava/lang/String;
    .registers 7

    .line 63
    invoke-virtual {p0}, Lorg/ros/internal/message/field/Field;->isConstant()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_29

    .line 64
    const-string v0, "%s %s=%s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/ros/internal/message/field/Field;->getType()Lorg/ros/internal/message/field/FieldType;

    move-result-object v5

    invoke-interface {v5}, Lorg/ros/internal/message/field/FieldType;->getMd5String()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0}, Lorg/ros/internal/message/field/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p0}, Lorg/ros/internal/message/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_29
    const-string v0, "%s %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/ros/internal/message/field/Field;->getType()Lorg/ros/internal/message/field/FieldType;

    move-result-object v4

    invoke-interface {v4}, Lorg/ros/internal/message/field/FieldType;->getMd5String()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lorg/ros/internal/message/field/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lorg/ros/internal/message/field/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/ros/internal/message/field/FieldType;
    .registers 2

    .line 48
    iget-object v0, p0, Lorg/ros/internal/message/field/Field;->type:Lorg/ros/internal/message/field/FieldType;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method

.method public hashCode()I
    .registers 6

    .line 82
    const/16 v0, 0x1f

    .line 83
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 84
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/ros/internal/message/field/Field;->isConstant:Z

    if-eqz v3, :cond_c

    const/16 v3, 0x4cf

    goto :goto_e

    :cond_c
    const/16 v3, 0x4d5

    :goto_e
    add-int/2addr v2, v3

    .line 85
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/field/Field;->name:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_18

    const/4 v3, 0x0

    goto :goto_1e

    :cond_18
    iget-object v3, p0, Lorg/ros/internal/message/field/Field;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1e
    add-int/2addr v1, v3

    .line 86
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/field/Field;->type:Lorg/ros/internal/message/field/FieldType;

    if-nez v3, :cond_26

    goto :goto_2c

    :cond_26
    iget-object v3, p0, Lorg/ros/internal/message/field/Field;->type:Lorg/ros/internal/message/field/FieldType;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2c
    add-int/2addr v2, v4

    .line 87
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public isConstant()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lorg/ros/internal/message/field/Field;->isConstant:Z

    return v0
.end method

.method public abstract serialize(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method
