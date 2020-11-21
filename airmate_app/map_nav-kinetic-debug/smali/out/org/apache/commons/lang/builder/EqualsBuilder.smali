.class public Lorg/apache/commons/lang/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private isEquals:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 102
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .registers 13
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "builder"    # Lorg/apache/commons/lang/builder/EqualsBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .line 320
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 321
    .local v0, "fields":[Ljava/lang/reflect/Field;
    if-eqz p5, :cond_b

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_d

    :cond_b
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 322
    .local v1, "excludedFieldList":Ljava/util/List;
    :goto_d
    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 323
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_60

    iget-boolean v3, p3, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v3, :cond_60

    .line 324
    aget-object v3, v0, v2

    .line 325
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5d

    if-nez p4, :cond_3e

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_5d

    :cond_3e
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 330
    :try_start_48
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    :try_end_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_53} :catch_54

    .line 335
    goto :goto_5d

    .line 331
    :catch_54
    move-exception v4

    .line 334
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/InternalError;

    const-string v6, "Unexpected IllegalAccessException"

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 323
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 338
    .end local v2    # "i":I
    :cond_60
    return-void
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # Ljava/util/Collection;

    .line 148
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 4
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z

    .line 195
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)Z
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .registers 21
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .line 255
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    if-ne v11, v12, :cond_8

    .line 256
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_8
    const/4 v13, 0x0

    if-eqz v11, :cond_71

    if-nez v12, :cond_f

    goto/16 :goto_71

    .line 265
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 266
    .local v14, "lhsClass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 268
    .local v15, "rhsClass":Ljava/lang/Class;
    invoke-virtual {v14, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 269
    move-object v0, v14

    .line 270
    .local v0, "testClass":Ljava/lang/Class;
    invoke-virtual {v15, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 272
    move-object v0, v15

    goto :goto_34

    .line 274
    .end local v0    # "testClass":Ljava/lang/Class;
    :cond_26
    invoke-virtual {v15, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 275
    move-object v0, v15

    .line 276
    .restart local v0    # "testClass":Ljava/lang/Class;
    invoke-virtual {v14, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 278
    move-object v0, v14

    .line 284
    .end local v0    # "testClass":Ljava/lang/Class;
    :cond_34
    :goto_34
    new-instance v4, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    .line 286
    .local v4, "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move/from16 v5, p2

    move-object/from16 v6, p4

    :try_start_42
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 287
    :goto_45
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_49} :catch_6a

    if-eqz v1, :cond_63

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_65

    .line 288
    :try_start_4f
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 289
    .local v7, "testClass":Ljava/lang/Class;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v4

    move/from16 v9, p2

    move-object/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_5f} :catch_61

    .line 287
    move-object v0, v7

    goto :goto_45

    .line 291
    .end local v7    # "testClass":Ljava/lang/Class;
    :catch_61
    move-exception v0

    goto :goto_6d

    .line 298
    :cond_63
    move-object/from16 v1, p3

    .line 299
    :cond_65
    invoke-virtual {v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0

    .line 291
    :catch_6a
    move-exception v0

    move-object/from16 v1, p3

    .line 297
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_6d
    return v13

    .line 282
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :cond_6e
    move-object/from16 v1, p3

    return v13

    .line 259
    .end local v14    # "lhsClass":Ljava/lang/Class;
    .end local v15    # "rhsClass":Ljava/lang/Class;
    :cond_71
    :goto_71
    move-object/from16 v1, p3

    return v13
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .line 487
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 488
    return-object p0

    .line 490
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 491
    return-object p0
.end method

.method public append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .line 472
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 473
    return-object p0

    .line 475
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 476
    return-object p0
.end method

.method public append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 9
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .line 508
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 509
    return-object p0

    .line 511
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 5
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .line 528
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 529
    return-object p0

    .line 531
    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .line 442
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 443
    return-object p0

    .line 445
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 446
    return-object p0
.end method

.method public append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .line 427
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 428
    return-object p0

    .line 430
    :cond_5
    cmp-long v0, p1, p3

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 431
    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 7
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 368
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 369
    return-object p0

    .line 371
    :cond_5
    if-ne p1, p2, :cond_8

    .line 372
    return-object p0

    .line 374
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_be

    if-nez p2, :cond_f

    goto/16 :goto_be

    .line 378
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 379
    .local v1, "lhsClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_34

    .line 380
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_2c

    .line 381
    move-object v2, p1

    check-cast v2, Ljava/math/BigDecimal;

    invoke-virtual {v2, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_28

    const/4 v0, 0x1

    nop

    :cond_28
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto/16 :goto_bd

    .line 384
    :cond_2c
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto/16 :goto_bd

    .line 386
    :cond_34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_43

    .line 388
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_bd

    .line 392
    :cond_43
    instance-of v0, p1, [J

    if-eqz v0, :cond_52

    .line 393
    move-object v0, p1

    check-cast v0, [J

    move-object v2, p2

    check-cast v2, [J

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_bd

    .line 394
    :cond_52
    instance-of v0, p1, [I

    if-eqz v0, :cond_60

    .line 395
    move-object v0, p1

    check-cast v0, [I

    move-object v2, p2

    check-cast v2, [I

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_bd

    .line 396
    :cond_60
    instance-of v0, p1, [S

    if-eqz v0, :cond_6e

    .line 397
    move-object v0, p1

    check-cast v0, [S

    move-object v2, p2

    check-cast v2, [S

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_bd

    .line 398
    :cond_6e
    instance-of v0, p1, [C

    if-eqz v0, :cond_7c

    .line 399
    move-object v0, p1

    check-cast v0, [C

    move-object v2, p2

    check-cast v2, [C

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_bd

    .line 400
    :cond_7c
    instance-of v0, p1, [B

    if-eqz v0, :cond_8a

    .line 401
    move-object v0, p1

    check-cast v0, [B

    move-object v2, p2

    check-cast v2, [B

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_bd

    .line 402
    :cond_8a
    instance-of v0, p1, [D

    if-eqz v0, :cond_98

    .line 403
    move-object v0, p1

    check-cast v0, [D

    move-object v2, p2

    check-cast v2, [D

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_bd

    .line 404
    :cond_98
    instance-of v0, p1, [F

    if-eqz v0, :cond_a6

    .line 405
    move-object v0, p1

    check-cast v0, [F

    move-object v2, p2

    check-cast v2, [F

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_bd

    .line 406
    :cond_a6
    instance-of v0, p1, [Z

    if-eqz v0, :cond_b4

    .line 407
    move-object v0, p1

    check-cast v0, [Z

    move-object v2, p2

    check-cast v2, [Z

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_bd

    .line 410
    :cond_b4
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 412
    :goto_bd
    return-object p0

    .line 375
    .end local v1    # "lhsClass":Ljava/lang/Class;
    :cond_be
    :goto_be
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 376
    return-object p0
.end method

.method public append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .line 457
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 458
    return-object p0

    .line 460
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 461
    return-object p0
.end method

.method public append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .line 542
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 543
    return-object p0

    .line 545
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 546
    return-object p0
.end method

.method public append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .line 715
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 716
    return-object p0

    .line 718
    :cond_5
    if-ne p1, p2, :cond_8

    .line 719
    return-object p0

    .line 721
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 725
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 726
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 727
    return-object p0

    .line 729
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 730
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 732
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 722
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 723
    return-object p0
.end method

.method public append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .line 684
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 685
    return-object p0

    .line 687
    :cond_5
    if-ne p1, p2, :cond_8

    .line 688
    return-object p0

    .line 690
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 694
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 695
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 696
    return-object p0

    .line 698
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 699
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 701
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 691
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 692
    return-object p0
.end method

.method public append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 8
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .line 746
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 747
    return-object p0

    .line 749
    :cond_5
    if-ne p1, p2, :cond_8

    .line 750
    return-object p0

    .line 752
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 756
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 757
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 758
    return-object p0

    .line 760
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 761
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 763
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 753
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 754
    return-object p0
.end method

.method public append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .line 777
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 778
    return-object p0

    .line 780
    :cond_5
    if-ne p1, p2, :cond_8

    .line 781
    return-object p0

    .line 783
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 787
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 788
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 789
    return-object p0

    .line 791
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 792
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 794
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 784
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 785
    return-object p0
.end method

.method public append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .line 622
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 623
    return-object p0

    .line 625
    :cond_5
    if-ne p1, p2, :cond_8

    .line 626
    return-object p0

    .line 628
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 632
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 633
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 634
    return-object p0

    .line 636
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 637
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 639
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 629
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 630
    return-object p0
.end method

.method public append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 8
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .line 591
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 592
    return-object p0

    .line 594
    :cond_5
    if-ne p1, p2, :cond_8

    .line 595
    return-object p0

    .line 597
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 601
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 602
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 603
    return-object p0

    .line 605
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 606
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 608
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 598
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 599
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .line 560
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 561
    return-object p0

    .line 563
    :cond_5
    if-ne p1, p2, :cond_8

    .line 564
    return-object p0

    .line 566
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 570
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 571
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 572
    return-object p0

    .line 574
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 575
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 577
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 567
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 568
    return-object p0
.end method

.method public append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .line 653
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 654
    return-object p0

    .line 656
    :cond_5
    if-ne p1, p2, :cond_8

    .line 657
    return-object p0

    .line 659
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 663
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 664
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 665
    return-object p0

    .line 667
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 668
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 670
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 660
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 661
    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .line 808
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 809
    return-object p0

    .line 811
    :cond_5
    if-ne p1, p2, :cond_8

    .line 812
    return-object p0

    .line 814
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 818
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 819
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 820
    return-object p0

    .line 822
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 823
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 825
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 815
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 816
    return-object p0
.end method

.method public appendSuper(Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .registers 3
    .param p1, "superEquals"    # Z

    .line 350
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 351
    return-object p0

    .line 353
    :cond_5
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 354
    return-object p0
.end method

.method public isEquals()Z
    .registers 2

    .line 835
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method protected setEquals(Z)V
    .registers 2
    .param p1, "isEquals"    # Z

    .line 845
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 846
    return-void
.end method
