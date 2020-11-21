.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructYamlFloat"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 17
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 236
    move-object v0, p0

    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    move-object/from16 v2, p1

    check-cast v2, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    .line 238
    .local v2, "sign":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 239
    .local v3, "first":C
    const/4 v4, 0x1

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_28

    .line 240
    const/4 v2, -0x1

    .line 241
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 242
    :cond_28
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_30

    .line 243
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    :cond_30
    :goto_30
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "valLower":Ljava/lang/String;
    const-string v6, ".inf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_4a

    .line 247
    new-instance v4, Ljava/lang/Double;

    if-ne v2, v7, :cond_44

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_46

    :cond_44
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_46
    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 248
    :cond_4a
    const-string v6, ".nan"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 249
    new-instance v4, Ljava/lang/Double;

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 250
    :cond_5a
    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_94

    .line 251
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "digits":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 253
    .local v7, "bes":I
    const-wide/16 v8, 0x0

    .line 254
    .local v8, "val":D
    const/4 v10, 0x0

    .local v10, "i":I
    array-length v11, v6

    .local v11, "j":I
    :goto_6d
    if-ge v10, v11, :cond_87

    .line 255
    sub-int v12, v11, v10

    sub-int/2addr v12, v4

    aget-object v12, v6, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-object v14, v5

    .end local v5    # "valLower":Ljava/lang/String;
    .local v14, "valLower":Ljava/lang/String;
    int-to-double v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v4

    add-double/2addr v8, v12

    .line 256
    mul-int/lit8 v7, v7, 0x3c

    .line 254
    add-int/lit8 v10, v10, 0x1

    move-object v5, v14

    const/4 v4, 0x1

    goto :goto_6d

    .line 258
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v14    # "valLower":Ljava/lang/String;
    .restart local v5    # "valLower":Ljava/lang/String;
    :cond_87
    move-object v14, v5

    .end local v5    # "valLower":Ljava/lang/String;
    .restart local v14    # "valLower":Ljava/lang/String;
    new-instance v4, Ljava/lang/Double;

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    invoke-direct {v4, v10, v11}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 260
    .end local v6    # "digits":[Ljava/lang/String;
    .end local v7    # "bes":I
    .end local v8    # "val":D
    .end local v14    # "valLower":Ljava/lang/String;
    .restart local v5    # "valLower":Ljava/lang/String;
    :cond_94
    move-object v14, v5

    .end local v5    # "valLower":Ljava/lang/String;
    .restart local v14    # "valLower":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 261
    .local v4, "d":Ljava/lang/Double;
    new-instance v5, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    return-object v5
.end method
