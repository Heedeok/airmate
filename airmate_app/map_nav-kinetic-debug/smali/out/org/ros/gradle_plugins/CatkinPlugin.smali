.class public Lorg/ros/gradle_plugins/CatkinPlugin;
.super Ljava/lang/Object;
.source "CatkinPlugin.groovy"

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

.field private project:Lorg/gradle/api/Project;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/gradle_plugins/CatkinPlugin;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/ros/gradle_plugins/CatkinPlugin;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .registers 3

    const-string v0, "create"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "extensions"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "catkin"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "split"

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "ROS_PACKAGE_PATH"

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "env"

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "catkin"

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "<$constructor$>"

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "workspaces"

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "catkin"

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "catkin"

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "file"

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "exists"

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "getParent"

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "getParentFile"

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "file"

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "file"

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "<$constructor$>"

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "catkin"

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "generate"

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "tree"

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "catkin"

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "setTasks"

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "doLast"

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "task"

    const/16 v1, 0x18

    aput-object v0, p0, v1

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_19

    :cond_e
    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPlugin;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/ros/gradle_plugins/CatkinPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_19
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/CatkinPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ros/gradle_plugins/CatkinPlugin;

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lorg/ros/gradle_plugins/CatkinPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/ros/gradle_plugins/CatkinPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1b
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/gradle/api/Project;

    invoke-virtual {p0, p1}, Lorg/ros/gradle_plugins/CatkinPlugin;->apply(Lorg/gradle/api/Project;)V

    return-void
.end method

.method public apply(Lorg/gradle/api/Project;)V
    .registers 13
    .param p1, "project"    # Lorg/gradle/api/Project;

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 45
    const-class v1, Lorg/gradle/api/Project;

    invoke-static {p1, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    iput-object v1, p0, Lorg/ros/gradle_plugins/CatkinPlugin;->project:Lorg/gradle/api/Project;

    .line 47
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-interface {v4, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "catkin"

    const-class v6, Lorg/ros/gradle_plugins/CatkinPluginExtension;

    invoke-interface {v2, v4, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    aget-object v5, v0, v4

    invoke-interface {v5, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "workspaces"

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v7, v5, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x3

    aget-object v2, v0, v2

    new-instance v5, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v8, 0x4

    aget-object v8, v0, v8

    const/4 v9, 0x5

    aget-object v9, v0, v9

    const-class v10, Ljava/lang/System;

    invoke-interface {v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v1

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v4, v1

    const-string v1, ""

    aput-object v1, v4, v3

    invoke-direct {v5, v6, v4}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v1, ":"

    invoke-interface {v2, v5, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-interface {v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "workspaces"

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v7, v2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x7

    aget-object v1, v0, v1

    const-class v2, Lorg/ros/gradle_plugins/CatkinPackages;

    const/16 v4, 0x8

    aget-object v4, v0, v4

    const/16 v5, 0x9

    aget-object v5, v0, v5

    invoke-interface {v5, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, p1, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    aget-object v2, v0, v2

    invoke-interface {v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "tree"

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v7, v2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const/16 v1, 0xb

    aget-object v1, v0, v1

    const-string v2, "package.xml"

    invoke-interface {v1, p1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "packageXml":Ljava/lang/Object;
    const/16 v2, 0xc

    aget-object v2, v0, v2

    invoke-interface {v2, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_d1

    .line 53
    const/16 v2, 0xd

    aget-object v2, v0, v2

    const/16 v3, 0xe

    aget-object v3, v0, v3

    const/16 v4, 0xf

    aget-object v4, v0, v4

    invoke-interface {v4, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    .local v2, "parentDirectoryName":Ljava/lang/Object;
    const/16 v3, 0x10

    aget-object v3, v0, v3

    const-string v4, "package.xml"

    invoke-interface {v3, p1, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .end local v2    # "parentDirectoryName":Ljava/lang/Object;
    :cond_d1
    invoke-static {v1, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 57
    const/16 v2, 0x11

    aget-object v2, v0, v2

    const-class v3, Lorg/ros/gradle_plugins/CatkinPackage;

    invoke-interface {v2, v3, p1, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x12

    aget-object v3, v0, v3

    invoke-interface {v3, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "pkg"

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v7, v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :cond_f0
    const/16 v2, 0x13

    aget-object v2, v0, v2

    const/16 v3, 0x14

    aget-object v3, v0, v3

    const/16 v4, 0x15

    aget-object v4, v0, v4

    invoke-interface {v4, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-boolean v2, Lorg/ros/gradle_plugins/CatkinPlugin;->__$stMC:Z

    if-nez v2, :cond_115

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v2

    if-nez v2, :cond_115

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPlugin;->setTasks()V

    goto :goto_11c

    .end local p0    # "this":Lorg/ros/gradle_plugins/CatkinPlugin;
    :cond_115
    const/16 v2, 0x16

    aget-object v0, v0, v2

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    .end local v1    # "packageXml":Ljava/lang/Object;
    .end local p1    # "project":Lorg/gradle/api/Project;
    :goto_11c
    return-void
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPlugin;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/CatkinPlugin;->metaClass:Lgroovy/lang/MetaClass;

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public getProject()Lorg/gradle/api/Project;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPlugin;->project:Lorg/gradle/api/Project;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public setProject(Lorg/gradle/api/Project;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPlugin;->project:Lorg/gradle/api/Project;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTasks()V
    .registers 5

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 64
    const/16 v1, 0x17

    aget-object v1, v0, v1

    const/16 v2, 0x18

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/ros/gradle_plugins/CatkinPlugin;->project:Lorg/gradle/api/Project;

    const-string v3, "catkinPackageInfo"

    invoke-interface {v0, v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lorg/ros/gradle_plugins/CatkinPlugin$_setTasks_closure1;

    invoke-direct {v2, p0, p0}, Lorg/ros/gradle_plugins/CatkinPlugin$_setTasks_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local p0    # "this":Lorg/ros/gradle_plugins/CatkinPlugin;
    return-void
.end method
