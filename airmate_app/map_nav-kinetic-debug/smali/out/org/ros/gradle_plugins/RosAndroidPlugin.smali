.class public Lorg/ros/gradle_plugins/RosAndroidPlugin;
.super Ljava/lang/Object;
.source "RosAndroid.groovy"

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

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/ros/gradle_plugins/RosAndroidPlugin;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .registers 3

    const-string v0, "apply"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "create"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "extensions"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "rosandroid"

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "uploadArchives"

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "maybeCreate"

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "configurations"

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "exclude"

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "compile"

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "configurations"

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "exclude"

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "compile"

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "configurations"

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "afterEvaluate"

    const/16 v1, 0xd

    aput-object v0, p0, v1

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    sget-object v0, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_19

    :cond_e
    invoke-static {}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_19
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/RosAndroidPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ros/gradle_plugins/RosAndroidPlugin;

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1b
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/gradle/api/Project;

    invoke-virtual {p0, p1}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->apply(Lorg/gradle/api/Project;)V

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
    invoke-static {}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 12
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gradle/api/Project;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "plugin"

    aput-object v6, v5, v1

    const-string v6, "ros"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    aget-object v2, v0, v7

    aget-object v3, v0, v4

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    invoke-interface {v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "rosandroid"

    const-class v6, Lorg/ros/gradle_plugins/RosAndroidPluginExtension;

    invoke-interface {v2, v3, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v2, "28.0.3"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    invoke-interface {v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "buildToolsVersion"

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gradle/api/Project;

    new-instance v5, Lorg/ros/gradle_plugins/RosAndroidPlugin$_apply_closure1;

    invoke-direct {v5, p0, p0, p1}, Lorg/ros/gradle_plugins/RosAndroidPlugin$_apply_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v2, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x6

    aget-object v3, v0, v3

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/gradle/api/Project;

    invoke-interface {v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "compile"

    invoke-interface {v2, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/16 v3, 0x8

    aget-object v3, v0, v3

    const/16 v5, 0x9

    aget-object v5, v0, v5

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gradle/api/Project;

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "group"

    aput-object v6, v5, v1

    const-string v6, "junit"

    aput-object v6, v5, v7

    invoke-static {v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/16 v2, 0xa

    aget-object v2, v0, v2

    const/16 v3, 0xb

    aget-object v3, v0, v3

    const/16 v5, 0xc

    aget-object v5, v0, v5

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gradle/api/Project;

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "group"

    aput-object v5, v4, v1

    const-string v1, "xml-apis"

    aput-object v1, v4, v7

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    new-instance v2, Lorg/ros/gradle_plugins/RosAndroidPlugin$_apply_closure2;

    invoke-direct {v2, p0, p0, p1}, Lorg/ros/gradle_plugins/RosAndroidPlugin$_apply_closure2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local p0    # "this":Lorg/ros/gradle_plugins/RosAndroidPlugin;
    .end local p1    # "project":Lgroovy/lang/Reference;
    return-void
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/RosAndroidPlugin;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/RosAndroidPlugin;->metaClass:Lgroovy/lang/MetaClass;

    iget-object v0, p0, Lorg/ros/gradle_plugins/RosAndroidPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/RosAndroidPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosAndroidPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
