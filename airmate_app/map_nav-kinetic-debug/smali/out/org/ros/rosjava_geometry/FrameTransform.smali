.class public Lorg/ros/rosjava_geometry/FrameTransform;
.super Ljava/lang/Object;
.source "FrameTransform.java"


# instance fields
.field private final source:Lorg/ros/namespace/GraphName;

.field private final target:Lorg/ros/namespace/GraphName;

.field private final time:Lorg/ros/message/Time;

.field private final transform:Lorg/ros/rosjava_geometry/Transform;


# direct methods
.method public constructor <init>(Lorg/ros/rosjava_geometry/Transform;Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)V
    .registers 6
    .param p1, "transform"    # Lorg/ros/rosjava_geometry/Transform;
    .param p2, "source"    # Lorg/ros/namespace/GraphName;
    .param p3, "target"    # Lorg/ros/namespace/GraphName;
    .param p4, "time"    # Lorg/ros/message/Time;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    .line 65
    invoke-virtual {p2}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    .line 66
    invoke-virtual {p3}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    .line 67
    iput-object p4, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    .line 68
    return-void
.end method

.method public static fromTransformStampedMessage(Lgeometry_msgs/TransformStamped;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 8
    .param p0, "transformStamped"    # Lgeometry_msgs/TransformStamped;

    .line 39
    invoke-interface {p0}, Lgeometry_msgs/TransformStamped;->getTransform()Lgeometry_msgs/Transform;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/rosjava_geometry/Transform;->fromTransformMessage(Lgeometry_msgs/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    .line 40
    .local v0, "transform":Lorg/ros/rosjava_geometry/Transform;
    invoke-interface {p0}, Lgeometry_msgs/TransformStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v1

    invoke-interface {v1}, Lstd_msgs/Header;->getFrameId()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "target":Ljava/lang/String;
    invoke-interface {p0}, Lgeometry_msgs/TransformStamped;->getChildFrameId()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "source":Ljava/lang/String;
    invoke-interface {p0}, Lgeometry_msgs/TransformStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v3

    invoke-interface {v3}, Lstd_msgs/Header;->getStamp()Lorg/ros/message/Time;

    move-result-object v3

    .line 43
    .local v3, "stamp":Lorg/ros/message/Time;
    new-instance v4, Lorg/ros/rosjava_geometry/FrameTransform;

    invoke-static {v2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v5

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6, v3}, Lorg/ros/rosjava_geometry/FrameTransform;-><init>(Lorg/ros/rosjava_geometry/Transform;Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)V

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 124
    return v0

    .line 125
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 126
    return v1

    .line 127
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 128
    return v1

    .line 129
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/rosjava_geometry/FrameTransform;

    .line 130
    .local v2, "other":Lorg/ros/rosjava_geometry/FrameTransform;
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    if-nez v3, :cond_1f

    .line 131
    iget-object v3, v2, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    if-eqz v3, :cond_2a

    .line 132
    return v1

    .line 133
    :cond_1f
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    iget-object v4, v2, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3, v4}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 134
    return v1

    .line 135
    :cond_2a
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    if-nez v3, :cond_33

    .line 136
    iget-object v3, v2, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    if-eqz v3, :cond_3e

    .line 137
    return v1

    .line 138
    :cond_33
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    iget-object v4, v2, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3, v4}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 139
    return v1

    .line 140
    :cond_3e
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    if-nez v3, :cond_47

    .line 141
    iget-object v3, v2, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    if-eqz v3, :cond_52

    .line 142
    return v1

    .line 143
    :cond_47
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    iget-object v4, v2, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    invoke-virtual {v3, v4}, Lorg/ros/message/Time;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 144
    return v1

    .line 145
    :cond_52
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    if-nez v3, :cond_5b

    .line 146
    iget-object v3, v2, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    if-eqz v3, :cond_66

    .line 147
    return v1

    .line 148
    :cond_5b
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    iget-object v4, v2, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {v3, v4}, Lorg/ros/rosjava_geometry/Transform;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 149
    return v1

    .line 150
    :cond_66
    return v0
.end method

.method public getSourceFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getTargetFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getTime()Lorg/ros/message/Time;
    .registers 2

    .line 91
    iget-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    return-object v0
.end method

.method public getTransform()Lorg/ros/rosjava_geometry/Transform;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 112
    const/16 v0, 0x1f

    .line 113
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 114
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3}, Lorg/ros/namespace/GraphName;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 115
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_21

    :cond_1b
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3}, Lorg/ros/namespace/GraphName;->hashCode()I

    move-result v3

    :goto_21
    add-int/2addr v1, v3

    .line 116
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    if-nez v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_30

    :cond_2a
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    invoke-virtual {v3}, Lorg/ros/message/Time;->hashCode()I

    move-result v3

    :goto_30
    add-int/2addr v2, v3

    .line 117
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    if-nez v3, :cond_38

    goto :goto_3e

    :cond_38
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {v3}, Lorg/ros/rosjava_geometry/Transform;->hashCode()I

    move-result v4

    :goto_3e
    add-int/2addr v1, v4

    .line 118
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public invert()Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 6

    .line 83
    new-instance v0, Lorg/ros/rosjava_geometry/FrameTransform;

    iget-object v1, p0, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Transform;->invert()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    iget-object v4, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ros/rosjava_geometry/FrameTransform;-><init>(Lorg/ros/rosjava_geometry/Transform;Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 106
    const-string v0, "FrameTransform<Source: %s, Target: %s, %s, Time: %s>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTransformStampedMessage(Lgeometry_msgs/TransformStamped;)Lgeometry_msgs/TransformStamped;
    .registers 4
    .param p1, "result"    # Lgeometry_msgs/TransformStamped;

    .line 96
    iget-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {p1}, Lgeometry_msgs/TransformStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/rosjava_geometry/FrameTransform;->target:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lstd_msgs/Header;->setFrameId(Ljava/lang/String;)V

    .line 98
    invoke-interface {p1}, Lgeometry_msgs/TransformStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/rosjava_geometry/FrameTransform;->time:Lorg/ros/message/Time;

    invoke-interface {v0, v1}, Lstd_msgs/Header;->setStamp(Lorg/ros/message/Time;)V

    .line 99
    iget-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransform;->source:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgeometry_msgs/TransformStamped;->setChildFrameId(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransform;->transform:Lorg/ros/rosjava_geometry/Transform;

    invoke-interface {p1}, Lgeometry_msgs/TransformStamped;->getTransform()Lgeometry_msgs/Transform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Transform;->toTransformMessage(Lgeometry_msgs/Transform;)Lgeometry_msgs/Transform;

    .line 101
    return-object p1
.end method
