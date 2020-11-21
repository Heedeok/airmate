.class public Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;
.super Lgroovy/lang/Closure;
.source "RosPlugin.groovy"

# interfaces
.implements Lorg/codehaus/groovy/runtime/GeneratedClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/gradle_plugins/RosPlugin;->apply(Lorg/gradle/api/Project;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_apply_closure1"
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private synthetic project:Lgroovy/lang/Reference;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .registers 3

    const-string v0, "mavenPath"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "ros"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "each"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "mavenPath"

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "ros"

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "mavenRepository"

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "ros"

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "maven"

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "maven"

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "mavenLocal"

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "maven"

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "maven"

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "jcenter"

    const/16 v1, 0xc

    aput-object v0, p0, v1

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    sget-object v0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_19

    :cond_e
    invoke-static {}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_19
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V
    .registers 4

    invoke-static {}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0, p1, p2}, Lgroovy/lang/Closure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->project:Lgroovy/lang/Reference;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1b
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public doCall()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->doCall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doCall(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "it"    # Ljava/lang/Object;

    invoke-static {}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 32
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v3, p0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->project:Lgroovy/lang/Reference;

    invoke-virtual {v3}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 33
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v3, 0x3

    aget-object v3, v0, v3

    const/4 v4, 0x4

    aget-object v4, v0, v4

    iget-object v5, p0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->project:Lgroovy/lang/Reference;

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure2;

    invoke-virtual {p0}, Lgroovy/lang/Closure;->getThisObject()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->project:Lgroovy/lang/Reference;

    invoke-direct {v4, p0, v5, v6}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v1, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_44
    const/4 v1, 0x5

    aget-object v1, v0, v1

    const/4 v3, 0x6

    aget-object v3, v0, v3

    iget-object v4, p0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->project:Lgroovy/lang/Reference;

    invoke-virtual {v4}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 40
    const/4 v1, 0x7

    aget-object v1, v0, v1

    new-instance v2, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure3;

    invoke-virtual {p0}, Lgroovy/lang/Closure;->getThisObject()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->project:Lgroovy/lang/Reference;

    invoke-direct {v2, p0, v3, v4}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v1, p0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_6f
    const/16 v1, 0x8

    aget-object v1, v0, v1

    new-instance v2, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure4;

    invoke-virtual {p0}, Lgroovy/lang/Closure;->getThisObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/16 v1, 0x9

    aget-object v1, v0, v1

    invoke-interface {v1, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    .line 52
    const/16 v1, 0xa

    aget-object v1, v0, v1

    new-instance v2, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure5;

    invoke-virtual {p0}, Lgroovy/lang/Closure;->getThisObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/16 v1, 0xb

    aget-object v1, v0, v1

    new-instance v2, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure6;

    invoke-virtual {p0}, Lgroovy/lang/Closure;->getThisObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1$_closure6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProject()Lorg/gradle/api/Project;
    .registers 3

    invoke-static {}, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    iget-object v0, p0, Lorg/ros/gradle_plugins/RosPlugin$_apply_closure1;->project:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lorg/gradle/api/Project;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gradle/api/Project;

    return-object v0
.end method
