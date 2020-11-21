.class public Lorg/apache/commons/lang/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;


# instance fields
.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private suffixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private variableResolver:Lorg/apache/commons/lang/text/StrLookup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 101
    const-string v0, "${"

    invoke-static {v0}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

    .line 105
    const-string v0, "}"

    invoke-static {v0}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 170
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/lang/text/StrLookup;

    sget-object v1, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;C)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .param p1, "valueMap"    # Ljava/util/Map;

    .line 180
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;C)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "valueMap"    # Ljava/util/Map;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 192
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 6
    .param p1, "valueMap"    # Ljava/util/Map;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C

    .line 205
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang/text/StrLookup;)V
    .registers 5
    .param p1, "variableResolver"    # Lorg/apache/commons/lang/text/StrLookup;

    .line 214
    sget-object v0, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;C)V

    .line 215
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 5
    .param p1, "variableResolver"    # Lorg/apache/commons/lang/text/StrLookup;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang/text/StrLookup;)V

    .line 228
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrSubstitutor;

    .line 229
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrSubstitutor;

    .line 230
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/text/StrSubstitutor;->setEscapeChar(C)V

    .line 231
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang/text/StrLookup;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;C)V
    .registers 5
    .param p1, "variableResolver"    # Lorg/apache/commons/lang/text/StrLookup;
    .param p2, "prefixMatcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p4, "escape"    # C

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang/text/StrLookup;)V

    .line 245
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    .line 246
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    .line 247
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/text/StrSubstitutor;->setEscapeChar(C)V

    .line 248
    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "priorVariables"    # Ljava/util/List;

    .line 622
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 623
    return-void

    .line 625
    :cond_7
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 626
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 627
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 628
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 629
    const-string v1, "->"

    invoke-virtual {v0, p2, v1}, Lorg/apache/commons/lang/text/StrBuilder;->appendWithSeparators(Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 630
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueMap"    # Ljava/util/Map;

    .line 134
    new-instance v0, Lorg/apache/commons/lang/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueMap"    # Ljava/util/Map;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 150
    new-instance v0, Lorg/apache/commons/lang/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/Object;

    .line 161
    new-instance v0, Lorg/apache/commons/lang/text/StrSubstitutor;

    invoke-static {}, Lorg/apache/commons/lang/text/StrLookup;->systemPropertiesLookup()Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lorg/apache/commons/lang/text/StrBuilder;IILjava/util/List;)I
    .registers 27
    .param p1, "buf"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "priorVariables"    # Ljava/util/List;

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v4

    .line 538
    .local v4, "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v5

    .line 539
    .local v5, "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->getEscapeChar()C

    move-result v6

    .line 541
    .local v6, "escape":C
    if-nez p4, :cond_18

    const/4 v10, 0x1

    goto :goto_19

    :cond_18
    const/4 v10, 0x0

    .line 542
    .local v10, "top":Z
    :goto_19
    const/4 v11, 0x0

    .line 543
    .local v11, "altered":Z
    const/4 v12, 0x0

    .line 544
    .local v12, "lengthChange":I
    iget-object v13, v1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 545
    .local v13, "chars":[C
    add-int v14, v2, v3

    .line 546
    .local v14, "bufEnd":I
    move-object/from16 v15, p4

    move v9, v2

    .line 547
    .end local p4    # "priorVariables":Ljava/util/List;
    .local v9, "pos":I
    .local v15, "priorVariables":Ljava/util/List;
    :goto_22
    if-ge v9, v14, :cond_cc

    .line 548
    invoke-virtual {v4, v13, v9, v2, v14}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v16

    .line 549
    .local v16, "startMatchLen":I
    if-nez v16, :cond_36

    .line 550
    add-int/lit8 v9, v9, 0x1

    .line 546
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    .end local v16    # "startMatchLen":I
    :goto_32
    const/16 v17, 0x1

    goto/16 :goto_c2

    .line 553
    .restart local v16    # "startMatchLen":I
    :cond_36
    if-le v9, v2, :cond_52

    add-int/lit8 v17, v9, -0x1

    aget-char v7, v13, v17

    if-ne v7, v6, :cond_52

    .line 555
    add-int/lit8 v7, v9, -0x1

    invoke-virtual {v1, v7}, Lorg/apache/commons/lang/text/StrBuilder;->deleteCharAt(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 556
    iget-object v7, v1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 557
    .end local v13    # "chars":[C
    .local v7, "chars":[C
    add-int/lit8 v12, v12, -0x1

    .line 558
    const/4 v11, 0x1

    .line 559
    add-int/lit8 v14, v14, -0x1

    .line 546
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object v13, v7

    goto :goto_32

    .line 562
    .end local v7    # "chars":[C
    .restart local v13    # "chars":[C
    :cond_52
    move v7, v9

    .line 563
    .local v7, "startPos":I
    add-int v9, v9, v16

    .line 564
    move v8, v9

    const/4 v9, 0x0

    .line 565
    .local v8, "pos":I
    .local v9, "endMatchLen":I
    :goto_57
    if-ge v8, v14, :cond_b9

    .line 566
    invoke-virtual {v5, v13, v8, v2, v14}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v9

    .line 567
    if-nez v9, :cond_62

    .line 568
    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    .line 571
    :cond_62
    move-object/from16 v18, v4

    .end local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .local v18, "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    new-instance v4, Ljava/lang/String;

    move-object/from16 v19, v5

    .end local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .local v19, "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    add-int v5, v7, v16

    sub-int v17, v8, v7

    move/from16 v20, v6

    .end local v6    # "escape":C
    .local v20, "escape":C
    sub-int v6, v17, v16

    invoke-direct {v4, v13, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 573
    .local v4, "varName":Ljava/lang/String;
    add-int/2addr v8, v9

    .line 574
    move v5, v8

    .line 577
    .local v5, "endPos":I
    if-nez v15, :cond_85

    .line 578
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 579
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v13, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_85
    invoke-direct {v0, v4, v15}, Lorg/apache/commons/lang/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 584
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-virtual {v0, v4, v1, v7, v5}, Lorg/apache/commons/lang/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v6

    .line 588
    .local v6, "varValue":Ljava/lang/String;
    if-eqz v6, :cond_ab

    .line 590
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 591
    .local v2, "varLen":I
    invoke-virtual {v1, v7, v5, v6}, Lorg/apache/commons/lang/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 592
    const/4 v11, 0x1

    .line 593
    invoke-direct {v0, v1, v7, v2, v15}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;IILjava/util/List;)I

    move-result v17

    .line 594
    .local v17, "change":I
    sub-int v21, v5, v7

    sub-int v21, v2, v21

    add-int v17, v17, v21

    .line 595
    add-int v8, v8, v17

    .line 596
    add-int v14, v14, v17

    .line 597
    add-int v12, v12, v17

    .line 598
    iget-object v13, v1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 602
    .end local v2    # "varLen":I
    .end local v17    # "change":I
    :cond_ab
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v15, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 603
    nop

    .line 546
    move v9, v8

    goto :goto_c2

    .end local v7    # "startPos":I
    .end local v9    # "endMatchLen":I
    .end local v16    # "startMatchLen":I
    .end local v18    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v19    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v20    # "escape":C
    .local v4, "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .local v5, "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .local v6, "escape":C
    :cond_b9
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    const/16 v17, 0x1

    move v9, v8

    .end local v8    # "pos":I
    .local v9, "pos":I
    :goto_c2
    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v2, p2

    .end local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v6    # "escape":C
    .restart local v18    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v19    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v20    # "escape":C
    goto/16 :goto_22

    .line 609
    .end local v18    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v19    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v20    # "escape":C
    .restart local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v6    # "escape":C
    :cond_cc
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    const/16 v17, 0x1

    .end local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v6    # "escape":C
    .restart local v18    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v19    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v20    # "escape":C
    if-eqz v10, :cond_dc

    .line 610
    if-eqz v11, :cond_d9

    goto :goto_db

    :cond_d9
    const/16 v17, 0x0

    :goto_db
    return v17

    .line 612
    :cond_dc
    return v12
.end method


# virtual methods
.method public getEscapeChar()C
    .registers 2

    .line 666
    iget-char v0, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 2

    .line 692
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lorg/apache/commons/lang/text/StrLookup;
    .registers 2

    .line 818
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .registers 2

    .line 757
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;

    .line 422
    if-nez p1, :cond_4

    .line 423
    const/4 v0, 0x0

    return-object v0

    .line 425
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 426
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 427
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "source"    # Ljava/lang/String;

    .line 259
    if-nez p1, :cond_4

    .line 260
    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_15

    .line 264
    return-object p1

    .line 266
    :cond_15
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 282
    if-nez p1, :cond_4

    .line 283
    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 286
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 287
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 289
    :cond_1b
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 5
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 342
    if-nez p1, :cond_4

    .line 343
    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 346
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 347
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .registers 6
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 364
    if-nez p1, :cond_4

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 368
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 369
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/apache/commons/lang/text/StrBuilder;)Ljava/lang/String;
    .registers 5
    .param p1, "source"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 382
    if-nez p1, :cond_4

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 386
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 387
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/apache/commons/lang/text/StrBuilder;II)Ljava/lang/String;
    .registers 6
    .param p1, "source"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 404
    if-nez p1, :cond_4

    .line 405
    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 408
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 409
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([C)Ljava/lang/String;
    .registers 5
    .param p1, "source"    # [C

    .line 302
    if-nez p1, :cond_4

    .line 303
    const/4 v0, 0x0

    return-object v0

    .line 305
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append([C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 306
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 307
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([CII)Ljava/lang/String;
    .registers 6
    .param p1, "source"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 324
    if-nez p1, :cond_4

    .line 325
    const/4 v0, 0x0

    return-object v0

    .line 327
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 328
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 329
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .registers 4
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 440
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 441
    return v0

    .line 443
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .registers 7
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 460
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 461
    return v0

    .line 463
    :cond_4
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    .line 464
    .local v1, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_14

    .line 465
    return v0

    .line 467
    :cond_14
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public replaceIn(Lorg/apache/commons/lang/text/StrBuilder;)Z
    .registers 4
    .param p1, "source"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 480
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 481
    return v0

    .line 483
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Lorg/apache/commons/lang/text/StrBuilder;II)Z
    .registers 5
    .param p1, "source"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 499
    if-nez p1, :cond_4

    .line 500
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang/text/StrBuilder;II)Ljava/lang/String;
    .registers 7
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "buf"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I

    .line 651
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->getVariableResolver()Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v0

    .line 652
    .local v0, "resolver":Lorg/apache/commons/lang/text/StrLookup;
    if-nez v0, :cond_8

    .line 653
    const/4 v1, 0x0

    return-object v1

    .line 655
    :cond_8
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setEscapeChar(C)V
    .registers 2
    .param p1, "escapeCharacter"    # C

    .line 677
    iput-char p1, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->escapeChar:C

    .line 678
    return-void
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/lang/text/StrSubstitutor;
    .registers 3
    .param p1, "prefix"    # C

    .line 725
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrSubstitutor;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 739
    if-eqz p1, :cond_b

    .line 742
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    move-result-object v0

    return-object v0

    .line 740
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;
    .registers 4
    .param p1, "prefixMatcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 707
    if-eqz p1, :cond_5

    .line 710
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 711
    return-object p0

    .line 708
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableResolver(Lorg/apache/commons/lang/text/StrLookup;)V
    .registers 2
    .param p1, "variableResolver"    # Lorg/apache/commons/lang/text/StrLookup;

    .line 827
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang/text/StrLookup;

    .line 828
    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/lang/text/StrSubstitutor;
    .registers 3
    .param p1, "suffix"    # C

    .line 790
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrSubstitutor;
    .registers 4
    .param p1, "suffix"    # Ljava/lang/String;

    .line 804
    if-eqz p1, :cond_b

    .line 807
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    move-result-object v0

    return-object v0

    .line 805
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;
    .registers 4
    .param p1, "suffixMatcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 772
    if-eqz p1, :cond_5

    .line 775
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 776
    return-object p0

    .line 773
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z
    .registers 5
    .param p1, "buf"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
