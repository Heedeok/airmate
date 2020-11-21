.class public Lorg/ros/rosjava_geometry/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# instance fields
.field private final w:D

.field private final x:D

.field private final y:D

.field private final z:D


# direct methods
.method public constructor <init>(DDDD)V
    .registers 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    .line 71
    iput-wide p3, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    .line 72
    iput-wide p5, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    .line 73
    iput-wide p7, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    .line 74
    return-void
.end method

.method public static fromAxisAngle(Lorg/ros/rosjava_geometry/Vector3;D)Lorg/ros/rosjava_geometry/Quaternion;
    .registers 18
    .param p0, "axis"    # Lorg/ros/rosjava_geometry/Vector3;
    .param p1, "angle"    # D

    .line 38
    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Vector3;->normalize()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v0

    .line 39
    .local v0, "normalized":Lorg/ros/rosjava_geometry/Vector3;
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 40
    .local v3, "sin":D
    div-double v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 41
    .local v1, "cos":D
    new-instance v14, Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v5

    mul-double v6, v5, v3

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v8

    mul-double v8, v8, v3

    .line 42
    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/Vector3;->getZ()D

    move-result-wide v10

    mul-double v10, v10, v3

    move-object v5, v14

    move-wide v12, v1

    invoke-direct/range {v5 .. v13}, Lorg/ros/rosjava_geometry/Quaternion;-><init>(DDDD)V

    .line 41
    return-object v14
.end method

