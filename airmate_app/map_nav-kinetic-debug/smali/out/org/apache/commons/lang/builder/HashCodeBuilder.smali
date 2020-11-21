.class public Lorg/apache/commons/lang/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"


# static fields
.field private static registry:Ljava/lang/ThreadLocal;


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder$1;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder$1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->registry:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 556
    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    .line 557
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 558
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "initialNonZeroOddNumber"    # I
    .param p2, "multiplierNonZeroOddNumber"    # I

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 578
    if-eqz p1, :cond_2f

    .line 581
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_27

    .line 584
    if-eqz p2, :cond_1f

    .line 587
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_17

    .line 590
    iput p2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    .line 591
    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 592
    return-void

    .line 588
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getRegistry()Ljava/util/Set;
    .registers 1

    .line 122
    sget-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->registry:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 137
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toIdentityHashCodeInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .registers 12
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "builder"    # Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .param p3, "useTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .line 158
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    return-void

    .line 162
    :cond_7
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 164
    .local v0, "fields":[Ljava/lang/reflect/Field;
    if-eqz p4, :cond_15

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_17

    :cond_15
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 165
    .local v1, "excludedFieldList":Ljava/util/List;
    :goto_17
    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, v0

    if-ge v2, v3, :cond_62

    .line 167
    aget-object v3, v0, v2

    .line 168
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5f

    if-nez p3, :cond_44

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_5f

    :cond_44
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_67

    if-nez v4, :cond_5f

    .line 173
    :try_start_4e
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 174
    .local v4, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p2, v4}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    :try_end_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_4e .. :try_end_55} :catch_56
    .catchall {:try_start_4e .. :try_end_55} :catchall_67

    .line 179
    .end local v4    # "fieldValue":Ljava/lang/Object;
    goto :goto_5f

    .line 175
    :catch_56
    move-exception v4

    .line 178
    .local v4, "e":Ljava/lang/IllegalAccessException;
    :try_start_57
    new-instance v5, Ljava/lang/InternalError;

    const-string v6, "Unexpected IllegalAccessException"

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_67

    .line 166
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :cond_5f
    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 183
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "excludedFieldList":Ljava/util/List;
    .end local v2    # "i":I
    :cond_62
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_67
    move-exception v0

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    throw v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .registers 9
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 225
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .registers 10
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z

    .line 269
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;)I
    .registers 11
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;

    .line 291
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 9
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .line 343
    if-eqz p2, :cond_23

    .line 346
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    .line 347
    .local v0, "builder":Lorg/apache/commons/lang/builder/HashCodeBuilder;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 348
    .local v1, "clazz":Ljava/lang/Class;
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 349
    :goto_e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1e

    if-eq v1, p4, :cond_1e

    .line 350
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 351
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_e

    .line 353
    :cond_1e
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v2

    return v2

    .line 344
    .end local v0    # "builder":Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object to build a hash code for must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;)I
    .registers 7
    .param p0, "object"    # Ljava/lang/Object;

    .line 387
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # Ljava/util/Collection;

    .line 459
    invoke-static {p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "testTransients"    # Z

    .line 423
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # [Ljava/lang/String;

    .line 497
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 509
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toIdentityHashCodeInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method private static toIdentityHashCodeInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 521
    new-instance v0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method static unregister(Ljava/lang/Object;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 537
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toIdentityHashCodeInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # B

    .line 645
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 646
    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # C

    .line 681
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 682
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 5
    .param p1, "value"    # D

    .line 715
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # F

    .line 748
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 749
    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # I

    .line 782
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 783
    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 6
    .param p1, "value"    # J

    .line 821
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr v1, p1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 822
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 855
    if-nez p1, :cond_c

    .line 856
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto/16 :goto_7d

    .line 861
    :cond_c
    instance-of v0, p1, [J

    if-eqz v0, :cond_18

    .line 862
    move-object v0, p1

    check-cast v0, [J

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto/16 :goto_7d

    .line 863
    :cond_18
    instance-of v0, p1, [I

    if-eqz v0, :cond_23

    .line 864
    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_7d

    .line 865
    :cond_23
    instance-of v0, p1, [S

    if-eqz v0, :cond_2e

    .line 866
    move-object v0, p1

    check-cast v0, [S

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([S)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_7d

    .line 867
    :cond_2e
    instance-of v0, p1, [C

    if-eqz v0, :cond_39

    .line 868
    move-object v0, p1

    check-cast v0, [C

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([C)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_7d

    .line 869
    :cond_39
    instance-of v0, p1, [B

    if-eqz v0, :cond_44

    .line 870
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_7d

    .line 871
    :cond_44
    instance-of v0, p1, [D

    if-eqz v0, :cond_4f

    .line 872
    move-object v0, p1

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_7d

    .line 873
    :cond_4f
    instance-of v0, p1, [F

    if-eqz v0, :cond_5a

    .line 874
    move-object v0, p1

    check-cast v0, [F

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([F)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_7d

    .line 875
    :cond_5a
    instance-of v0, p1, [Z

    if-eqz v0, :cond_65

    .line 876
    move-object v0, p1

    check-cast v0, [Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_7d

    .line 877
    :cond_65
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_70

    .line 879
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_7d

    .line 881
    :cond_70
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 884
    :goto_7d
    return-object p0
.end method

.method public append(S)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # S

    .line 917
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 918
    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # Z

    .line 609
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    xor-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 610
    return-object p0
.end method

.method public append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "array"    # [B

    .line 661
    if-nez p1, :cond_b

    .line 662
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 664
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 665
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 668
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([C)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "array"    # [C

    .line 695
    if-nez p1, :cond_b

    .line 696
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 698
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 699
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(C)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 702
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([D)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [D

    .line 728
    if-nez p1, :cond_b

    .line 729
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 731
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 732
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 735
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([F)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "array"    # [F

    .line 762
    if-nez p1, :cond_b

    .line 763
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 765
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 766
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(F)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 769
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "array"    # [I

    .line 796
    if-nez p1, :cond_b

    .line 797
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 799
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 800
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 803
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([J)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [J

    .line 835
    if-nez p1, :cond_b

    .line 836
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 838
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 839
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 842
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "array"    # [Ljava/lang/Object;

    .line 897
    if-nez p1, :cond_b

    .line 898
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 900
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 901
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 904
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([S)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "array"    # [S

    .line 931
    if-nez p1, :cond_b

    .line 932
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 934
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 935
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(S)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 938
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-object p0
.end method

.method public append([Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "array"    # [Z

    .line 623
    if-nez p1, :cond_b

    .line 624
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_17

    .line 626
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 627
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 630
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-object p0
.end method

.method public appendSuper(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .registers 4
    .param p1, "superHashCode"    # I

    .line 952
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 953
    return-object p0
.end method

.method public toHashCode()I
    .registers 2

    .line 964
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method
