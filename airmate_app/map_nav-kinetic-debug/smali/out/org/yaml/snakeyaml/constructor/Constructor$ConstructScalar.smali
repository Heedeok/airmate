.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "Constructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructScalar"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method

.method private constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;
    .registers 10
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 413
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_16

    .line 414
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 415
    .local v0, "stringConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 416
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_22d

    .end local v0    # "result":Ljava/lang/Object;
    :cond_16
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_21c

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_20

    goto/16 :goto_21c

    .line 419
    :cond_20
    const-class v0, Ljava/lang/Character;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1cf

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2c

    goto/16 :goto_1cf

    .line 430
    :cond_2c
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 431
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 432
    .local v0, "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    .line 433
    .local v3, "date":Ljava/util/Date;
    const-class v4, Ljava/util/Date;

    if-ne p1, v4, :cond_4d

    .line 434
    move-object v1, v3

    .line 443
    .end local v3    # "date":Ljava/util/Date;
    .local v0, "result":Ljava/lang/Object;
    :goto_4b
    move-object v0, v1

    goto :goto_68

    .line 437
    .local v0, "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .restart local v3    # "date":Ljava/util/Date;
    :cond_4d
    :try_start_4d
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 438
    .local v4, "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_67} :catch_6a

    .line 441
    .end local v4    # "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v1, "result":Ljava/lang/Object;
    goto :goto_4b

    .line 443
    .end local v1    # "result":Ljava/lang/Object;
    .end local v3    # "date":Ljava/util/Date;
    .local v0, "result":Ljava/lang/Object;
    :goto_68
    goto/16 :goto_22d

    .line 439
    .local v0, "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .restart local v3    # "date":Ljava/util/Date;
    :catch_6a
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot construct: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    .end local v0    # "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "date":Ljava/util/Date;
    :cond_87
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_197

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_197

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_197

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_197

    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_9d

    goto/16 :goto_197

    .line 454
    :cond_9d
    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_128

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_128

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_128

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_128

    const-class v0, Ljava/math/BigInteger;

    if-eq p1, v0, :cond_128

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_128

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_128

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_128

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_c2

    goto :goto_128

    .line 471
    :cond_c2
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 472
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "enumValueName":Ljava/lang/String;
    :try_start_ce
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d2} :catch_d7

    .line 478
    .local v1, "result":Ljava/lang/Object;
    nop

    .line 479
    .end local v0    # "enumValueName":Ljava/lang/String;
    nop

    .line 484
    move-object v0, v1

    goto/16 :goto_22d

    .line 475
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v0    # "enumValueName":Ljava/lang/String;
    :catch_d7
    move-exception v1

    .line 476
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find enum value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for enum class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 479
    .end local v0    # "enumValueName":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_fb
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 480
    new-instance v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;-><init>()V

    .line 481
    .local v0, "contr":Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;
    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    .line 482
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 483
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_22d

    .line 484
    .end local v0    # "result":Ljava/lang/Object;
    :cond_111
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_128
    :goto_128
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 458
    .local v0, "intConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 459
    .local v1, "result":Ljava/lang/Object;
    const-class v2, Ljava/lang/Byte;

    if-eq p1, v2, :cond_18a

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_141

    goto :goto_18a

    .line 461
    :cond_141
    const-class v2, Ljava/lang/Short;

    if-eq p1, v2, :cond_17f

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_14a

    goto :goto_17f

    .line 463
    :cond_14a
    const-class v2, Ljava/lang/Integer;

    if-eq p1, v2, :cond_172

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_153

    goto :goto_172

    .line 465
    :cond_153
    const-class v2, Ljava/lang/Long;

    if-eq p1, v2, :cond_167

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_15c

    goto :goto_167

    .line 469
    :cond_15c
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_195

    .line 466
    :cond_167
    :goto_167
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_194

    .line 464
    :cond_172
    :goto_172
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_194

    .line 462
    :cond_17f
    :goto_17f
    new-instance v2, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_194

    .line 460
    :cond_18a
    :goto_18a
    new-instance v2, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 471
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    :goto_194
    move-object v0, v1

    :goto_195
    goto/16 :goto_22d

    .line 445
    .end local v0    # "result":Ljava/lang/Object;
    :cond_197
    :goto_197
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_1a6

    .line 446
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_22d

    .line 448
    :cond_1a6
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 449
    .local v0, "doubleConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 450
    .restart local v1    # "result":Ljava/lang/Object;
    const-class v2, Ljava/lang/Float;

    if-eq p1, v2, :cond_1c1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_1bf

    goto :goto_1c1

    .line 453
    .end local v0    # "doubleConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    :cond_1bf
    move-object v0, v1

    goto :goto_1ce

    .line 451
    .restart local v0    # "doubleConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    :cond_1c1
    :goto_1c1
    new-instance v2, Ljava/lang/Float;

    move-object v3, v1

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Float;-><init>(D)V

    move-object v0, v2

    .line 453
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    :goto_1ce
    goto :goto_22d

    .line 420
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1cf
    :goto_1cf
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 421
    .local v0, "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 422
    .local v3, "ch":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1e9

    .line 423
    const/4 v1, 0x0

    goto :goto_1f7

    .line 424
    :cond_1e9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_1f9

    .line 428
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .end local v0    # "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v3    # "ch":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/Object;
    :goto_1f7
    move-object v0, v1

    .line 430
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    goto :goto_22d

    .line 425
    .local v0, "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .restart local v3    # "ch":Ljava/lang/String;
    :cond_1f9
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid node Character: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'; length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    .end local v0    # "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v3    # "ch":Ljava/lang/String;
    :cond_21c
    :goto_21c
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 418
    .local v0, "boolConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 484
    :goto_22d
    nop

    .line 486
    return-object v0
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 24
    .param p1, "nnode"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 354
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    check-cast v2, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 355
    .local v2, "node":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 357
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_117

    const-class v0, Ljava/lang/String;

    if-eq v3, v0, :cond_117

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_117

    const-class v0, Ljava/lang/Boolean;

    if-eq v3, v0, :cond_117

    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_117

    const-class v0, Ljava/lang/Character;

    if-eq v3, v0, :cond_117

    const-class v0, Ljava/math/BigInteger;

    if-eq v3, v0, :cond_117

    const-class v0, Ljava/math/BigDecimal;

    if-eq v3, v0, :cond_117

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_117

    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_117

    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto/16 :goto_117

    .line 366
    :cond_52
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 367
    .local v4, "javaConstructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x0

    .line 368
    .local v0, "oneArgCount":I
    const/4 v5, 0x0

    .line 369
    .local v5, "javaConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v6, v4

    .local v6, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    move v9, v0

    const/4 v0, 0x0

    .local v0, "i$":I
    .local v9, "oneArgCount":I
    :goto_5d
    const/4 v10, 0x1

    if-ge v0, v7, :cond_6f

    aget-object v11, v6, v0

    .line 370
    .local v11, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-ne v12, v10, :cond_6c

    .line 371
    add-int/lit8 v9, v9, 0x1

    .line 372
    move-object v5, v11

    .line 369
    .end local v11    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 376
    .end local v0    # "i$":I
    .end local v6    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v7    # "len$":I
    :cond_6f
    if-eqz v5, :cond_100

    .line 378
    if-ne v9, v10, :cond_7f

    .line 379
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-direct {v1, v0, v2}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v0

    .line 399
    move-object v6, v0

    goto :goto_92

    .line 388
    :cond_7f
    iget-object v0, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v0, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    .line 390
    .local v6, "argument":Ljava/lang/Object;
    :try_start_86
    new-array v0, v10, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_90} :catch_cc

    move-object v5, v0

    .line 396
    nop

    .line 399
    :goto_92
    :try_start_92
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v6, v0, v8

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9a} :catch_9c

    .line 404
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_11b

    .line 400
    .end local v0    # "result":Ljava/lang/Object;
    :catch_9c
    move-exception v0

    move-object v15, v0

    .line 401
    .local v15, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t construct a java object for scalar "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v14

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v0

    .line 391
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_cc
    move-exception v0

    move-object/from16 v21, v0

    .line 392
    .local v21, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t construct a java object for scalar "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; No String constructor found. Exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v20

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v0

    .line 377
    .end local v6    # "argument":Ljava/lang/Object;
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_100
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No single argument constructor found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    .end local v4    # "javaConstructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "javaConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "oneArgCount":I
    :cond_117
    :goto_117
    invoke-direct {v1, v3, v2}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v0

    .line 406
    .restart local v0    # "result":Ljava/lang/Object;
    :goto_11b
    return-object v0
.end method
