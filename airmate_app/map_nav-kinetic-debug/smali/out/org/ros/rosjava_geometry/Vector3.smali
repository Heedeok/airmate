.class public Lorg/ros/rosjava_geometry/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"


# static fields
.field private static final X_AXIS:Lorg/ros/rosjava_geometry/Vector3;

.field private static final Y_AXIS:Lorg/ros/rosjava_geometry/Vector3;

.field private static final ZERO:Lorg/ros/rosjava_geometry/Vector3;

.field private static final Z_AXIS:Lorg/ros/rosjava_geometry/Vector3;


# instance fields
.field private final x:D

.field private final y:D

.field private final z:D


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 31
    new-instance v7, Lorg/ros/rosjava_geometry/Vector3;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    sput-object v7, Lorg/ros/rosjava_geometry/Vector3;->ZERO:Lorg/ros/rosjava_geometry/Vector3;

    .line 32
    new-instance v0, Lorg/ros/rosjava_geometry/Vector3;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    sput-object v0, Lorg/ros/rosjava_geometry/Vector3;->X_AXIS:Lorg/ros/rosjava_geometry/Vector3;

    .line 33
    new-instance v0, Lorg/ros/rosjava_geometry/Vector3;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    sput-object v0, Lorg/ros/rosjava_geometry/Vector3;->Y_AXIS:Lorg/ros/rosjava_geometry/Vector3;

    .line 34
    new-instance v0, Lorg/ros/rosjava_geometry/Vector3;

    const-wide/16 v9, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    sput-object v0, Lorg/ros/rosjava_geometry/Vector3;->Z_AXIS:Lorg/ros/rosjava_geometry/Vector3;

    return-void
.end method

.method public constructor <init>(DDD)V
    .registers 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    .line 66
    iput-wide p3, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    .line 67
    iput-wide p5, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    .line 68
    return-void
.end method

.method public static fromPointMessage(Lgeometry_msgs/Point;)Lorg/ros/rosjava_geometry/Vector3;
    .registers 9
    .param p0, "message"    # Lgeometry_msgs/Point;

    .line 45
    new-instance v7, Lorg/ros/rosjava_geometry/Vector3;

    invoke-interface {p0}, Lgeometry_msgs/Point;->getX()D

    move-result-wide v1

    invoke-interface {p0}, Lgeometry_msgs/Point;->getY()D

    move-result-wide v3

    invoke-interface {p0}, Lgeometry_msgs/Point;->getZ()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    return-object v7
.end method

.method public static fromVector3Message(Lgeometry_msgs/Vector3;)Lorg/ros/rosjava_geometry/Vector3;
    .registers 9
    .param p0, "message"    # Lgeometry_msgs/Vector3;

    .line 41
    new-instance v7, Lorg/ros/rosjava_geometry/Vector3;

    invoke-interface {p0}, Lgeometry_msgs/Vector3;->getX()D

    move-result-wide v1

    invoke-interface {p0}, Lgeometry_msgs/Vector3;->getY()D

    move-result-wide v3

    invoke-interface {p0}, Lgeometry_msgs/Vector3;->getZ()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    return-object v7
.end method

.method public static xAxis()Lorg/ros/rosjava_geometry/Vector3;
    .registers 1

    .line 53
    sget-object v0, Lorg/ros/rosjava_geometry/Vector3;->X_AXIS:Lorg/ros/rosjava_geometry/Vector3;

    return-object v0
.end method

.method public static yAxis()Lorg/ros/rosjava_geometry/Vector3;
    .registers 1

    .line 57
    sget-object v0, Lorg/ros/rosjava_geometry/Vector3;->Y_AXIS:Lorg/ros/rosjava_geometry/Vector3;

    return-object v0
.end method

.method public static zAxis()Lorg/ros/rosjava_geometry/Vector3;
    .registers 1

    .line 61
    sget-object v0, Lorg/ros/rosjava_geometry/Vector3;->Z_AXIS:Lorg/ros/rosjava_geometry/Vector3;

    return-object v0
.end method

.method public static zero()Lorg/ros/rosjava_geometry/Vector3;
    .registers 1

    .line 49
    sget-object v0, Lorg/ros/rosjava_geometry/Vector3;->ZERO:Lorg/ros/rosjava_geometry/Vector3;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;
    .registers 12
    .param p1, "other"    # Lorg/ros/rosjava_geometry/Vector3;

    .line 71
    new-instance v7, Lorg/ros/rosjava_geometry/Vector3;

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    iget-wide v2, p1, Lorg/ros/rosjava_geometry/Vector3;->x:D

    add-double v1, v0, v2

    iget-wide v3, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    iget-wide v5, p1, Lorg/ros/rosjava_geometry/Vector3;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    iget-wide v8, p1, Lorg/ros/rosjava_geometry/Vector3;->z:D

    add-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    return-object v7
