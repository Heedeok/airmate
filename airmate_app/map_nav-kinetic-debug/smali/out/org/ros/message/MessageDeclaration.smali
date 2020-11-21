.class public Lorg/ros/message/MessageDeclaration;
.super Ljava/lang/Object;
.source "MessageDeclaration.java"


# instance fields
.field private final definition:Ljava/lang/String;

.field private final messageIdentifier:Lorg/ros/message/MessageIdentifier;


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageIdentifier;Ljava/lang/String;)V
    .registers 3
    .param p1, "messageIdentifier"    # Lorg/ros/message/MessageIdentifier;
    .param p2, "definition"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    .line 49
    iput-object p2, p0, Lorg/ros/message/MessageDeclaration;->definition:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "definition"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lorg/ros/message/MessageDeclaration;

    invoke-static {p0}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/ros/message/MessageDeclaration;-><init>(Lorg/ros/message/MessageIdentifier;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 90
    return v0

    .line 91
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 92
    return v1

    .line 93
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 94
    return v1

    .line 95
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/message/MessageDeclaration;

    .line 96
    .local v2, "other":Lorg/ros/message/MessageDeclaration;
    iget-object v3, p0, Lorg/ros/message/MessageDeclaration;->definition:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 97
    iget-object v3, v2, Lorg/ros/message/MessageDeclaration;->definition:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 98
    return v1

    .line 99
    :cond_1f
    iget-object v3, p0, Lorg/ros/message/MessageDeclaration;->definition:Ljava/lang/String;

    iget-object v4, v2, Lorg/ros/message/MessageDeclaration;->definition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 100
    return v1

    .line 101
    :cond_2a
    iget-object v3, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    if-nez v3, :cond_33

    .line 102
    iget-object v3, v2, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    if-eqz v3, :cond_3e

    .line 103
    return v1

    .line 104
    :cond_33
    iget-object v3, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    iget-object v4, v2, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/message/MessageIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 105
    return v1

    .line 106
    :cond_3e
    return v0
.end method

.method public getDefinition()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/ros/message/MessageDeclaration;->definition:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lorg/ros/message/MessageDeclaration;->definition:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdentifier()Lorg/ros/message/MessageIdentifier;
    .registers 2

    .line 53
    iget-object v0, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v0}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 80
    const/16 v0, 0x1f

    .line 81
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 82
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/message/MessageDeclaration;->definition:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/message/MessageDeclaration;->definition:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 83
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v3}, Lorg/ros/message/MessageIdentifier;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 84
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 75
    const-string v0, "MessageDeclaration<%s>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/message/MessageDeclaration;->messageIdentifier:Lorg/ros/message/MessageIdentifier;

    invoke-virtual {v2}, Lorg/ros/message/MessageIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
