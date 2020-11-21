.class public Lorg/yaml/snakeyaml/JavaBeanLoader;
.super Ljava/lang/Object;
.source "JavaBeanLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private loader:Lorg/yaml/snakeyaml/Yaml;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/yaml/snakeyaml/JavaBeanLoader;, "Lorg/yaml/snakeyaml/JavaBeanLoader<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/JavaBeanLoader;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .registers 4
    .param p2, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/yaml/snakeyaml/JavaBeanLoader;, "Lorg/yaml/snakeyaml/JavaBeanLoader<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    new-instance v0, Lorg/yaml/snakeyaml/TypeDescription;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/JavaBeanLoader;-><init>(Lorg/yaml/snakeyaml/TypeDescription;Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .registers 10
    .param p1, "options"    # Lorg/yaml/snakeyaml/LoaderOptions;
    .param p2, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 47
    .local p0, "this":Lorg/yaml/snakeyaml/JavaBeanLoader;, "Lorg/yaml/snakeyaml/JavaBeanLoader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_3a

    .line 51
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/LoaderOptions;->getRootTypeDescription()Lorg/yaml/snakeyaml/TypeDescription;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 54
    new-instance v2, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/LoaderOptions;->getRootTypeDescription()Lorg/yaml/snakeyaml/TypeDescription;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Lorg/yaml/snakeyaml/TypeDescription;)V

    .line 55
    .local v2, "constructor":Lorg/yaml/snakeyaml/constructor/Constructor;
    new-instance v0, Lorg/yaml/snakeyaml/Yaml;

    new-instance v4, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v4}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    new-instance v5, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v5}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    new-instance v6, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v6}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanLoader;->loader:Lorg/yaml/snakeyaml/Yaml;

    .line 57
    iget-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanLoader;->loader:Lorg/yaml/snakeyaml/Yaml;

    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/Yaml;->setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 58
    return-void

    .line 52
    .end local v2    # "constructor":Lorg/yaml/snakeyaml/constructor/Constructor;
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TypeDescription must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "LoaderOptions must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/TypeDescription;)V
    .registers 3
    .param p1, "typeDescription"    # Lorg/yaml/snakeyaml/TypeDescription;

    .line 40
    .local p0, "this":Lorg/yaml/snakeyaml/JavaBeanLoader;, "Lorg/yaml/snakeyaml/JavaBeanLoader<TT;>;"
    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/JavaBeanLoader;-><init>(Lorg/yaml/snakeyaml/TypeDescription;Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/TypeDescription;Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .registers 4
    .param p1, "typeDescription"    # Lorg/yaml/snakeyaml/TypeDescription;
    .param p2, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 44
    .local p0, "this":Lorg/yaml/snakeyaml/JavaBeanLoader;, "Lorg/yaml/snakeyaml/JavaBeanLoader<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>(Lorg/yaml/snakeyaml/TypeDescription;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/JavaBeanLoader;-><init>(Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 45
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .param p1, "io"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/yaml/snakeyaml/JavaBeanLoader;, "Lorg/yaml/snakeyaml/JavaBeanLoader<TT;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanLoader;->loader:Lorg/yaml/snakeyaml/Yaml;

    new-instance v1, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 3
    .param p1, "io"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/yaml/snakeyaml/JavaBeanLoader;, "Lorg/yaml/snakeyaml/JavaBeanLoader<TT;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanLoader;->loader:Lorg/yaml/snakeyaml/Yaml;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "yaml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/yaml/snakeyaml/JavaBeanLoader;, "Lorg/yaml/snakeyaml/JavaBeanLoader<TT;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanLoader;->loader:Lorg/yaml/snakeyaml/Yaml;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
