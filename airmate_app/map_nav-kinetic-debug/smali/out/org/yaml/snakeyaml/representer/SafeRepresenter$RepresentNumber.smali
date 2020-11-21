.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;
.super Ljava/lang/Object;
.source "SafeRepresenter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/representer/Represent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RepresentNumber"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 7
    .param p1, "data"    # Ljava/lang/Object;

    .line 153
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_4c

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_4c

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_4c

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_4c

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_15

    goto :goto_4c

    .line 158
    :cond_15
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 159
    .local v0, "number":Ljava/lang/Number;
    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 160
    .local v1, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 161
    const-string v2, ".NaN"

    goto :goto_52

    .line 162
    :cond_29
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 163
    const-string v2, ".inf"

    goto :goto_52

    .line 164
    :cond_38
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 165
    const-string v2, "-.inf"

    goto :goto_52

    .line 167
    :cond_47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    .line 155
    .end local v0    # "number":Ljava/lang/Number;
    .end local v1    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_4c
    :goto_4c
    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 156
    .restart local v1    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "value":Ljava/lang/String;
    :goto_52
    move-object v0, v2

    .line 170
    .end local v2    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    return-object v2
.end method
