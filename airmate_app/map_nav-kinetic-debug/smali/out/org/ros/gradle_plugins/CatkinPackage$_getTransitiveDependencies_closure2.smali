.class public Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;
.super Lgroovy/lang/Closure;
.source "CatkinPlugin.groovy"

# interfaces
.implements Lorg/codehaus/groovy/runtime/GeneratedClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/gradle_plugins/CatkinPackage;->getTransitiveDependencies(Ljava/util/Collection;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_getTransitiveDependencies_closure2"
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private synthetic result:Lgroovy/lang/Reference;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .registers 3

    const-string v0, "containsKey"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "pkgs"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "tree"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "catkin"

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "project"

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "add"

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "addAll"

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "getTransitiveDependencies"

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "dependencies"

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "getAt"

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "pkgs"

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "tree"

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "catkin"

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "project"

    const/16 v1, 0xd

    aput-object v0, p0, v1

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_19

    :cond_e
    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_19
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V
    .registers 4

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0, p1, p2}, Lgroovy/lang/Closure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->result:Lgroovy/lang/Reference;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1b
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public doCall()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->doCall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doCall(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "it"    # Ljava/lang/Object;

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-interface {v5, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 181
    const/4 v1, 0x5

    aget-object v1, v0, v1

    iget-object v2, p0, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->result:Lgroovy/lang/Reference;

    invoke-virtual {v2}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/4 v1, 0x6

    aget-object v1, v0, v1

    iget-object v2, p0, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->result:Lgroovy/lang/Reference;

    invoke-virtual {v2}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v3, v0, v3

    const/16 v4, 0x8

    aget-object v4, v0, v4

    .line 183
    const/16 v5, 0x9

    aget-object v5, v0, v5

    const/16 v6, 0xa

    aget-object v6, v0, v6

    const/16 v7, 0xb

    aget-object v7, v0, v7

    const/16 v8, 0xc

    aget-object v8, v0, v8

    const/16 v9, 0xd

    aget-object v0, v0, v9

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, p0, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResult()Ljava/util/Set;
    .registers 3

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;->result:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/util/Set;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
