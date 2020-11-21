.class public Lorg/yaml/snakeyaml/Yaml;
.super Ljava/lang/Object;
.source "Yaml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/Yaml$EventIterable;,
        Lorg/yaml/snakeyaml/Yaml$NodeIterable;,
        Lorg/yaml/snakeyaml/Yaml$YamlIterable;,
        Lorg/yaml/snakeyaml/Yaml$SilentEmitter;
    }
.end annotation


# instance fields
.field protected constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

.field protected dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

.field private name:Ljava/lang/String;

.field protected representer:Lorg/yaml/snakeyaml/representer/Representer;

.field protected final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 63
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    new-instance v2, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v2}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    new-instance v3, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v3}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/Dumper;)V
    .registers 5
    .param p1, "dumper"    # Lorg/yaml/snakeyaml/Dumper;

    .line 739
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    iget-object v1, p1, Lorg/yaml/snakeyaml/Dumper;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    iget-object v2, p1, Lorg/yaml/snakeyaml/Dumper;->options:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 740
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/DumperOptions;)V
    .registers 4
    .param p1, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 80
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/Loader;)V
    .registers 4
    .param p1, "loader"    # Lorg/yaml/snakeyaml/Loader;

    .line 713
    new-instance v0, Lorg/yaml/snakeyaml/Dumper;

    new-instance v1, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/Dumper;-><init>(Lorg/yaml/snakeyaml/DumperOptions;)V

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/Loader;Lorg/yaml/snakeyaml/Dumper;)V

    .line 714
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/Loader;Lorg/yaml/snakeyaml/Dumper;)V
    .registers 4
    .param p1, "loader"    # Lorg/yaml/snakeyaml/Loader;
    .param p2, "dumper"    # Lorg/yaml/snakeyaml/Dumper;

    .line 720
    new-instance v0, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/Loader;Lorg/yaml/snakeyaml/Dumper;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 721
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/Loader;Lorg/yaml/snakeyaml/Dumper;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .registers 7
    .param p1, "loader"    # Lorg/yaml/snakeyaml/Loader;
    .param p2, "dumper"    # Lorg/yaml/snakeyaml/Dumper;
    .param p3, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 727
    iget-object v0, p1, Lorg/yaml/snakeyaml/Loader;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    iget-object v1, p2, Lorg/yaml/snakeyaml/Dumper;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    iget-object v2, p2, Lorg/yaml/snakeyaml/Dumper;->options:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {p0, v0, v1, v2, p3}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 728
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/LoaderOptions;)V
    .registers 6
    .param p1, "loaderOptions"    # Lorg/yaml/snakeyaml/LoaderOptions;

    .line 70
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    new-instance v2, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v2}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    new-instance v3, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v3}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;)V
    .registers 3
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    .line 102
    new-instance v0, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .registers 6
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "loaderOptions"    # Lorg/yaml/snakeyaml/LoaderOptions;
    .param p3, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p4, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;
    .param p5, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 196
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;)V
    .registers 4
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;

    .line 115
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .registers 5
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p3, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 143
    new-instance v0, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .registers 7
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p3, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;
    .param p4, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->isExplicitPropertyUtils()Z

    move-result v0

    if-nez v0, :cond_11

    .line 162
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V

    goto :goto_1e

    .line 163
    :cond_11
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/representer/Representer;->isExplicitPropertyUtils()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 164
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V

    .line 166
    :cond_1e
    :goto_1e
    iput-object p1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    .line 167
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 168
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getDefaultScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 169
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->isAllowReadOnlyProperties()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setAllowReadOnlyProperties(Z)V

    .line 171
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setTimeZone(Ljava/util/TimeZone;)V

    .line 172
    iput-object p2, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    .line 173
    iput-object p3, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    .line 174
    iput-object p4, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Yaml:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;)V
    .registers 3
    .param p1, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;

    .line 91
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .registers 5
    .param p1, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p2, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 128
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v1, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 129
    return-void
.end method

