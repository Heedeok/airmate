.class public Lorg/ros/gradle_plugins/CatkinPackages;
.super Ljava/lang/Object;
.source "CatkinPlugin.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;

.field private pkgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ros/gradle_plugins/CatkinPackage;",
            ">;"
        }
    .end annotation
.end field

.field private project:Lorg/gradle/api/Project;

.field private workspaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/gradle_plugins/CatkinPackages;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/ros/gradle_plugins/CatkinPackages;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .registers 3

    const-string v0, "size"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "each"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "getAt"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "each"

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "dependencies"

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "getAt"

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "version"

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "add"

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "dependencies"

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "getMessageDependencies"

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "each"

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "buildDir"

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "create"

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "tasks"

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "plus"

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "name"

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "dir"

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "outputs"

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "file"

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "<$constructor$>"

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "plus"

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "directory"

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "name"

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "runtime"

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "configurations"

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "source"

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "compileJava"

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "tasks"

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "files"

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "outputs"

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackages;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackages;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_19

    :cond_e
    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackages;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/ros/gradle_plugins/CatkinPackages;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_19
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Lorg/gradle/api/Project;Ljava/util/List;)V
    .registers 4
    .param p1, "project"    # Lorg/gradle/api/Project;
    .param p2, "workspaces"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/gradle/api/Project;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackages;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackages;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->metaClass:Lgroovy/lang/MetaClass;

    .line 87
    const-class v0, Lorg/gradle/api/Project;

    invoke-static {p1, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gradle/api/Project;

    iput-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->project:Lorg/gradle/api/Project;

    .line 88
    const-class v0, Ljava/util/List;

    invoke-static {p2, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->workspaces:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->pkgs:Ljava/util/Map;

    .end local p0    # "this":Lorg/ros/gradle_plugins/CatkinPackages;
    .end local p1    # "project":Lorg/gradle/api/Project;
    .end local p2    # "workspaces":Ljava/util/List;
    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ros/gradle_plugins/CatkinPackages;

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackages;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/ros/gradle_plugins/CatkinPackages;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1b
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public generate()V
    .registers 5

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackages;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ros/gradle_plugins/CatkinPackages;->pkgs:Ljava/util/Map;

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 94
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/ros/gradle_plugins/CatkinPackages;->workspaces:Ljava/util/List;

    new-instance v2, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1;

    invoke-direct {v2, p0, p0}, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local p0    # "this":Lorg/ros/gradle_plugins/CatkinPackages;
    :cond_24
    return-void
.end method

.method public generateMessageArtifact(Lorg/gradle/api/Project;Ljava/lang/String;)V
    .registers 20
    .param p1, "project"    # Lorg/gradle/api/Project;
    .param p2, "package_name"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .end local p1    # "project":Lorg/gradle/api/Project;
    .local v1, "project":Lgroovy/lang/Reference;
    new-instance v2, Lgroovy/lang/Reference;

    move-object/from16 v3, p1

    .restart local p1    # "project":Lorg/gradle/api/Project;
    invoke-direct {v2, v3}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    .end local p1    # "project":Lorg/gradle/api/Project;
    move-object v1, v2

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackages;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v2

    .line 132
    const/4 v3, 0x5

    aget-object v3, v2, v3

    iget-object v4, v0, Lorg/ros/gradle_plugins/CatkinPackages;->pkgs:Ljava/util/Map;

    move-object/from16 v5, p2

    invoke-interface {v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 133
    .local v3, "pkg":Ljava/lang/Object;
    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-interface {v4, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gradle/api/Project;

    const-string v7, "version"

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4, v8, v6, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    const/4 v4, 0x7

    aget-object v4, v2, v4

    const/16 v6, 0x8

    aget-object v6, v2, v6

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gradle/api/Project;

    invoke-interface {v6, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "compile"

    const-string v9, "org.ros.rosjava_bootstrap:message_generation:[0.3,0.4)"

    invoke-interface {v4, v6, v7, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/16 v4, 0x9

    aget-object v4, v2, v4

    invoke-interface {v4, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-class v6, Ljava/util/Set;

    invoke-static {v4, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 137
    .local v4, "messageDependencies":Ljava/util/Set;
    const/16 v6, 0xa

    aget-object v6, v2, v6

    new-instance v7, Lorg/ros/gradle_plugins/CatkinPackages$_generateMessageArtifact_closure3;

    invoke-direct {v7, v0, v0, v1}, Lorg/ros/gradle_plugins/CatkinPackages$_generateMessageArtifact_closure3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v6, v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v6, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    const/16 v10, 0xb

    aget-object v10, v2, v10

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/gradle/api/Project;

    invoke-interface {v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/String;

    const-string v13, ""

    aput-object v13, v12, v11

    const-string v13, "/generated-src"

    aput-object v13, v12, v7

    invoke-direct {v6, v9, v12}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    .line 147
    .local v6, "generatedSourcesDir":Ljava/lang/Object;
    const/16 v9, 0xc

    aget-object v9, v2, v9

    const/16 v12, 0xd

    aget-object v12, v2, v12

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/gradle/api/Project;

    invoke-interface {v12, v13}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "generateSources"

    const-class v14, Lorg/gradle/api/tasks/JavaExec;

    invoke-interface {v9, v12, v13, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 148
    .local v9, "generateSourcesTask":Ljava/lang/Object;
    const/16 v12, 0xe

    aget-object v12, v2, v12

    const-string v13, "Generate sources for "

    const/16 v14, 0xf

    aget-object v14, v2, v14

    invoke-interface {v14, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "description"

    check-cast v13, Ljava/lang/String;

    invoke-static {v12, v8, v9, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    const/16 v12, 0x10

    aget-object v12, v2, v12

    const/16 v13, 0x11

    aget-object v13, v2, v13

    invoke-interface {v13, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0x12

    aget-object v14, v2, v14

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/gradle/api/Project;

    invoke-interface {v14, v15, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v12, 0x13

    aget-object v12, v2, v12

    const-class v13, Ljava/util/ArrayList;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v6, v14, v11

    const/16 v11, 0x14

    aget-object v11, v2, v11

    const-string v15, "--package-path="

    const/16 v16, 0x15

    aget-object v8, v2, v16

    invoke-interface {v8, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v11, v15, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v14, v7

    const/16 v7, 0x16

    aget-object v7, v2, v7

    invoke-interface {v7, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v14, v10

    invoke-static {v14}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v12, v13, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "args"

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v10, v9, v8}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const/16 v7, 0x17

    aget-object v7, v2, v7

    const/16 v8, 0x18

    aget-object v8, v2, v8

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/gradle/api/Project;

    invoke-interface {v8, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "classpath"

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v10, v9, v8}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    const-string v7, "org.ros.internal.message.GenerateInterfaces"

    const-string v8, "main"

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v10, v9, v8}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    const/16 v7, 0x19

    aget-object v7, v2, v7

    const/16 v8, 0x1a

    aget-object v8, v2, v8

    const/16 v10, 0x1b

    aget-object v10, v2, v10

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/gradle/api/Project;

    invoke-interface {v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/16 v10, 0x1c

    aget-object v10, v2, v10

    const/16 v11, 0x1d

    aget-object v2, v2, v11

    invoke-interface {v2, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "project":Lgroovy/lang/Reference;
    .end local v3    # "pkg":Ljava/lang/Object;
    .end local v4    # "messageDependencies":Ljava/util/Set;
    .end local v6    # "generatedSourcesDir":Ljava/lang/Object;
    .end local v9    # "generateSourcesTask":Ljava/lang/Object;
    .end local p0    # "this":Lorg/ros/gradle_plugins/CatkinPackages;
    .end local p2    # "package_name":Ljava/lang/String;
    return-void
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackages;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->metaClass:Lgroovy/lang/MetaClass;

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public getPkgs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ros/gradle_plugins/CatkinPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->pkgs:Ljava/util/Map;

    return-object v0
.end method

.method public getProject()Lorg/gradle/api/Project;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->project:Lorg/gradle/api/Project;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackages;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWorkspaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackages;->workspaces:Ljava/util/List;

    return-object v0
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackages;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isMessagePackage(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "package_name"    # Ljava/lang/String;

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackages;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "pkg":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lgroovy/lang/Reference;

    invoke-direct {v4, v3}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    .line 115
    .local v3, "result":Lgroovy/lang/Reference;
    nop

    .line 116
    const/4 v4, 0x2

    :try_start_12
    aget-object v4, v0, v4

    iget-object v5, p0, Lorg/ros/gradle_plugins/CatkinPackages;->pkgs:Ljava/util/Map;

    invoke-interface {v4, v5, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 119
    const/4 v4, 0x3

    aget-object v4, v0, v4

    const/4 v5, 0x4

    aget-object v0, v0, v5

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v5, Lorg/ros/gradle_plugins/CatkinPackages$_isMessagePackage_closure2;

    invoke-direct {v5, p0, p0, v3}, Lorg/ros/gradle_plugins/CatkinPackages$_isMessagePackage_closure2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v4, v0, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_2d} :catch_30
    .catchall {:try_start_12 .. :try_end_2d} :catchall_2e

    goto :goto_3b

    .line 126
    :catchall_2e
    move-exception v0

    goto :goto_48

    .line 119
    :catch_30
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v4, v3

    check-cast v4, Lgroovy/lang/Reference;

    invoke-virtual {v4, v2}, Lgroovy/lang/Reference;->set(Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_2e

    .line 128
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3b
    invoke-virtual {v3}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 126
    :goto_48
    throw v0
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackages;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public setPkgs(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ros/gradle_plugins/CatkinPackage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackages;->pkgs:Ljava/util/Map;

    return-void
.end method

.method public setProject(Lorg/gradle/api/Project;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackages;->project:Lorg/gradle/api/Project;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackages;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWorkspaces(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackages;->workspaces:Ljava/util/List;

    return-void
.end method
