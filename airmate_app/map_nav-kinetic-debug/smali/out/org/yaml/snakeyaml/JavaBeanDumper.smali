.class public Lorg/yaml/snakeyaml/JavaBeanDumper;
.super Ljava/lang/Object;
.source "JavaBeanDumper.java"


# instance fields
.field private final beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

.field private flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field private options:Lorg/yaml/snakeyaml/DumperOptions;

.field private representer:Lorg/yaml/snakeyaml/representer/Representer;

.field private useGlobalTag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/JavaBeanDumper;-><init>(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .registers 3
    .param p1, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/JavaBeanDumper;-><init>(ZLorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .registers 5
    .param p1, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p2, "options"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_17

    .line 69
    if-eqz p2, :cond_f

    .line 72
    iput-object p2, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->options:Lorg/yaml/snakeyaml/DumperOptions;

    .line 73
    iput-object p1, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 76
    return-void

    .line 70
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DumperOptions must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Representer must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "useGlobalTag"    # Z

    .line 51
    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/JavaBeanDumper;-><init>(ZLorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 52
    return-void
.end method

.method public constructor <init>(ZLorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .registers 4
    .param p1, "useGlobalTag"    # Z
    .param p2, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->useGlobalTag:Z

    .line 46
    iput-object p2, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 47
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 48
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 117
    .local v0, "buffer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/JavaBeanDumper;->dump(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/io/Writer;

    .line 88
    iget-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->options:Lorg/yaml/snakeyaml/DumperOptions;

    if-nez v0, :cond_18

    .line 89
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    .line 90
    .local v0, "doptions":Lorg/yaml/snakeyaml/DumperOptions;
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->useGlobalTag:Z

    if-nez v1, :cond_12

    .line 91
    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/DumperOptions;->setExplicitRoot(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 93
    :cond_12
    iget-object v1, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/DumperOptions;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    goto :goto_1a

    .line 95
    .end local v0    # "doptions":Lorg/yaml/snakeyaml/DumperOptions;
    :cond_18
    iget-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->options:Lorg/yaml/snakeyaml/DumperOptions;

    .line 98
    .restart local v0    # "doptions":Lorg/yaml/snakeyaml/DumperOptions;
    :goto_1a
    iget-object v1, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    if-nez v1, :cond_2d

    .line 99
    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    .line 100
    .local v1, "repr":Lorg/yaml/snakeyaml/representer/Representer;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    goto :goto_2f

    .line 102
    .end local v1    # "repr":Lorg/yaml/snakeyaml/representer/Representer;
    :cond_2d
    iget-object v1, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    .line 104
    .restart local v1    # "repr":Lorg/yaml/snakeyaml/representer/Representer;
    :goto_2f
    new-instance v2, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v2, v1, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 105
    .local v2, "dumper":Lorg/yaml/snakeyaml/Yaml;
    invoke-virtual {v2, p1, p2}, Lorg/yaml/snakeyaml/Yaml;->dump(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 106
    return-void
.end method

.method public getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .registers 2

    .line 130
    iget-object v0, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public isUseGlobalTag()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->useGlobalTag:Z

    return v0
.end method

.method public setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .registers 2
    .param p1, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 134
    iput-object p1, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 135
    return-void
.end method

.method public setUseGlobalTag(Z)V
    .registers 2
    .param p1, "useGlobalTag"    # Z

    .line 126
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/JavaBeanDumper;->useGlobalTag:Z

    .line 127
    return-void
.end method