.end method

.method public almostEquals(Lorg/ros/rosjava_geometry/Vector3;D)Z
    .registers 11
    .param p1, "other"    # Lorg/ros/rosjava_geometry/Vector3;
    .param p2, "epsilon"    # D

    .line 129
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    .local v0, "epsilons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-wide v1, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    iget-wide v3, p1, Lorg/ros/rosjava_geometry/Vector3;->x:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-wide v1, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    iget-wide v3, p1, Lorg/ros/rosjava_geometry/Vector3;->y:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-wide v1, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    iget-wide v3, p1, Lorg/ros/rosjava_geometry/Vector3;->z:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 134
    .local v2, "e":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v6, v4, p2

    if-lez v6, :cond_46

    .line 135
    const/4 v1, 0x0

    return v1

    .line 137
    .end local v2    # "e":D
    :cond_46
    goto :goto_2c

    .line 138
    :cond_47
    const/4 v1, 0x1

    return v1
.end method

.method public dotProduct(Lorg/ros/rosjava_geometry/Vector3;)D
    .registers 8
    .param p1, "other"    # Lorg/ros/rosjava_geometry/Vector3;

    .line 83
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    iget-wide v2, p1, Lorg/ros/rosjava_geometry/Vector3;->x:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    iget-wide v4, p1, Lorg/ros/rosjava_geometry/Vector3;->y:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    iget-wide v4, p1, Lorg/ros/rosjava_geometry/Vector3;->z:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 22
    .param p1, "obj"    # Ljava/lang/Object;

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    .line 167
    return v2

    .line 168
    :cond_8
    const/4 v3, 0x0

    if-nez v1, :cond_c

    .line 169
    return v3

    .line 170
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_17

    .line 171
    return v3

    .line 172
    :cond_17
    move-object v4, v1

    check-cast v4, Lorg/ros/rosjava_geometry/Vector3;

    .line 174
    .local v4, "other":Lorg/ros/rosjava_geometry/Vector3;
    iget-wide v5, v0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_24

    move-wide v5, v7

    goto :goto_26

    :cond_24
    iget-wide v5, v0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    .line 175
    .local v5, "x":D
    :goto_26
    iget-wide v9, v0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    cmpl-double v11, v9, v7

    if-nez v11, :cond_2e

    move-wide v9, v7

    goto :goto_30

    :cond_2e
    iget-wide v9, v0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    .line 176
    .local v9, "y":D
    :goto_30
    iget-wide v11, v0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    cmpl-double v13, v11, v7

    if-nez v13, :cond_38

    move-wide v11, v7

    goto :goto_3a

    :cond_38
    iget-wide v11, v0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    .line 177
    .local v11, "z":D
    :goto_3a
    iget-wide v13, v4, Lorg/ros/rosjava_geometry/Vector3;->x:D

    cmpl-double v15, v13, v7

    if-nez v15, :cond_42

    move-wide v13, v7

    goto :goto_44

    :cond_42
    iget-wide v13, v4, Lorg/ros/rosjava_geometry/Vector3;->x:D

    .line 178
    .local v13, "otherX":D
    :goto_44
    iget-wide v2, v4, Lorg/ros/rosjava_geometry/Vector3;->y:D

    cmpl-double v15, v2, v7

    if-nez v15, :cond_4c

    move-wide v2, v7

    goto :goto_4e

    :cond_4c
    iget-wide v2, v4, Lorg/ros/rosjava_geometry/Vector3;->y:D

    .line 179
    .local v2, "otherY":D
    :goto_4e
    iget-wide v0, v4, Lorg/ros/rosjava_geometry/Vector3;->z:D

    cmpl-double v15, v0, v7

    if-nez v15, :cond_55

    goto :goto_57

    :cond_55
    iget-wide v7, v4, Lorg/ros/rosjava_geometry/Vector3;->z:D

    :goto_57
    move-wide v0, v7

    .line 180
    .local v0, "otherZ":D
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    invoke-static {v13, v14}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v17

    cmp-long v15, v7, v17

    if-eqz v15, :cond_66

    .line 181
    const/4 v7, 0x0

    return v7

    .line 182
    :cond_66
    const/4 v7, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v16

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v18

    cmp-long v8, v16, v18

    if-eqz v8, :cond_74

    .line 183
    return v7

    .line 184
    :cond_74
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v16

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v18

    cmp-long v8, v16, v18

    if-eqz v8, :cond_81

    .line 185
    return v7

    .line 186
    :cond_81
    const/4 v7, 0x1

    return v7
.end method

.method public getMagnitude()D
    .registers 3

    .line 111
    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Vector3;->getMagnitudeSquared()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMagnitudeSquared()D
    .registers 7

    .line 107
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getX()D
    .registers 3

    .line 95
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    return-wide v0
.end method

