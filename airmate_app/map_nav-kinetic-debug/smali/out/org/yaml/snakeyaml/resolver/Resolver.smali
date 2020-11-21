.class public Lorg/yaml/snakeyaml/resolver/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"


# static fields
.field public static final BOOL:Ljava/util/regex/Pattern;

.field public static final EMPTY:Ljava/util/regex/Pattern;

.field public static final FLOAT:Ljava/util/regex/Pattern;

.field public static final INT:Ljava/util/regex/Pattern;

.field public static final MERGE:Ljava/util/regex/Pattern;

.field public static final NULL:Ljava/util/regex/Pattern;

.field public static final TIMESTAMP:Ljava/util/regex/Pattern;

.field public static final VALUE:Ljava/util/regex/Pattern;

.field public static final YAML:Ljava/util/regex/Pattern;


# instance fields
.field protected yamlImplicitResolvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/resolver/ResolverTuple;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "^(?:yes|Yes|YES|no|No|NO|true|True|TRUE|false|False|FALSE|on|On|ON|off|Off|OFF)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->BOOL:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "^([-+]?(\\.[0-9]+|[0-9_]+(\\.[0-9_]*)?)([eE][-+]?[0-9]+)?|[-+]?[0-9][0-9_]*(?::[0-5]?[0-9])+\\.[0-9_]*|[-+]?\\.(?:inf|Inf|INF)|\\.(?:nan|NaN|NAN))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->FLOAT:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "^(?:[-+]?0b[0-1_]+|[-+]?0[0-7_]+|[-+]?(?:0|[1-9][0-9_]*)|[-+]?0x[0-9a-fA-F_]+|[-+]?[1-9][0-9_]*(?::[0-5]?[0-9])+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->INT:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "^(?:<<)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->MERGE:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "^(?:~|null|Null|NULL| )$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->NULL:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "^$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->EMPTY:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "^(?:[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]|[0-9][0-9][0-9][0-9]-[0-9][0-9]?-[0-9][0-9]?(?:[Tt]|[ \t]+)[0-9][0-9]?:[0-9][0-9]:[0-9][0-9](?:\\.[0-9]*)?(?:[ \t]*(?:Z|[-+][0-9][0-9]?(?::[0-9][0-9])?))?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->TIMESTAMP:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "^(?:=)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->VALUE:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "^(?:!|&|\\*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->YAML:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>(Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "respectDefaultImplicitScalars"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    .line 61
    if-eqz p1, :cond_f

    .line 62
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolvers()V

    .line 64
    :cond_f
    return-void
.end method


# virtual methods
.method public addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 10
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "regexp"    # Ljava/util/regex/Pattern;
    .param p3, "first"    # Ljava/lang/String;

    .line 92
    if-nez p3, :cond_21

    .line 93
    iget-object v0, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    .local v0, "curr":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    if-nez v0, :cond_18

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 96
    iget-object v2, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_18
    new-instance v1, Lorg/yaml/snakeyaml/resolver/ResolverTuple;

    invoke-direct {v1, p1, p2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v0    # "curr":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    goto :goto_56

    .line 100
    :cond_21
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 101
    .local v0, "chrs":[C
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "j":I
    :goto_27
    if-ge v1, v2, :cond_56

    .line 102
    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 103
    .local v3, "theC":Ljava/lang/Character;
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v4

    if-nez v4, :cond_36

    .line 105
    const/4 v3, 0x0

    .line 107
    :cond_36
    iget-object v4, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 108
    .local v4, "curr":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    if-nez v4, :cond_4b

    .line 109
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 110
    iget-object v5, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_4b
    new-instance v5, Lorg/yaml/snakeyaml/resolver/ResolverTuple;

    invoke-direct {v5, p1, p2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "theC":Ljava/lang/Character;
    .end local v4    # "curr":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 115
    .end local v0    # "chrs":[C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_56
    :goto_56
    return-void
.end method

.method protected addImplicitResolvers()V
    .registers 4

    .line 67
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->BOOL:Ljava/util/regex/Pattern;

    const-string v2, "yYnNtTfFoO"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->INT:Ljava/util/regex/Pattern;

    const-string v2, "-+0123456789"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->FLOAT:Ljava/util/regex/Pattern;

    const-string v2, "-+0123456789."

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->MERGE:Ljava/util/regex/Pattern;

    const-string v2, "<"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->NULL:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->NULL:Ljava/util/regex/Pattern;

    const-string v2, "~nN\u0000"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->NULL:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->EMPTY:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->TIMESTAMP:Ljava/util/regex/Pattern;

    const-string v2, "0123456789"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->VALUE:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->VALUE:Ljava/util/regex/Pattern;

    const-string v2, "="

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->YAML:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->YAML:Ljava/util/regex/Pattern;

    const-string v2, "!&*"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;
    .registers 10
    .param p1, "kind"    # Lorg/yaml/snakeyaml/nodes/NodeId;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "implicit"    # Z

    .line 118
    sget-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne p1, v0, :cond_88

    if-eqz p3, :cond_88

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "resolvers":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 121
    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    goto :goto_2d

    .line 123
    :cond_1c
    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 125
    :goto_2d
    if-eqz v0, :cond_53

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/resolver/ResolverTuple;

    .line 127
    .local v2, "v":Lorg/yaml/snakeyaml/resolver/ResolverTuple;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 128
    .local v3, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->getRegexp()Ljava/util/regex/Pattern;

    move-result-object v4

    .line 129
    .local v4, "regexp":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 130
    return-object v3

    .line 132
    .end local v2    # "v":Lorg/yaml/snakeyaml/resolver/ResolverTuple;
    .end local v3    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v4    # "regexp":Ljava/util/regex/Pattern;
    :cond_52
    goto :goto_33

    .line 134
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_53
    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 135
    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/resolver/ResolverTuple;

    .line 136
    .restart local v2    # "v":Lorg/yaml/snakeyaml/resolver/ResolverTuple;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 137
    .restart local v3    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->getRegexp()Ljava/util/regex/Pattern;

    move-result-object v4

    .line 138
    .restart local v4    # "regexp":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 139
    return-object v3

    .line 141
    .end local v2    # "v":Lorg/yaml/snakeyaml/resolver/ResolverTuple;
    .end local v3    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v4    # "regexp":Ljava/util/regex/Pattern;
    :cond_87
    goto :goto_68

    .line 144
    .end local v0    # "resolvers":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_88
    sget-object v0, Lorg/yaml/snakeyaml/resolver/Resolver$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9c

    .line 150
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    .line 148
    :pswitch_96
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    .line 146
    :pswitch_99
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_99
        :pswitch_96
    .end packed-switch
.end method
