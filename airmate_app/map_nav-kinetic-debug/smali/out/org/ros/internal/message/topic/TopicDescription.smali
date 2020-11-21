.class public Lorg/ros/internal/message/topic/TopicDescription;
.super Lorg/ros/message/MessageDeclaration;
.source "TopicDescription.java"


# instance fields
.field private final md5Checksum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "definition"    # Ljava/lang/String;
    .param p3, "md5Checksum"    # Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/ros/message/MessageDeclaration;-><init>(Lorg/ros/message/MessageIdentifier;Ljava/lang/String;)V

    .line 33
    iput-object p3, p0, Lorg/ros/internal/message/topic/TopicDescription;->md5Checksum:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 56
    return v0

    .line 57
    :cond_4
    invoke-super {p0, p1}, Lorg/ros/message/MessageDeclaration;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 58
    return v2

    .line 59
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 60
    return v2

    .line 61
    :cond_17
    move-object v1, p1

    check-cast v1, Lorg/ros/internal/message/topic/TopicDescription;

    .line 62
    .local v1, "other":Lorg/ros/internal/message/topic/TopicDescription;
    iget-object v3, p0, Lorg/ros/internal/message/topic/TopicDescription;->md5Checksum:Ljava/lang/String;

    if-nez v3, :cond_23

    .line 63
    iget-object v3, v1, Lorg/ros/internal/message/topic/TopicDescription;->md5Checksum:Ljava/lang/String;

    if-eqz v3, :cond_2e

    .line 64
    return v2

    .line 65
    :cond_23
    iget-object v3, p0, Lorg/ros/internal/message/topic/TopicDescription;->md5Checksum:Ljava/lang/String;

    iget-object v4, v1, Lorg/ros/internal/message/topic/TopicDescription;->md5Checksum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 66
    return v2

    .line 67
    :cond_2e
    return v0
.end method

.method public getMd5Checksum()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lorg/ros/internal/message/topic/TopicDescription;->md5Checksum:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 47
    const/16 v0, 0x1f

    .line 48
    .local v0, "prime":I
    invoke-super {p0}, Lorg/ros/message/MessageDeclaration;->hashCode()I

    move-result v1

    .line 49
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/topic/TopicDescription;->md5Checksum:Ljava/lang/String;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_14

    :cond_e
    iget-object v3, p0, Lorg/ros/internal/message/topic/TopicDescription;->md5Checksum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v2, v3

    .line 50
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopicDescription<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ros/internal/message/topic/TopicDescription;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/topic/TopicDescription;->md5Checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
