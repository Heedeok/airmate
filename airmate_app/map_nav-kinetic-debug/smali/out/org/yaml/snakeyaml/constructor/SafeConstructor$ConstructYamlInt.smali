.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructYamlInt"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 19
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

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

    .line 181
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    .line 182
    .local v2, "sign":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 183
    .local v4, "first":C
    const/4 v5, 0x1

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_29

    .line 184
    const/4 v2, -0x1

    .line 185
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 186
    :cond_29
    const/16 v6, 0x2b

    if-ne v4, v6, :cond_31

    .line 187
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_31
    :goto_31
    const/16 v6, 0xa

    .line 190
    .local v6, "base":I
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 192
    :cond_40
    const-string v3, "0b"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x2

    if-eqz v3, :cond_4f

    .line 193
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    const/4 v3, 0x2

    goto :goto_6c

    .line 195
    :cond_4f
    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 196
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    const/16 v3, 0x10

    goto :goto_6c

    .line 198
    :cond_5e
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 199
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    const/16 v3, 0x8

    .line 213
    .end local v6    # "base":I
    .local v3, "base":I
    :goto_6c
    iget-object v5, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-static {v5, v2, v1, v3}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$100(Lorg/yaml/snakeyaml/constructor/SafeConstructor;ILjava/lang/String;I)Ljava/lang/Number;

    move-result-object v5

    return-object v5

    .line 201
    .end local v3    # "base":I
    .restart local v6    # "base":I
    :cond_73
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v7, -0x1

    const/16 v8, 0xa

    if-eq v3, v7, :cond_b0

    .line 202
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "digits":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 204
    .local v7, "bes":I
    const/4 v9, 0x0

    .line 205
    .local v9, "val":I
    const/4 v10, 0x0

    .local v10, "i":I
    array-length v11, v3

    .local v11, "j":I
    :goto_88
    if-ge v10, v11, :cond_a3

    .line 206
    int-to-long v12, v9

    sub-int v14, v11, v10

    sub-int/2addr v14, v5

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move/from16 v16, v6

    .end local v6    # "base":I
    .local v16, "base":I
    int-to-long v5, v7

    mul-long v14, v14, v5

    add-long/2addr v12, v14

    long-to-int v9, v12

    .line 207
    mul-int/lit8 v7, v7, 0x3c

    .line 205
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    const/4 v5, 0x1

    goto :goto_88

    .line 209
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v16    # "base":I
    .restart local v6    # "base":I
    :cond_a3
    move/from16 v16, v6

    .end local v6    # "base":I
    .restart local v16    # "base":I
    iget-object v5, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6, v8}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$100(Lorg/yaml/snakeyaml/constructor/SafeConstructor;ILjava/lang/String;I)Ljava/lang/Number;

    move-result-object v5

    return-object v5

    .line 211
    .end local v3    # "digits":[Ljava/lang/String;
    .end local v7    # "bes":I
    .end local v9    # "val":I
    .end local v16    # "base":I
    .restart local v6    # "base":I
    :cond_b0
    move/from16 v16, v6

    .end local v6    # "base":I
    .restart local v16    # "base":I
    iget-object v3, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-static {v3, v2, v1, v8}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$100(Lorg/yaml/snakeyaml/constructor/SafeConstructor;ILjava/lang/String;I)Ljava/lang/Number;

    move-result-object v3

    return-object v3
.end method
