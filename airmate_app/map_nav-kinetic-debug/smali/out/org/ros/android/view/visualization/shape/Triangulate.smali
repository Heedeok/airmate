.class public Lorg/ros/android/view/visualization/shape/Triangulate;
.super Ljava/lang/Object;
.source "Triangulate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/android/view/visualization/shape/Triangulate$Point;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 1.0E-9f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static area([Lorg/ros/android/view/visualization/shape/Triangulate$Point;)F
    .registers 8
    .param p0, "contour"    # [Lorg/ros/android/view/visualization/shape/Triangulate$Point;

    .line 140
    array-length v0, p0

    .line 141
    .local v0, "n":I
    const/4 v1, 0x0

    .line 142
    .local v1, "A":F
    add-int/lit8 v2, v0, -0x1

    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "q":I
    :goto_5
    if-ge v3, v0, :cond_2a

    .line 143
    aget-object v4, p0, v2

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->x()F

    move-result v4

    aget-object v5, p0, v3

    invoke-virtual {v5}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->y()F

    move-result v5

    mul-float v4, v4, v5

    aget-object v5, p0, v3

    invoke-virtual {v5}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->x()F

    move-result v5

    aget-object v6, p0, v2

    invoke-virtual {v6}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->y()F

    move-result v6

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 142
    add-int/lit8 v4, v3, 0x1

    .local v4, "q":I
    move v2, v3

    move v3, v4

    goto :goto_5

    .line 145
    .end local v2    # "p":I
    .end local v3    # "q":I
    .end local v4    # "q":I
    :cond_2a
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v1

    return v2
.end method

.method public static isInsideTriangle(FFFFFFFF)Z
    .registers 25
    .param p0, "Ax"    # F
    .param p1, "Ay"    # F
    .param p2, "Bx"    # F
    .param p3, "By"    # F
    .param p4, "Cx"    # F
    .param p5, "Cy"    # F
    .param p6, "Px"    # F
    .param p7, "Py"    # F

    .line 158
    sub-float v0, p4, p2

    .line 159
    .local v0, "ax":F
    sub-float v1, p5, p3

    .line 160
    .local v1, "ay":F
    sub-float v2, p0, p4

    .line 161
    .local v2, "bx":F
    sub-float v3, p1, p5

    .line 162
    .local v3, "by":F
    sub-float v4, p2, p0

    .line 163
    .local v4, "cx":F
    sub-float v5, p3, p1

    .line 164
    .local v5, "cy":F
    sub-float v6, p6, p0

    .line 165
    .local v6, "apx":F
    sub-float v7, p7, p1

    .line 166
    .local v7, "apy":F
    sub-float v8, p6, p2

    .line 167
    .local v8, "bpx":F
    sub-float v9, p7, p3

    .line 168
    .local v9, "bpy":F
    sub-float v10, p6, p4

    .line 169
    .local v10, "cpx":F
    sub-float v11, p7, p5

    .line 170
    .local v11, "cpy":F
    mul-float v12, v0, v9

    mul-float v13, v1, v8

    sub-float/2addr v12, v13

    .line 171
    .local v12, "aCROSSbp":F
    mul-float v13, v4, v7

    mul-float v14, v5, v6

    sub-float/2addr v13, v14

    .line 172
    .local v13, "cCROSSap":F
    mul-float v14, v2, v11

    mul-float v15, v3, v10

    sub-float/2addr v14, v15

    .line 173
    .local v14, "bCROSScp":F
    const/4 v15, 0x0

    cmpl-float v16, v12, v15

    if-ltz v16, :cond_36

    cmpl-float v16, v14, v15

    if-ltz v16, :cond_36

    cmpl-float v15, v13, v15

    if-ltz v15, :cond_36

    const/4 v15, 0x1

    goto :goto_37

    :cond_36
    const/4 v15, 0x0

    :goto_37
    return v15
.end method

