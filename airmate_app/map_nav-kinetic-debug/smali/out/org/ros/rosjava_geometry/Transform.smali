.class public Lorg/ros/rosjava_geometry/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# instance fields
.field private rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

.field private translation:Lorg/ros/rosjava_geometry/Vector3;


# direct methods
.method public constructor <init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V
    .registers 3
    .param p1, "translation"    # Lorg/ros/rosjava_geometry/Vector3;
    .param p2, "rotation"    # Lorg/ros/rosjava_geometry/Quaternion;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    .line 69
    iput-object p2, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    .line 70
    return-void
.end method

.method public static fromPoseMessage(Lgeometry_msgs/Pose;)Lorg/ros/rosjava_geometry/Transform;
    .registers 4
    .param p0, "message"    # Lgeometry_msgs/Pose;

    .line 39
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    invoke-interface {p0}, Lgeometry_msgs/Pose;->getPosition()Lgeometry_msgs/Point;

    move-result-object v1

    invoke-static {v1}, Lorg/ros/rosjava_geometry/Vector3;->fromPointMessage(Lgeometry_msgs/Point;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    .line 40
    invoke-interface {p0}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v2

    invoke-static {v2}, Lorg/ros/rosjava_geometry/Quaternion;->fromQuaternionMessage(Lgeometry_msgs/Quaternion;)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    .line 39
    return-object v0
.end method

.method public static fromTransformMessage(Lgeometry_msgs/Transform;)Lorg/ros/rosjava_geometry/Transform;
    .registers 4
    .param p0, "message"    # Lgeometry_msgs/Transform;

    .line 34
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    invoke-interface {p0}, Lgeometry_msgs/Transform;->getTranslation()Lgeometry_msgs/Vector3;

    move-result-object v1

    invoke-static {v1}, Lorg/ros/rosjava_geometry/Vector3;->fromVector3Message(Lgeometry_msgs/Vector3;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    .line 35
    invoke-interface {p0}, Lgeometry_msgs/Transform;->getRotation()Lgeometry_msgs/Quaternion;

    move-result-object v2

    invoke-static {v2}, Lorg/ros/rosjava_geometry/Quaternion;->fromQuaternionMessage(Lgeometry_msgs/Quaternion;)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    .line 34
    return-object v0
.end method

.method public static identity()Lorg/ros/rosjava_geometry/Transform;
    .registers 3

    .line 44
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->zero()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-static {}, Lorg/ros/rosjava_geometry/Quaternion;->identity()Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    return-object v0
.end method

.method public static translation(DDD)Lorg/ros/rosjava_geometry/Transform;
    .registers 15
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 60
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    new-instance v8, Lorg/ros/rosjava_geometry/Vector3;

    move-object v1, v8

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/ros/rosjava_geometry/Vector3;-><init>(DDD)V

    invoke-static {}, Lorg/ros/rosjava_geometry/Quaternion;->identity()Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    return-object v0
.end method

.method public static translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;
    .registers 3
    .param p0, "vector"    # Lorg/ros/rosjava_geometry/Vector3;

    .line 64
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    invoke-static {}, Lorg/ros/rosjava_geometry/Quaternion;->identity()Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    return-object v0
.end method

.method public static xRotation(D)Lorg/ros/rosjava_geometry/Transform;
    .registers 5
    .param p0, "angle"    # D

    .line 48
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->zero()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->xAxis()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v2

    invoke-static {v2, p0, p1}, Lorg/ros/rosjava_geometry/Quaternion;->fromAxisAngle(Lorg/ros/rosjava_geometry/Vector3;D)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    return-object v0
.end method

.method public static yRotation(D)Lorg/ros/rosjava_geometry/Transform;
    .registers 5
    .param p0, "angle"    # D

    .line 52
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->zero()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->yAxis()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v2

    invoke-static {v2, p0, p1}, Lorg/ros/rosjava_geometry/Quaternion;->fromAxisAngle(Lorg/ros/rosjava_geometry/Vector3;D)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    return-object v0
.end method

.method public static zRotation(D)Lorg/ros/rosjava_geometry/Transform;
    .registers 5
    .param p0, "angle"    # D

    .line 56
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->zero()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-static {}, Lorg/ros/rosjava_geometry/Vector3;->zAxis()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v2

    invoke-static {v2, p0, p1}, Lorg/ros/rosjava_geometry/Quaternion;->fromAxisAngle(Lorg/ros/rosjava_geometry/Vector3;D)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    return-object v0
.end method


# virtual methods
.method public almostEquals(Lorg/ros/rosjava_geometry/Transform;D)Z
    .registers 6
    .param p1, "other"    # Lorg/ros/rosjava_geometry/Transform;
    .param p2, "epsilon"    # D

    .line 143
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    iget-object v1, p1, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-virtual {v0, v1, p2, p3}, Lorg/ros/rosjava_geometry/Vector3;->almostEquals(Lorg/ros/rosjava_geometry/Vector3;D)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    iget-object v1, p1, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    .line 144
    invoke-virtual {v0, v1, p2, p3}, Lorg/ros/rosjava_geometry/Quaternion;->almostEquals(Lorg/ros/rosjava_geometry/Quaternion;D)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 143
    :goto_17
    return v0
.end method

.method public apply(Lorg/ros/rosjava_geometry/Quaternion;)Lorg/ros/rosjava_geometry/Quaternion;
    .registers 3
    .param p1, "quaternion"    # Lorg/ros/rosjava_geometry/Quaternion;

    .line 94
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v0, p1}, Lorg/ros/rosjava_geometry/Quaternion;->multiply(Lorg/ros/rosjava_geometry/Quaternion;)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;
    .registers 4
    .param p1, "vector"    # Lorg/ros/rosjava_geometry/Vector3;

    .line 90
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v0, p1}, Lorg/ros/rosjava_geometry/Quaternion;->rotateAndScaleVector(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Vector3;->add(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 172
    return v0

    .line 173
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 174
    return v1

    .line 175
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 176
    return v1

    .line 177
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/rosjava_geometry/Transform;

    .line 178
    .local v2, "other":Lorg/ros/rosjava_geometry/Transform;
    iget-object v3, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    if-nez v3, :cond_1f

    .line 179
    iget-object v3, v2, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    if-eqz v3, :cond_2a

    .line 180
    return v1

    .line 181
    :cond_1f
    iget-object v3, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    iget-object v4, v2, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v3, v4}, Lorg/ros/rosjava_geometry/Quaternion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 182
    return v1

    .line 183
    :cond_2a
    iget-object v3, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    if-nez v3, :cond_33

    .line 184
    iget-object v3, v2, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    if-eqz v3, :cond_3e

    .line 185
    return v1

    .line 186
    :cond_33
    iget-object v3, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    iget-object v4, v2, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-virtual {v3, v4}, Lorg/ros/rosjava_geometry/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 187
    return v1

    .line 188
    :cond_3e
    return v0
.end method

.method public getRotationAndScale()Lorg/ros/rosjava_geometry/Quaternion;
    .registers 2

    .line 152
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    return-object v0
.end method

.method public getScale()D
    .registers 3

    .line 102
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/Quaternion;->getMagnitudeSquared()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTranslation()Lorg/ros/rosjava_geometry/Vector3;
    .registers 2

    .line 148
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 162
    const/16 v0, 0x1f

    .line 163
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 164
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v3}, Lorg/ros/rosjava_geometry/Quaternion;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 165
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-virtual {v3}, Lorg/ros/rosjava_geometry/Vector3;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 166
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public invert()Lorg/ros/rosjava_geometry/Transform;
    .registers 4

    .line 84
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/Quaternion;->invert()Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v0

    .line 85
    .local v0, "inverseRotationAndScale":Lorg/ros/rosjava_geometry/Quaternion;
    new-instance v1, Lorg/ros/rosjava_geometry/Transform;

    iget-object v2, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-virtual {v2}, Lorg/ros/rosjava_geometry/Vector3;->invert()Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/ros/rosjava_geometry/Quaternion;->rotateAndScaleVector(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    return-object v1
.end method

.method public multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;
    .registers 5
    .param p1, "other"    # Lorg/ros/rosjava_geometry/Transform;

    .line 80
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    iget-object v1, p1, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-virtual {p0, v1}, Lorg/ros/rosjava_geometry/Transform;->apply(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    iget-object v2, p1, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {p0, v2}, Lorg/ros/rosjava_geometry/Transform;->apply(Lorg/ros/rosjava_geometry/Quaternion;)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    return-object v0
.end method

.method public scale(D)Lorg/ros/rosjava_geometry/Transform;
    .registers 8
    .param p1, "factor"    # D

    .line 98
    new-instance v0, Lorg/ros/rosjava_geometry/Transform;

    iget-object v1, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    iget-object v2, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/ros/rosjava_geometry/Quaternion;->scale(D)Lorg/ros/rosjava_geometry/Quaternion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/rosjava_geometry/Transform;-><init>(Lorg/ros/rosjava_geometry/Vector3;Lorg/ros/rosjava_geometry/Quaternion;)V

    return-object v0
.end method

.method public toMatrix()[D
    .registers 21

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/Quaternion;->getX()D

    move-result-wide v1

    .line 112
    .local v1, "x":D
    iget-object v3, v0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v3}, Lorg/ros/rosjava_geometry/Quaternion;->getY()D

    move-result-wide v3

    .line 113
    .local v3, "y":D
    iget-object v5, v0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v5}, Lorg/ros/rosjava_geometry/Quaternion;->getZ()D

    move-result-wide v5

    .line 114
    .local v5, "z":D
    iget-object v7, v0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v7}, Lorg/ros/rosjava_geometry/Quaternion;->getW()D

    move-result-wide v7

    .line 115
    .local v7, "w":D
    iget-object v9, v0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-virtual {v9}, Lorg/ros/rosjava_geometry/Quaternion;->getMagnitudeSquared()D

    move-result-wide v9

    .line 116
    .local v9, "mm":D
    const/16 v11, 0x10

    new-array v11, v11, [D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v14, v3, v12

    mul-double v14, v14, v3

    sub-double v14, v9, v14

    mul-double v16, v5, v12

    mul-double v16, v16, v5

    sub-double v14, v14, v16

    const/16 v16, 0x0

    aput-wide v14, v11, v16

    mul-double v14, v1, v12

    mul-double v14, v14, v3

    mul-double v16, v5, v12

    mul-double v16, v16, v7

    add-double v14, v14, v16

    const/16 v16, 0x1

    aput-wide v14, v11, v16

    mul-double v14, v1, v12

    mul-double v14, v14, v5

    mul-double v16, v3, v12

    mul-double v16, v16, v7

    sub-double v14, v14, v16

    const/16 v16, 0x2

    aput-wide v14, v11, v16

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    aput-wide v14, v11, v16

    mul-double v16, v1, v12

    mul-double v16, v16, v3

    mul-double v18, v5, v12

    mul-double v18, v18, v7

    sub-double v16, v16, v18

    const/16 v18, 0x4

    aput-wide v16, v11, v18

    mul-double v16, v1, v12

    mul-double v16, v16, v1

    sub-double v16, v9, v16

    mul-double v18, v5, v12

    mul-double v18, v18, v5

    sub-double v16, v16, v18

    const/16 v18, 0x5

    aput-wide v16, v11, v18

    mul-double v16, v3, v12

    mul-double v16, v16, v5

    mul-double v18, v1, v12

    mul-double v18, v18, v7

    add-double v16, v16, v18

    const/16 v18, 0x6

    aput-wide v16, v11, v18

    const/16 v16, 0x7

    aput-wide v14, v11, v16

    mul-double v16, v1, v12

    mul-double v16, v16, v5

    mul-double v18, v3, v12

    mul-double v18, v18, v7

    add-double v16, v16, v18

    const/16 v18, 0x8

    aput-wide v16, v11, v18

    mul-double v16, v3, v12

    mul-double v16, v16, v5

    mul-double v18, v1, v12

    mul-double v18, v18, v7

    sub-double v16, v16, v18

    const/16 v18, 0x9

    aput-wide v16, v11, v18

    mul-double v16, v1, v12

    mul-double v16, v16, v1

    sub-double v16, v9, v16

    mul-double v12, v12, v3

    mul-double v12, v12, v3

    sub-double v16, v16, v12

    const/16 v12, 0xa

    aput-wide v16, v11, v12

    const/16 v12, 0xb

    aput-wide v14, v11, v12

    iget-object v12, v0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    .line 119
    invoke-virtual {v12}, Lorg/ros/rosjava_geometry/Vector3;->getX()D

    move-result-wide v12

    const/16 v14, 0xc

    aput-wide v12, v11, v14

    iget-object v12, v0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-virtual {v12}, Lorg/ros/rosjava_geometry/Vector3;->getY()D

    move-result-wide v12

    const/16 v14, 0xd

    aput-wide v12, v11, v14

    iget-object v12, v0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-virtual {v12}, Lorg/ros/rosjava_geometry/Vector3;->getZ()D

    move-result-wide v12

    const/16 v14, 0xe

    aput-wide v12, v11, v14

    const/16 v12, 0xf

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    aput-wide v13, v11, v12

    .line 116
    return-object v11
.end method

.method public toPoseMessage(Lgeometry_msgs/Pose;)Lgeometry_msgs/Pose;
    .registers 4
    .param p1, "result"    # Lgeometry_msgs/Pose;

    .line 129
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-interface {p1}, Lgeometry_msgs/Pose;->getPosition()Lgeometry_msgs/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Vector3;->toPointMessage(Lgeometry_msgs/Point;)Lgeometry_msgs/Point;

    move-result-object v0

    invoke-interface {p1, v0}, Lgeometry_msgs/Pose;->setPosition(Lgeometry_msgs/Point;)V

    .line 130
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-interface {p1}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Quaternion;->toQuaternionMessage(Lgeometry_msgs/Quaternion;)Lgeometry_msgs/Quaternion;

    move-result-object v0

    invoke-interface {p1, v0}, Lgeometry_msgs/Pose;->setOrientation(Lgeometry_msgs/Quaternion;)V

    .line 131
    return-object p1
.end method

.method public toPoseStampedMessage(Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;Lgeometry_msgs/PoseStamped;)Lgeometry_msgs/PoseStamped;
    .registers 6
    .param p1, "frame"    # Lorg/ros/namespace/GraphName;
    .param p2, "stamp"    # Lorg/ros/message/Time;
    .param p3, "result"    # Lgeometry_msgs/PoseStamped;

    .line 136
    invoke-interface {p3}, Lgeometry_msgs/PoseStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lstd_msgs/Header;->setFrameId(Ljava/lang/String;)V

    .line 137
    invoke-interface {p3}, Lgeometry_msgs/PoseStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v0

    invoke-interface {v0, p2}, Lstd_msgs/Header;->setStamp(Lorg/ros/message/Time;)V

    .line 138
    invoke-interface {p3}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/rosjava_geometry/Transform;->toPoseMessage(Lgeometry_msgs/Pose;)Lgeometry_msgs/Pose;

    move-result-object v0

    invoke-interface {p3, v0}, Lgeometry_msgs/PoseStamped;->setPose(Lgeometry_msgs/Pose;)V

    .line 139
    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 157
    const-string v0, "Transform<%s, %s>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTransformMessage(Lgeometry_msgs/Transform;)Lgeometry_msgs/Transform;
    .registers 4
    .param p1, "result"    # Lgeometry_msgs/Transform;

    .line 123
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->translation:Lorg/ros/rosjava_geometry/Vector3;

    invoke-interface {p1}, Lgeometry_msgs/Transform;->getTranslation()Lgeometry_msgs/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Vector3;->toVector3Message(Lgeometry_msgs/Vector3;)Lgeometry_msgs/Vector3;

    move-result-object v0

    invoke-interface {p1, v0}, Lgeometry_msgs/Transform;->setTranslation(Lgeometry_msgs/Vector3;)V

    .line 124
    iget-object v0, p0, Lorg/ros/rosjava_geometry/Transform;->rotationAndScale:Lorg/ros/rosjava_geometry/Quaternion;

    invoke-interface {p1}, Lgeometry_msgs/Transform;->getRotation()Lgeometry_msgs/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/Quaternion;->toQuaternionMessage(Lgeometry_msgs/Quaternion;)Lgeometry_msgs/Quaternion;

    move-result-object v0

    invoke-interface {p1, v0}, Lgeometry_msgs/Transform;->setRotation(Lgeometry_msgs/Quaternion;)V

    .line 125
    return-object p1
.end method
