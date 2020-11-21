.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;
.super Ljava/lang/Object;
.source "Constructor.java"

# interfaces
.implements Lorg/yaml/snakeyaml/constructor/Construct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructSequence"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .registers 2

    .line 494
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final wrapIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 580
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 581
    return-object p1

    .line 583
    :cond_7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    .line 584
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 586
    :cond_e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_15

    .line 587
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 589
    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1c

    .line 590
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 592
    :cond_1c
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_23

    .line 593
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 595
    :cond_23
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2a

    .line 596
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 598
    :cond_2a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_31

    .line 599
    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 601
    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_38

    .line 602
    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 604
    :cond_38
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3f

    .line 605
    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 607
    :cond_3f
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected primitive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 15
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 497
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 498
    .local v0, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    const-class v1, Ljava/util/Set;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 499
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 502
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 500
    :cond_1c
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v2, "Set cannot be recursive."

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 504
    :cond_24
    const-class v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 505
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 506
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->createDefaultList(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 508
    :cond_45
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSequence(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 510
    :cond_4c
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 511
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 512
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/yaml/snakeyaml/constructor/Constructor;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 514
    :cond_6f
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructArray(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 518
    :cond_76
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    .local v1, "possibleConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<*>;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_8e
    if-ge v5, v3, :cond_a7

    aget-object v6, v2, v5

    .line 522
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-ne v7, v8, :cond_a4

    .line 523
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    .line 526
    .end local v2    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v3    # "len$":I
    .end local v5    # "i$":I
    :cond_a7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15e

    .line 527
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_fb

    .line 528
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 529
    .local v2, "argumentList":[Ljava/lang/Object;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 530
    .local v3, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    .line 531
    .local v4, "index":I
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_cd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ef

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/yaml/snakeyaml/nodes/Node;

    .line 532
    .local v6, "argumentNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v4

    .line 534
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v7}, Lorg/yaml/snakeyaml/nodes/Node;->setType(Ljava/lang/Class;)V

    .line 535
    add-int/lit8 v8, v4, 0x1

    .local v8, "index":I
    iget-object v9, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v9, v6}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v2, v4

    .line 536
    .end local v4    # "index":I
    .end local v6    # "argumentNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 531
    move v4, v8

    goto :goto_cd

    .line 539
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "index":I
    .restart local v4    # "index":I
    :cond_ef
    :try_start_ef
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f3} :catch_f4

    return-object v5

    .line 540
    :catch_f4
    move-exception v5

    .line 541
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v6, v5}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 546
    .end local v2    # "argumentList":[Ljava/lang/Object;
    .end local v3    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "index":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_fb
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSequence(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;

    move-result-object v2

    .line 547
    .local v2, "argumentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    .line 548
    .local v3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 549
    .local v5, "index":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_10c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 550
    .local v7, "parameter":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v3, v5

    .line 551
    add-int/lit8 v5, v5, 0x1

    goto :goto_10c

    .line 554
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "parameter":Ljava/lang/Object;
    :cond_11f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_123
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    .line 555
    .local v7, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 556
    .local v8, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    .line 557
    .local v9, "foundConstructor":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_135
    array-length v11, v8

    if-ge v10, v11, :cond_14b

    .line 558
    aget-object v11, v8, v10

    invoke-direct {p0, v11}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->wrapIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v11

    aget-object v12, v3, v10

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_148

    .line 559
    const/4 v9, 0x0

    .line 560
    goto :goto_14b

    .line 557
    :cond_148
    add-int/lit8 v10, v10, 0x1

    goto :goto_135

    .line 563
    .end local v10    # "i":I
    :cond_14b
    :goto_14b
    if-eqz v9, :cond_15d

    .line 565
    :try_start_14d
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_155} :catch_156

    return-object v4

    .line 566
    :catch_156
    move-exception v4

    .line 567
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v10, v4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 570
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v9    # "foundConstructor":Z
    :cond_15d
    goto :goto_123

    .line 572
    .end local v2    # "argumentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "index":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_15e
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No suitable constructor with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " arguments found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .registers 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "object"    # Ljava/lang/Object;

    .line 612
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 613
    .local v0, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    const-class v1, Ljava/util/List;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 614
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    .line 615
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSequenceStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/util/Collection;)V

    .line 616
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_27

    :cond_18
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 617
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0, p2}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructArrayStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :goto_27
    return-void

    .line 619
    :cond_28
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v2, "Immutable objects cannot be recursive."

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