.method public static process([Lorg/ros/android/view/visualization/shape/Triangulate$Point;Ljava/util/List;)Z
    .registers 19
    .param p0, "contour"    # [Lorg/ros/android/view/visualization/shape/Triangulate$Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/ros/android/view/visualization/shape/Triangulate$Point;",
            "Ljava/util/List<",
            "Lorg/ros/android/view/visualization/shape/Triangulate$Point;",
            ">;)Z"
        }
    .end annotation

    .line 62
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/ros/android/view/visualization/shape/Triangulate$Point;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    array-length v8, v6

    .line 63
    .local v8, "n":I
    const/4 v9, 0x0

    const/4 v0, 0x3

    if-ge v8, v0, :cond_a

    .line 64
    return v9

    .line 67
    :cond_a
    new-array v10, v8, [I

    .line 70
    .local v10, "V":[I
    const/4 v0, 0x0

    invoke-static/range {p0 .. p0}, Lorg/ros/android/view/visualization/shape/Triangulate;->area([Lorg/ros/android/view/visualization/shape/Triangulate$Point;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    .line 71
    const/4 v0, 0x0

    .local v0, "v":I
    :goto_16
    if-ge v0, v8, :cond_28

    .line 72
    aput v0, v10, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 75
    .end local v0    # "v":I
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "v":I
    :goto_1e
    if-ge v0, v8, :cond_28

    .line 76
    add-int/lit8 v1, v8, -0x1

    sub-int/2addr v1, v0

    aput v1, v10, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 80
    .end local v0    # "v":I
    :cond_28
    move v0, v8

    .line 83
    .local v0, "nv":I
    mul-int/lit8 v1, v0, 0x2

    .line 85
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "m":I
    add-int/lit8 v3, v0, -0x1

    move v11, v0

    move v12, v2

    .end local v0    # "nv":I
    .end local v2    # "m":I
    .local v3, "v":I
    .local v11, "nv":I
    .local v12, "m":I
    :goto_30
    move v0, v3

    .end local v3    # "v":I
    .local v0, "v":I
    const/4 v2, 0x2

    if-le v11, v2, :cond_87

    .line 87
    add-int/lit8 v13, v1, -0x1

    .local v13, "count":I
    if-gtz v1, :cond_39

    .line 89
    .end local v1    # "count":I
    return v9

    .line 93
    :cond_39
    move v1, v0

    .line 94
    .local v1, "u":I
    if-gt v11, v1, :cond_3d

    .line 95
    const/4 v1, 0x0

    .line 97
    .end local v1    # "u":I
    .local v14, "u":I
    :cond_3d
    move v14, v1

    add-int/lit8 v0, v14, 0x1

    .line 98
    if-gt v11, v0, :cond_43

    .line 99
    const/4 v0, 0x0

    .line 101
    .end local v0    # "v":I
    .local v15, "v":I
    :cond_43
    move v15, v0

    add-int/lit8 v0, v15, 0x1

    .line 102
    .local v0, "w":I
    if-gt v11, v0, :cond_49

    .line 103
    const/4 v0, 0x0

    .line 106
    .end local v0    # "w":I
    .local v16, "w":I
    :cond_49
    move/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lorg/ros/android/view/visualization/shape/Triangulate;->snip([Lorg/ros/android/view/visualization/shape/Triangulate$Point;IIII[I)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 108
    aget v0, v10, v14

    .line 109
    .local v0, "a":I
    aget v1, v10, v15

    .line 110
    .local v1, "b":I
    aget v2, v10, v16

    .line 113
    .local v2, "c":I
    aget-object v3, v6, v0

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    aget-object v3, v6, v1

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    aget-object v3, v6, v2

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v12, v12, 0x1

    .line 120
    move v3, v15

    .local v3, "s":I
    add-int/lit8 v4, v15, 0x1

    .local v4, "t":I
    :goto_73
    if-ge v4, v11, :cond_7e

    .line 121
    aget v5, v10, v4

    aput v5, v10, v3

    .line 120
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 123
    .end local v3    # "s":I
    .end local v4    # "t":I
    :cond_7e
    add-int/lit8 v11, v11, -0x1

    .line 126
    mul-int/lit8 v0, v11, 0x2

    .line 128
    move v1, v0

    goto :goto_85

    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "c":I
    .end local v14    # "u":I
    .end local v16    # "w":I
    :cond_84
    move v1, v13

    .line 85
    .end local v13    # "count":I
    .local v1, "count":I
    :goto_85
    move v3, v15

    goto :goto_30

    .line 130
    .end local v12    # "m":I
    .end local v15    # "v":I
    :cond_87
    const/4 v0, 0x1

    return v0
.end method

.method private static snip([Lorg/ros/android/view/visualization/shape/Triangulate$Point;IIII[I)Z
    .registers 27
    .param p0, "contour"    # [Lorg/ros/android/view/visualization/shape/Triangulate$Point;
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I
    .param p4, "n"    # I
    .param p5, "V"    # [I

    .line 177
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    aget v3, p5, v0

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->x()F

    move-result v3

    .line 178
    .local v3, "Ax":F
    aget v4, p5, v0

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->y()F

    move-result v12

    .line 179
    .local v12, "Ay":F
    aget v4, p5, v1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->x()F

    move-result v13

    .line 180
    .local v13, "Bx":F
    aget v4, p5, v1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->y()F

    move-result v14

    .line 181
    .local v14, "By":F
    aget v4, p5, v2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->x()F

    move-result v15

    .line 182
    .local v15, "Cx":F
    aget v4, p5, v2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->y()F

    move-result v16

    .line 184
    .local v16, "Cy":F
    sub-float v4, v13, v3

    sub-float v5, v16, v12

    mul-float v4, v4, v5

    sub-float v5, v14, v12

    sub-float v6, v15, v3

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    const/16 v17, 0x0

    const v5, 0x3089705f    # 1.0E-9f

    cmpl-float v4, v5, v4

    if-lez v4, :cond_4d

    .line 185
    return v17

    .line 188
    :cond_4d
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_4e
    move v11, v4

    move/from16 v10, p4

    .end local v4    # "p":I
    .local v11, "p":I
    if-ge v11, v10, :cond_86

    .line 189
    if-eq v11, v0, :cond_81

    if-eq v11, v1, :cond_81

    if-ne v11, v2, :cond_5d

    .line 190
    nop

    .line 188
    move/from16 v20, v11

    goto :goto_83

    .line 192
    :cond_5d
    aget v4, p5, v11

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->x()F

    move-result v18

    .line 193
    .local v18, "Px":F
    aget v4, p5, v11

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->y()F

    move-result v19

    .line 194
    .local v19, "Py":F
    move v4, v3

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v18

    move/from16 v20, v11

    .end local v11    # "p":I
    .local v20, "p":I
    move/from16 v11, v19

    invoke-static/range {v4 .. v11}, Lorg/ros/android/view/visualization/shape/Triangulate;->isInsideTriangle(FFFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 195
    return v17

    .line 188
    .end local v18    # "Px":F
    .end local v19    # "Py":F
    .end local v20    # "p":I
    .restart local v11    # "p":I
    :cond_81
    move/from16 v20, v11

    .end local v11    # "p":I
    .restart local v20    # "p":I
    :cond_83
    :goto_83
    add-int/lit8 v4, v20, 0x1

    goto :goto_4e

    .line 198
    .end local v20    # "p":I
    :cond_86
    const/4 v4, 0x1

    return v4
.end method
