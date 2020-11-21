.class public Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;
.super Lgroovy/lang/Closure;
.source "CatkinPlugin.groovy"

# interfaces
.implements Lorg/codehaus/groovy/runtime/GeneratedClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1;->doCall(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_closure4"
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .registers 3

    const-string v0, "<$constructor$>"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "project"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "containsKey"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "pkgs"

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "name"

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "version"

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "getAt"

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "pkgs"

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "name"

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "version"

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "println"

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "plus"

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "plus"

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "plus"

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "plus"

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "plus"

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "plus"

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "name"

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "version"

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "getAt"

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "pkgs"

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "name"

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "version"

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "putAt"

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "pkgs"

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "name"

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "put"

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "pkgs"

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "name"

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_19

    :cond_e
    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_19
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0, p1, p2}, Lgroovy/lang/Closure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1b
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public doCall(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "file"    # Ljava/lang/Object;

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackages$_generate_closure1$_closure4;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-class v2, Lorg/ros/gradle_plugins/CatkinPackage;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "pkg":Ljava/lang/Object;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0}, Lgroovy/lang/Closure;->getThisObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-interface {v4, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 100
    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x6

    aget-object v3, v0, v3

    const/4 v4, 0x7

    aget-object v4, v0, v4

    invoke-virtual {p0}, Lgroovy/lang/Closure;->getThisObject()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x8

    aget-object v5, v0, v5

    invoke-interface {v5, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x9

    aget-object v3, v0, v3

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareLessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 101
    const/16 v2, 0xa

    aget-object v2, v0, v2

    const/16 v3, 0xb

    aget-object v3, v0, v3

    const/16 v4, 0xc

    aget-object v4, v0, v4

    const/16 v5, 0xd

    aget-object v5, v0, v5

    const/16 v6, 0xe

    aget-object v6, v0, v6

    const/16 v7, 0xf

    aget-object v7, v0, v7

    const/16 v8, 0x10

    aget-object v8, v0, v8

    const-string v9, "Catkin generate tree: replacing older version of "

    const/16 v10, 0x11

    aget-object v10, v0, v10

    invoke-interface {v10, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "["

    invoke-interface {v7, v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x12

    aget-object v8, v0, v8

    const/16 v9, 0x13

    aget-object v9, v0, v9

    const/16 v10, 0x14

    aget-object v10, v0, v10

    invoke-virtual {p0}, Lgroovy/lang/Closure;->getThisObject()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x15

    aget-object v11, v0, v11

    invoke-interface {v11, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "->"

    invoke-interface {v5, v6, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x16

    aget-object v6, v0, v6

    invoke-interface {v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "]"

    invoke-interface {v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/16 v2, 0x17

    aget-object v2, v0, v2

    const/16 v3, 0x18

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x19

    aget-object v0, v0, v4

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_ed
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_ef
    const/16 v2, 0x1a

    aget-object v2, v0, v2

    const/16 v3, 0x1b

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1c

    aget-object v0, v0, v4

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