.method public getY()D
    .registers 3

    .line 99
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    return-wide v0
.end method

.method public getZ()D
    .registers 3

    .line 103
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 15

    .line 149
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    goto :goto_c

    :cond_a
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    .line 150
    .local v0, "x":D
    :goto_c
    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    cmpl-double v6, v4, v2

    if-nez v6, :cond_14

    move-wide v4, v2

    goto :goto_16

    :cond_14
    iget-wide v4, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    .line 151
    .local v4, "y":D
    :goto_16
    iget-wide v6, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    cmpl-double v8, v6, v2

    if-nez v8, :cond_1d

    goto :goto_1f

    :cond_1d
    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    .line 152
    .local v2, "z":D
    :goto_1f
    const/16 v6, 0x1f

    .line 153
    .local v6, "prime":I
    const/4 v7, 0x1

    .line 155
    .local v7, "result":I
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 156
    .local v8, "temp":J
    mul-int/lit8 v10, v7, 0x1f

    const/16 v11, 0x20

    ushr-long v12, v8, v11

    xor-long/2addr v12, v8

    long-to-int v12, v12

    add-int/2addr v10, v12

    .line 157
    .end local v7    # "result":I
    .local v10, "result":I
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 158
    .end local v8    # "temp":J
    .local v7, "temp":J
    mul-int/lit8 v9, v10, 0x1f

    ushr-long v12, v7, v11

    xor-long/2addr v12, v7

    long-to-int v12, v12

    add-int/2addr v9, v12

    .line 159
    .end local v10    # "result":I
    .local v9, "result":I
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 160
    mul-int/lit8 v10, v9, 0x1f

    ushr-long v11, v7, v11

    xor-long/2addr v11, v7

    long-to-int v11, v11

    add-int/2addr v10, v11

    .line 161
    .end local v9    # "result":I
    .restart local v10    # "result":I
    return v10
.end method

.method public invert()Lorg/ros/rosjava_geometry/Vector3;
    .registers 9

    .line 79
    new-instance v7, Lorg/ros/rosjava_geometry/Vector3;

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    neg-double v1, v0

    iget-wide v3, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    neg-double v3, v3

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    neg-double v5, v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    return-object v7
.end method

.method public normalize()Lorg/ros/rosjava_geometry/Vector3;
    .registers 11

    .line 87
    new-instance v7, Lorg/ros/rosjava_geometry/Vector3;

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Vector3;->getMagnitude()D

    move-result-wide v2

    div-double v1, v0, v2

    iget-wide v3, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Vector3;->getMagnitude()D

    move-result-wide v5

    div-double/2addr v3, v5

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    invoke-virtual {p0}, Lorg/ros/rosjava_geometry/Vector3;->getMagnitude()D

    move-result-wide v8

    div-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    return-object v7
.end method

.method public scale(D)Lorg/ros/rosjava_geometry/Vector3;
    .registers 11
    .param p1, "factor"    # D

    .line 91
    new-instance v7, Lorg/ros/rosjava_geometry/Vector3;

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    mul-double v1, v0, p1

    iget-wide v3, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    mul-double v3, v3, p1

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    mul-double v5, v5, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    return-object v7
.end method

.method public subtract(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;
    .registers 12
    .param p1, "other"    # Lorg/ros/rosjava_geometry/Vector3;

    .line 75
    new-instance v7, Lorg/ros/rosjava_geometry/Vector3;

    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    iget-wide v2, p1, Lorg/ros/rosjava_geometry/Vector3;->x:D

    sub-double v1, v0, v2

    iget-wide v3, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    iget-wide v5, p1, Lorg/ros/rosjava_geometry/Vector3;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    iget-wide v8, p1, Lorg/ros/rosjava_geometry/Vector3;->z:D

    sub-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    return-object v7
.end method

.method public toPointMessage(Lgeometry_msgs/Point;)Lgeometry_msgs/Point;
    .registers 4
    .param p1, "result"    # Lgeometry_msgs/Point;

    .line 122
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Point;->setX(D)V

    .line 123
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Point;->setY(D)V

    .line 124
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Point;->setZ(D)V

    .line 125
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 143
    const-string v0, "Vector3<x: %.4f, y: %.4f, z: %.4f>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toVector3Message(Lgeometry_msgs/Vector3;)Lgeometry_msgs/Vector3;
    .registers 4
    .param p1, "result"    # Lgeometry_msgs/Vector3;

    .line 115
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->x:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Vector3;->setX(D)V

    .line 116
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->y:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Vector3;->setY(D)V

    .line 117
    iget-wide v0, p0, Lorg/ros/rosjava_geometry/Vector3;->z:D

    invoke-interface {p1, v0, v1}, Lgeometry_msgs/Vector3;->setZ(D)V

    .line 118
    return-object p1
.end method