.method private dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V
    .registers 8
    .param p2, "output"    # Ljava/io/Writer;
    .param p3, "rootTag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/Writer;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ")V"
        }
    .end annotation

    .line 265
    .local p1, "data":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/yaml/snakeyaml/serializer/Serializer;

    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v1, p2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;-><init>(Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/yaml/snakeyaml/serializer/Serializer;-><init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 268
    .local v0, "serializer":Lorg/yaml/snakeyaml/serializer/Serializer;
    :try_start_10
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->open()V

    .line 269
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 270
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/representer/Representer;->represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    .line 271
    .local v1, "node":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serialize(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 272
    .end local v1    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_13

    .line 273
    :cond_27
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2a} :catch_2c

    .line 276
    nop

    .line 277
    return-void

    .line 274
    :catch_2c
    move-exception v1

    .line 275
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "sreader"    # Lorg/yaml/snakeyaml/reader/StreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/reader/StreamReader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 478
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 479
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 480
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, p2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getSingleData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addImplicitResolver(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "regexp"    # Ljava/util/regex/Pattern;
    .param p3, "first"    # Ljava/lang/String;

    .line 620
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/yaml/snakeyaml/Yaml;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "regexp"    # Ljava/util/regex/Pattern;
    .param p3, "first"    # Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public compose(Ljava/io/Reader;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 5
    .param p1, "yaml"    # Ljava/io/Reader;

    .line 560
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 561
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 562
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->getSingleNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1
.end method

.method public composeAll(Ljava/io/Reader;)Ljava/lang/Iterable;
    .registers 5
    .param p1, "yaml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 575
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 576
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 577
    new-instance v1, Lorg/yaml/snakeyaml/Yaml$2;

    invoke-direct {v1, p0, v0}, Lorg/yaml/snakeyaml/Yaml$2;-><init>(Lorg/yaml/snakeyaml/Yaml;Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 590
    .local v1, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v2, Lorg/yaml/snakeyaml/Yaml$NodeIterable;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/Yaml$NodeIterable;-><init>(Ljava/util/Iterator;)V

    return-object v2
.end method

.method public dump(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/io/Writer;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;)V

    .line 249
    return-void
.end method

.method public dumpAll(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 232
    .local p1, "data":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 233
    .local v0, "buffer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dumpAll(Ljava/util/Iterator;Ljava/io/Writer;)V
    .registers 4
    .param p2, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .line 261
    .local p1, "data":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/DumperOptions;->getExplicitRoot()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 262
    return-void
.end method

.method public dumpAs(Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)Ljava/lang/String;
    .registers 8
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "rootTag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p3, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 320
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/representer/Representer;->getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v0

    .line 321
    .local v0, "oldStyle":Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    if-eqz p3, :cond_d

    .line 322
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v1, p3}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 324
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 327
    .local v2, "buffer":Ljava/io/StringWriter;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 328
    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v3, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 329
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public dumpAsMap(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 352
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {p0, p1, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->dumpAs(Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 652
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .param p1, "io"    # Ljava/io/InputStream;

    .line 411
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    new-instance v1, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 4
    .param p1, "io"    # Ljava/io/Reader;

    .line 423
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "yaml"    # Ljava/lang/String;

    .line 399
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/io/InputStream;)Ljava/lang/Iterable;
    .registers 3
    .param p1, "yaml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 547
    new-instance v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/Yaml;->loadAll(Ljava/io/Reader;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/io/Reader;)Ljava/lang/Iterable;
    .registers 5
    .param p1, "yaml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 493
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 494
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 495
    new-instance v1, Lorg/yaml/snakeyaml/Yaml$1;

    invoke-direct {v1, p0}, Lorg/yaml/snakeyaml/Yaml$1;-><init>(Lorg/yaml/snakeyaml/Yaml;)V

    .line 508
    .local v1, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    new-instance v2, Lorg/yaml/snakeyaml/Yaml$YamlIterable;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/Yaml$YamlIterable;-><init>(Ljava/util/Iterator;)V

    return-object v2
.end method

.method public loadAll(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 3
    .param p1, "yaml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 534
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/Yaml;->loadAll(Ljava/io/Reader;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public loadAs(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 474
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    new-instance v1, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAs(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "io"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 440
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "yaml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 457
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Iterable;
    .registers 5
    .param p1, "yaml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation

    .line 674
    new-instance v0, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v1, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    .line 675
    .local v0, "parser":Lorg/yaml/snakeyaml/parser/Parser;
    new-instance v1, Lorg/yaml/snakeyaml/Yaml$3;

    invoke-direct {v1, p0, v0}, Lorg/yaml/snakeyaml/Yaml$3;-><init>(Lorg/yaml/snakeyaml/Yaml;Lorg/yaml/snakeyaml/parser/Parser;)V

    .line 688
    .local v1, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/events/Event;>;"
    new-instance v2, Lorg/yaml/snakeyaml/Yaml$EventIterable;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/Yaml$EventIterable;-><init>(Ljava/util/Iterator;)V

    return-object v2
.end method

.method public represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 3
    .param p1, "data"    # Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/representer/Representer;->represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/util/List;
    .registers 7
    .param p1, "data"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation

    .line 364
    new-instance v0, Lorg/yaml/snakeyaml/Yaml$SilentEmitter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/Yaml$SilentEmitter;-><init>(Lorg/yaml/snakeyaml/Yaml$1;)V

    .line 366
    .local v0, "emitter":Lorg/yaml/snakeyaml/Yaml$SilentEmitter;
    new-instance v1, Lorg/yaml/snakeyaml/serializer/Serializer;

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    iget-object v4, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/DumperOptions;->getExplicitRoot()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/yaml/snakeyaml/serializer/Serializer;-><init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 369
    .local v1, "serializer":Lorg/yaml/snakeyaml/serializer/Serializer;
    :try_start_15
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->open()V

    .line 370
    invoke-virtual {v1, p1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serialize(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 371
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1e} :catch_24

    .line 374
    nop

    .line 375
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/Yaml$SilentEmitter;->getEvents()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 372
    :catch_24
    move-exception v2

    .line 373
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v3, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .registers 3
    .param p1, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 704
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 705
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 706
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 662
    iput-object p1, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    .line 663
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 641
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    return-object v0
.end method
