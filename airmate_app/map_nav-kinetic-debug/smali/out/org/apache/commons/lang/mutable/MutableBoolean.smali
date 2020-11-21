.class public Lorg/apache/commons/lang/mutable/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"

# interfaces
.implements Lorg/apache/commons/lang/mutable/Mutable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = -0x430a31a5c56f1c87L


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    .line 60
    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/mutable/MutableBoolean;

    .line 98
    .local v0, "other":Lorg/apache/commons/lang/mutable/MutableBoolean;
    iget-boolean v1, v0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    .line 99
    .local v1, "anotherVal":Z
    iget-boolean v2, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    if-ne v2, v1, :cond_b

    const/4 v2, 0x0

    goto :goto_12

    :cond_b
    iget-boolean v2, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, -0x1

    :goto_12
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 113
    instance-of v0, p1, Lorg/apache/commons/lang/mutable/MutableBoolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 114
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang/mutable/MutableBoolean;

    invoke-virtual {v2}, Lorg/apache/commons/lang/mutable/MutableBoolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_12

    const/4 v1, 0x1

    nop

    :cond_12
    return v1

    .line 116
    :cond_13
    return v1
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 126
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 136
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    if-eqz v0, :cond_b

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_e

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :goto_e
    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 160
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/mutable/MutableBoolean;->setValue(Z)V

    .line 161
    return-void
.end method

.method public setValue(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 146
    iput-boolean p1, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 169
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
