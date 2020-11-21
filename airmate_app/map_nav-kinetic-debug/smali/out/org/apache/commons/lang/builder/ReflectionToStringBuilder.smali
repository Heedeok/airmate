.class public Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;
.super Lorg/apache/commons/lang/builder/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# instance fields
.field private appendStatics:Z

.field private appendTransients:Z

.field private excludeFieldNames:[Ljava/lang/String;

.field private upToClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 448
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 449
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 468
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 469
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .line 494
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 495
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;Z)V
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;
    .param p5, "outputTransients"    # Z

    .line 515
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 516
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 517
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 518
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;
    .param p5, "outputTransients"    # Z
    .param p6, "outputStatics"    # Z

    .line 539
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 540
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 541
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 542
    invoke-virtual {p0, p6}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    .line 543
    return-void
.end method

.method static toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 2
    .param p0, "collection"    # Ljava/util/Collection;

    .line 373
    if-nez p0, :cond_5

    .line 374
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 376
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5
    .param p0, "array"    # [Ljava/lang/Object;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    .local v0, "list":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 391
    aget-object v2, p0, v1

    .line 392
    .local v2, "e":Ljava/lang/Object;
    if-eqz v2, :cond_15

    .line 393
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v2    # "e":Ljava/lang/Object;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 396
    .end local v1    # "i":I
    :cond_18
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)Ljava/lang/String;
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 153
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Z)Ljava/lang/String;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .registers 11
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .line 334
    new-instance v6, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;Z)V

    invoke-virtual {v6}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZ)Ljava/lang/String;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z

    .line 237
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .registers 13
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;

    .line 287
    new-instance v7, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    invoke-virtual {v7}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringExclude(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldName"    # Ljava/lang/String;

    .line 347
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringExclude(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldNames"    # Ljava/util/Collection;

    .line 360
    invoke-static {p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldNames"    # [Ljava/lang/String;

    .line 410
    new-instance v0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected accept(Ljava/lang/reflect/Field;)Z
    .registers 5
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 558
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    .line 560
    return v1

    .line 562
    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v0

    if-nez v0, :cond_20

    .line 564
    return v1

    .line 566
    :cond_20
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->isAppendStatics()Z

    move-result v0

    if-nez v0, :cond_31

    .line 568
    return v1

    .line 570
    :cond_31
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getExcludeFieldNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getExcludeFieldNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_46

    .line 573
    return v1

    .line 575
    :cond_46
    const/4 v0, 0x1

    return v0
.end method

.method protected appendFieldsIn(Ljava/lang/Class;)V
    .registers 10
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 592
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 593
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    .line 594
    return-void

    .line 596
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 597
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v2, v0

    if-ge v1, v2, :cond_4d

    .line 599
    aget-object v2, v0, v1

    .line 600
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 601
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 605
    :try_start_26
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    .line 606
    .local v4, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2d} :catch_2e

    .line 613
    .end local v4    # "fieldValue":Ljava/lang/Object;
    goto :goto_4a

    .line 607
    :catch_2e
    move-exception v4

    .line 612
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/InternalError;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unexpected IllegalAccessException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 598
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 616
    .end local v1    # "i":I
    :cond_4d
    return-void
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .registers 2

    .line 622
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getUpToClass()Ljava/lang/Class;
    .registers 2

    .line 633
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAppendStatics()Z
    .registers 2

    .line 665
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    return v0
.end method

.method public isAppendTransients()Z
    .registers 2

    .line 676
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    return v0
.end method

.method public reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # Ljava/lang/Object;

    .line 689
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    return-object p0
.end method

.method public setAppendStatics(Z)V
    .registers 2
    .param p1, "appendStatics"    # Z

    .line 703
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 704
    return-void
.end method

.method public setAppendTransients(Z)V
    .registers 2
    .param p1, "appendTransients"    # Z

    .line 715
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 716
    return-void
.end method

.method public setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;
    .registers 3
    .param p1, "excludeFieldNamesParam"    # [Ljava/lang/String;

    .line 726
    if-nez p1, :cond_6

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    goto :goto_11

    .line 729
    :cond_6
    invoke-static {p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 730
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 732
    :goto_11
    return-object p0
.end method

.method public setUpToClass(Ljava/lang/Class;)V
    .registers 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 744
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 745
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 755
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 756
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 758
    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 759
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    .line 760
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 761
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 762
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_1a

    .line 764
    :cond_2e
    invoke-super {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
