.class public Lorg/ros/gradle_plugins/RosJavaPlugin;
.super Ljava/lang/Object;
.source "RosJavaPlugin.groovy"

# interfaces
.implements Lorg/gradle/api/Plugin;
.implements Lgroovy/lang/GroovyObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/gradle/api/Plugin<",
        "Lorg/gradle/api/Project;",
        ">;",
        "Lgroovy/lang/GroovyObject;"
    }
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static final synthetic $const$0:Ljava/math/BigDecimal;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;

.field private project:Lorg/gradle/api/Project;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/gradle_plugins/RosJavaPlugin;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/ros/gradle_plugins/RosJavaPlugin;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .registers 3

    const-string v0, "findPlugin"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "plugins"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "apply"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "findPlugin"

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "plugins"

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "apply"

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "findPlugin"

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "plugins"

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "apply"

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "mavenDeploymentRepository"

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "ros"

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "mavenDeploymentRepository"

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "ros"

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "publishing"

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "mavenDeploymentRepository"

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "ros"

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "mavenDeploymentRepository"

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ros"

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "publishing"

    const/16 v1, 0x12

    aput-object v0, p0, v1

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/ros/gradle_plugins/RosJavaPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    sget-object v0, Lorg/ros/gradle_plugins/RosJavaPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_19

    :cond_e
    invoke-static {}, Lorg/ros/gradle_plugins/RosJavaPlugin;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/ros/gradle_plugins/RosJavaPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_19
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lorg/ros/gradle_plugins/RosJavaPlugin;->__$swapInit()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/ros/gradle_plugins/RosJavaPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public static synthetic __$swapInit()V
    .registers 2

    invoke-static {}, Lorg/ros/gradle_plugins/RosJavaPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lorg/ros/gradle_plugins/RosJavaPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "1.7"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/ros/gradle_plugins/RosJavaPlugin;->$const$0:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ros/gradle_plugins/RosJavaPlugin;

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lorg/ros/gradle_plugins/RosJavaPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/ros/gradle_plugins/RosJavaPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1b
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/gradle/api/Project;

    invoke-virtual {p0, p1}, Lorg/ros/gradle_plugins/RosJavaPlugin;->apply(Lorg/gradle/api/Project;)V

    return-void
.end method

.method public apply(Lorg/gradle/api/Project;)V
    .registers 10
    .param p1, "project"    # Lorg/gradle/api/Project;

    const/4 v0, 0x0

    .end local p1    # "project":Lorg/gradle/api/Project;
    .local v0, "project":Lgroovy/lang/Reference;
    new-instance v1, Lgroovy/lang/Reference;

    invoke-direct {v1, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p1, v1

    .end local v0    # "project":Lgroovy/lang/Reference;
    .local p1, "project":Lgroovy/lang/Reference;
    invoke-static {}, Lorg/ros/gradle_plugins/RosJavaPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    const-class v2, Lorg/gradle/api/Project;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    iput-object v1, p0, Lorg/ros/gradle_plugins/RosJavaPlugin;->project:Lorg/gradle/api/Project;

    .line 17
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "ros"

    invoke-interface {v2, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    const/4 v4, 0x2

    if-eqz v2, :cond_52

    .line 18
    aget-object v2, v0, v4

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "plugin"

    aput-object v7, v6, v1

    const-string v7, "ros"

    aput-object v7, v6, v3

    invoke-static {v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_52
    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gradle/api/Project;

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "java"

    invoke-interface {v2, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_89

    .line 21
    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "plugin"

    aput-object v7, v6, v1

    const-string v7, "java"

    aput-object v7, v6, v3

    invoke-static {v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_89
    const/4 v2, 0x6

    aget-object v2, v0, v2

    const/4 v5, 0x7

    aget-object v5, v0, v5

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gradle/api/Project;

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "maven-publish"

    invoke-interface {v2, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_c1

    .line 24
    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "plugin"

    aput-object v6, v4, v1

    const-string v6, "maven-publish"

    aput-object v6, v4, v3

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_c1
    sget-object v2, Lorg/ros/gradle_plugins/RosJavaPlugin;->$const$0:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/gradle/api/Project;

    const-string v5, "sourceCompatibility"

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v2, Lorg/ros/gradle_plugins/RosJavaPlugin;->$const$0:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/gradle/api/Project;

    const-string v5, "targetCompatibility"

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v6, v4, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigZ()Z

    move-result v2

    if-eqz v2, :cond_143

    sget-boolean v2, Lorg/ros/gradle_plugins/RosJavaPlugin;->__$stMC:Z

    if-nez v2, :cond_143

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v2

    if-nez v2, :cond_143

    const/16 v2, 0xe

    aget-object v2, v0, v2

    const/16 v4, 0xf

    aget-object v4, v0, v4

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null"

    invoke-static {v2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12e

    const/16 v2, 0x10

    aget-object v2, v0, v2

    const/16 v4, 0x11

    aget-object v4, v0, v4

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12e

    const/4 v1, 0x1

    nop

    :cond_12e
    if-eqz v1, :cond_193

    .line 31
    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    new-instance v2, Lorg/ros/gradle_plugins/RosJavaPlugin$_apply_closure1;

    invoke-direct {v2, p0, p0, p1}, Lorg/ros/gradle_plugins/RosJavaPlugin$_apply_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    .end local p0    # "this":Lorg/ros/gradle_plugins/RosJavaPlugin;
    .end local p1    # "project":Lgroovy/lang/Reference;
    :goto_13f
    invoke-interface {v0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_193

    .line 30
    .restart local p1    # "project":Lgroovy/lang/Reference;
    :cond_143
    const/16 v2, 0x9

    aget-object v2, v0, v2

    const/16 v4, 0xa

    aget-object v4, v0, v4

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null"

    invoke-static {v2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_181

    const/16 v2, 0xb

    aget-object v2, v0, v2

    const/16 v4, 0xc

    aget-object v4, v0, v4

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_181

    const/4 v1, 0x1

    nop

    :cond_181
    if-eqz v1, :cond_193

    .line 31
    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    new-instance v2, Lorg/ros/gradle_plugins/RosJavaPlugin$_apply_closure1;

    invoke-direct {v2, p0, p0, p1}, Lorg/ros/gradle_plugins/RosJavaPlugin$_apply_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    goto :goto_13f

    .end local p1    # "project":Lgroovy/lang/Reference;
    :cond_193
    :goto_193
    return-void
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPlugin;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPlugin;->metaClass:Lgroovy/lang/MetaClass;

    iget-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public getProject()Lorg/gradle/api/Project;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPlugin;->project:Lorg/gradle/api/Project;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/RosJavaPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public setProject(Lorg/gradle/api/Project;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/RosJavaPlugin;->project:Lorg/gradle/api/Project;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
