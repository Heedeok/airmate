.class public Lorg/ros/message/MessageIdentifier;
.super Ljava/lang/Object;
.source "MessageIdentifier.java"


# instance fields
.field private name:Ljava/lang/String;

.field private pkg:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/ros/message/MessageIdentifier;->pkg:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/ros/message/MessageIdentifier;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static of(Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;

    .line 39
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 47
    new-instance v0, Lorg/ros/message/MessageIdentifier;

    invoke-direct {v0, p0}, Lorg/ros/message/MessageIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Type name is invalid or not fully qualified: \"%s\""

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lorg/ros/message/MessageIdentifier;

    invoke-direct {v0, p0, p1}, Lorg/ros/message/MessageIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private splitType()V
    .registers 4

    .line 73
    iget-object v0, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    const-string v1, "/"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "packageAndName":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/ros/message/MessageIdentifier;->pkg:Ljava/lang/String;

    .line 75
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/ros/message/MessageIdentifier;->name:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 108
    return v0

    .line 109
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 110
    return v1

    .line 111
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 112
    return v1

    .line 113
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/message/MessageIdentifier;

    .line 114
    .local v2, "other":Lorg/ros/message/MessageIdentifier;
    iget-object v3, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 115
    iget-object v3, v2, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 116
    return v1

    .line 117
    :cond_1f
    iget-object v3, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    iget-object v4, v2, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 118
    return v1

    .line 119
    :cond_2a
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lorg/ros/message/MessageIdentifier;->name:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 87
    invoke-direct {p0}, Lorg/ros/message/MessageIdentifier;->splitType()V

    .line 89
    :cond_7
    iget-object v0, p0, Lorg/ros/message/MessageIdentifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/ros/message/MessageIdentifier;->pkg:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 80
    invoke-direct {p0}, Lorg/ros/message/MessageIdentifier;->splitType()V

    .line 82
    :cond_7
    iget-object v0, p0, Lorg/ros/message/MessageIdentifier;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .line 60
    iget-object v0, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/message/MessageIdentifier;->pkg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/ros/message/MessageIdentifier;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/ros/message/MessageIdentifier;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lorg/ros/message/MessageIdentifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    .line 69
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2d
    iget-object v0, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 99
    const/16 v0, 0x1f

    .line 100
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 101
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_11

    :cond_b
    iget-object v3, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v2, v3

    .line 102
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 94
    const-string v0, "MessageIdentifier<%s>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/message/MessageIdentifier;->type:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