.method public static fromQuaternionMessage(Lgeometry_msgs/Quaternion;)Lorg/ros/rosjava_geometry/Quaternion;
    .registers 11
    .param p0, "message"    # Lgeometry_msgs/Quaternion;

    .line 46
    new-instance v9, Lorg/ros/rosjava_geometry/Quaternion;

    invoke-interface {p0}, Lgeometry_msgs/Quaternion;->getX()D

    move-result-wide v1

    invoke-interface {p0}, Lgeometry_msgs/Quaternion;->getY()D

    move-result-wide v3

    invoke-interface {p0}, Lgeometry_msgs/Quaternion;->getZ()D

    move-result-wide v5

    invoke-interface {p0}, Lgeometry_msgs/Quaternion;->getW()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/ros/rosjava_geometry/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public static identity()Lorg/ros/rosjava_geometry/Quaternion;
    .registers 10

    .line 66
    new-instance v9, Lorg/ros/rosjava_geometry/Quaternion;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/ros/rosjava_geometry/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public static rotationBetweenVectors(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Quaternion;
    .registers 18
    .param p0, "vector1"    # Lorg/ros/rosjava_geometry/Vector3;
    .param p1, "vector2"    # Lorg/ros/rosjava_geometry/Vector3;

    .line 50
    invoke-virtual/range {p0 .. p0}, Lorg/ros/rosjava_geometry/Vector3;->getMagnitude()D

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "Cannot calculate rotation between zero-length vectors."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->getMagnitude()D

    move-result-wide v0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_1e

    const/4 v2, 0x1

    nop

    :cond_1e
    const-string v0, "Cannot calculate rotation between zero-length vectors."

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lorg/ros/rosjava_geometry/Vector3;->normalize()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->normalize()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 55
    invoke-static {}, Lorg/ros/rosjava_geometry/Quaternion;->identity()Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v0

    return-object v0

    .line 57
    :cond_36
    nop

    .line 58
    invoke-virtual/range {p0 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->dotProduct(Lorg/ros/rosjava_geometry/Vector3;)D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/ros/rosjava_geometry/Vector3;->getMagnitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->getMagnitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 59
    .local v0, "angle":D
    invoke-virtual/range {p0 .. p0}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->getZ()D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-virtual/range {p0 .. p0}, Lorg/ros/rosjava_geometry/Vector3;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v6

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    .line 60
    .local v2, "axisX":D
    invoke-virtual/range {p0 .. p0}, Lorg/ros/rosjava_geometry/Vector3;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-virtual/range {p0 .. p0}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->getZ()D

    move-result-wide v8

    mul-double v6, v6, v8

    sub-double/2addr v4, v6

    .line 61
    .local v4, "axisY":D
    invoke-virtual/range {p0 .. p0}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-virtual/range {p0 .. p0}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v10

    mul-double v8, v8, v10

    sub-double v13, v6, v8

    .line 62
    .local v13, "axisZ":D
    new-instance v15, Lorg/ros/rosjava_geometry/Vector3;

    move-object v6, v15

    move-wide v7, v2

    move-wide v9, v4

    move-wide v11, v13

    invoke-direct/range {v6 .. v12}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    invoke-static {v15, v0, v1}, Lorg/ros/rosjava_geometry/Quaternion;->fromAxisAngle(Lorg/ros/rosjava_geometry/Vector3;D)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public almostEquals(Lorg/ros/rosjava_geometry/Quaternion;D)Z
    .registers 11
    .param p1, "other"    # Lorg/ros/rosjava_geometry/Quaternion;
    .param p2, "epsilon"    # D

    .line 143
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, "epsilons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-wide v1, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    iget-wide v3, p1, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-wide v1, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    iget-wide v3, p1, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-wide v1, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    iget-wide v3, p1, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-wide v1, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    iget-wide v3, p1, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 149
    .local v2, "e":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v6, v4, p2

    if-lez v6, :cond_52

    .line 150
    const/4 v1, 0x0

    return v1

    .line 152
    .end local v2    # "e":D
    :cond_52
    goto :goto_38

    .line 153
    :cond_53
    const/4 v1, 0x1

    return v1
.end method

.method public conjugate()Lorg/ros/rosjava_geometry/Quaternion;
    .registers 11

    .line 81
    new-instance v9, Lorg/ros/rosjava_geometry/Quaternion;

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    neg-double v1, v0

    iget-wide v3, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    neg-double v3, v3

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    neg-double v5, v5

    iget-wide v7, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/ros/rosjava_geometry/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 25
    .param p1, "obj"    # Ljava/lang/Object;

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    .line 185
    return v2

    .line 186
    :cond_8
    const/4 v3, 0x0

    if-nez v1, :cond_c

    .line 187
    return v3

    .line 188
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_17

    .line 189
    return v3

    .line 190
    :cond_17
    move-object v4, v1

    check-cast v4, Lorg/ros/rosjava_geometry/Quaternion;

    .line 192
    .local v4, "other":Lorg/ros/rosjava_geometry/Quaternion;
    iget-wide v5, v0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_24

    move-wide v5, v7

    goto :goto_26

    :cond_24
    iget-wide v5, v0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    .line 193
    .local v5, "w":D
    :goto_26
    iget-wide v9, v0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    cmpl-double v11, v9, v7

    if-nez v11, :cond_2e

    move-wide v9, v7

    goto :goto_30

    :cond_2e
    iget-wide v9, v0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    .line 194
    .local v9, "x":D
    :goto_30
    iget-wide v11, v0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    cmpl-double v13, v11, v7

    if-nez v13, :cond_38

    move-wide v11, v7

    goto :goto_3a

    :cond_38
    iget-wide v11, v0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    .line 195
    .local v11, "y":D
    :goto_3a
    iget-wide v13, v0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    cmpl-double v15, v13, v7

    if-nez v15, :cond_42

    move-wide v13, v7

    goto :goto_44

    :cond_42
    iget-wide v13, v0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    .line 196
    .local v13, "z":D
    :goto_44
    iget-wide v2, v4, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    cmpl-double v15, v2, v7

    if-nez v15, :cond_4c

    move-wide v2, v7

    goto :goto_4e

    :cond_4c
    iget-wide v2, v4, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    .line 197
    .local v2, "otherW":D
    :goto_4e
    iget-wide v0, v4, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    cmpl-double v15, v0, v7

    if-nez v15, :cond_56

    move-wide v0, v7

    goto :goto_58

    :cond_56
    iget-wide v0, v4, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    .line 198
    .local v0, "otherX":D
    :goto_58
    move-wide/from16 v17, v13

    .end local v13    # "z":D
    .local v17, "z":D
    iget-wide v13, v4, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    cmpl-double v15, v13, v7

    if-nez v15, :cond_62

    move-wide v13, v7

    goto :goto_64

    :cond_62
    iget-wide v13, v4, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    .line 199
    .local v13, "otherY":D
    :goto_64
    move-wide/from16 v19, v13

    .end local v13    # "otherY":D
    .local v19, "otherY":D
    iget-wide v13, v4, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    cmpl-double v15, v13, v7

    if-nez v15, :cond_6d

    goto :goto_6f

    :cond_6d
    iget-wide v7, v4, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    .line 200
    .local v7, "otherZ":D
    :goto_6f
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v13

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v21

    cmp-long v15, v13, v21

    if-eqz v15, :cond_7d

    .line 201
    const/4 v13, 0x0

    return v13

    .line 202
    :cond_7d
    const/4 v13, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v14

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v21

    cmp-long v16, v14, v21

    if-eqz v16, :cond_8b

    .line 203
    return v13

    .line 204
    :cond_8b
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v21

    cmp-long v16, v14, v21

    if-eqz v16, :cond_98

    .line 205
    return v13

    .line 206
    :cond_98
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v14

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v21

    cmp-long v16, v14, v21

    if-eqz v16, :cond_a5

    .line 207
    return v13

    .line 208
    :cond_a5
    const/4 v13, 0x1

    return v13
.end method

.method public getMagnitude()D
    .registers 3

    .line 127
    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Quaternion;->getMagnitudeSquared()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMagnitudeSquared()D
    .registers 7

    .line 123
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getW()D
    .registers 3

    .line 119
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    return-wide v0
.end method

.method public getX()D
    .registers 3

    .line 107
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    return-wide v0
.end method

.method public getY()D
    .registers 3

    .line 111
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    return-wide v0
.end method

.method public getZ()D
    .registers 3

    .line 115
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 20

    .line 164
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_c

    move-wide v1, v3

    goto :goto_e

    :cond_c
    iget-wide v1, v0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    .line 165
    .local v1, "w":D
    :goto_e
    iget-wide v5, v0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    cmpl-double v7, v5, v3

    if-nez v7, :cond_16

    move-wide v5, v3

    goto :goto_18

    :cond_16
    iget-wide v5, v0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    .line 166
    .local v5, "x":D
    :goto_18
    iget-wide v7, v0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    cmpl-double v9, v7, v3

    if-nez v9, :cond_20

    move-wide v7, v3

    goto :goto_22

    :cond_20
    iget-wide v7, v0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    .line 167
    .local v7, "y":D
    :goto_22
    iget-wide v9, v0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    cmpl-double v11, v9, v3

    if-nez v11, :cond_29

    goto :goto_2b

    :cond_29
    iget-wide v3, v0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    .line 168
    .local v3, "z":D
    :goto_2b
    const/16 v9, 0x1f

    .line 169
    .local v9, "prime":I
    const/4 v10, 0x1

    .line 171
    .local v10, "result":I
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v11

    .line 172
    .local v11, "temp":J
    mul-int/lit8 v13, v10, 0x1f

    const/16 v14, 0x20

    ushr-long v15, v11, v14

    move-wide/from16 v17, v1

    .end local v1    # "w":D
    .local v17, "w":D
    xor-long v0, v11, v15

    long-to-int v0, v0

    add-int/2addr v13, v0

    .line 173
    .end local v10    # "result":I
    .local v13, "result":I
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 174
    .end local v11    # "temp":J
    .local v0, "temp":J
    mul-int/lit8 v2, v13, 0x1f

    ushr-long v10, v0, v14

    xor-long/2addr v10, v0

    long-to-int v10, v10

    add-int/2addr v2, v10

    .line 175
    .end local v13    # "result":I
    .local v2, "result":I
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 176
    mul-int/lit8 v10, v2, 0x1f

    ushr-long v11, v0, v14

    xor-long/2addr v11, v0

    long-to-int v11, v11

    add-int/2addr v10, v11

    .line 177
    .end local v2    # "result":I
    .restart local v10    # "result":I
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 178
    mul-int/lit8 v2, v10, 0x1f

    ushr-long v11, v0, v14

    xor-long/2addr v11, v0

    long-to-int v11, v11

    add-int/2addr v2, v11

    .line 179
    .end local v10    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public invert()Lorg/ros/rosjava_geometry/Quaternion;
    .registers 6

    .line 85
    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Quaternion;->getMagnitudeSquared()D

    move-result-wide v0

    .line 86
    .local v0, "mm":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 87
    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Quaternion;->conjugate()Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lorg/ros/rosjava_geometry/Quaternion;->scale(D)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    return-object v2
.end method

.method public isAlmostNeutral(D)Z
    .registers 9
    .param p1, "epsilon"    # D

    .line 131
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    mul-double v0, v0, v4

    sub-double/2addr v2, v0

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    mul-double v0, v0, v4

    sub-double/2addr v2, v0

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    mul-double v0, v0, v4

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, p1

    if-gez v2, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public multiply(Lorg/ros/rosjava_geometry/Quaternion;)Lorg/ros/rosjava_geometry/Quaternion;
    .registers 16
    .param p1, "other"    # Lorg/ros/rosjava_geometry/Quaternion;

    .line 95
    new-instance v9, Lorg/ros/rosjava_geometry/Quaternion;

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    iget-wide v2, p1, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    iget-wide v4, p1, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    iget-wide v4, p1, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    iget-wide v4, p1, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    mul-double v2, v2, v4

    sub-double v1, v0, v2

    iget-wide v3, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    iget-wide v5, p1, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    mul-double v3, v3, v5

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    iget-wide v7, p1, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    iget-wide v7, p1, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    iget-wide v7, p1, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    mul-double v5, v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    iget-wide v7, p1, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    mul-double v5, v5, v7

    iget-wide v7, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    iget-wide v10, p1, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    mul-double v7, v7, v10

    add-double/2addr v5, v7

    iget-wide v7, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    iget-wide v10, p1, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    mul-double v7, v7, v10

    add-double/2addr v5, v7

    iget-wide v7, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    iget-wide v10, p1, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    mul-double v7, v7, v10

    sub-double/2addr v5, v7

    iget-wide v7, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    iget-wide v10, p1, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    mul-double v7, v7, v10

    iget-wide v10, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    iget-wide v12, p1, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    mul-double v10, v10, v12

    sub-double/2addr v7, v10

    iget-wide v10, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    iget-wide v12, p1, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    mul-double v10, v10, v12

    sub-double/2addr v7, v10

    iget-wide v10, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    iget-wide v12, p1, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    mul-double v10, v10, v12

    sub-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/ros/rosjava_geometry/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public normalize()Lorg/ros/rosjava_geometry/Quaternion;
    .registers 5

    .line 91
    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Quaternion;->getMagnitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/ros/rosjava_geometry/Quaternion;->scale(D)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public rotateAndScaleVector(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;
    .registers 12
    .param p1, "vector"    # Lorg/ros/rosjava_geometry/Vector3;

    .line 101
    new-instance v9, Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {p1}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/ros/rosjava_geometry/Vector3;->getZ()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/ros/rosjava_geometry/Quaternion;-><init>(DDDD)V

    .line 102
    .local v0, "vectorQuaternion":Lorg/ros/rosjava_geometry/Quaternion;
    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Quaternion;->conjugate()Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Quaternion;->multiply(Lorg/ros/rosjava_geometry/Quaternion;)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ros/rosjava_geometry/Quaternion;->multiply(Lorg/ros/rosjava_geometry/Quaternion;)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v1

    .line 103
    .local v1, "rotatedQuaternion":Lorg/ros/rosjava_geometry/Quaternion;
    new-instance v9, Lorg/ros/rosjava_geometry/Vector3;

    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Quaternion;->getX()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Quaternion;->getY()D

    move-result-wide v5

    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Quaternion;->getZ()D

    move-result-wide v7

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    return-object v9
.end method

.method public scale(D)Lorg/ros/rosjava_geometry/Quaternion;
    .registers 13
    .param p1, "factor"    # D

    .line 77
    new-instance v9, Lorg/ros/rosjava_geometry/Quaternion;

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    mul-double v1, v0, p1

    iget-wide v3, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    mul-double v3, v3, p1

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    mul-double v5, v5, p1

    iget-wide v7, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    mul-double v7, v7, p1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/ros/rosjava_geometry/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public toQuaternionMessage(Lgeometry_msgs/Quaternion;)Lgeometry_msgs/Quaternion;
    .registers 4
    .param p1, "result"    # Lgeometry_msgs/Quaternion;

    .line 135
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Quaternion;->setX(D)V

    .line 136
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Quaternion;->setY(D)V

    .line 137
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Quaternion;->setZ(D)V

    .line 138
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Quaternion;->setW(D)V

    .line 139
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 158
    const-string v0, "Quaternion<x: %.4f, y: %.4f, z: %.4f, w: %.4f>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Quaternion;->w:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
