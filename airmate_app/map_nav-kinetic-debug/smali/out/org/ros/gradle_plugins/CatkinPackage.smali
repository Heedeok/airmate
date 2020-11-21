.class public Lorg/ros/gradle_plugins/CatkinPackage;
.super Ljava/lang/Object;
.source "CatkinPlugin.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/gradle_plugins/CatkinPackage$_closure1;
    }
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private directory:Ljava/lang/String;

.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;

.field private name:Ljava/lang/String;

.field private project:Lorg/gradle/api/Project;

.field private version:Ljava/lang/String;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/gradle_plugins/CatkinPackage;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/ros/gradle_plugins/CatkinPackage;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .registers 3

    const-string v0, "parse"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "<$constructor$>"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "parent"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "text"

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "name"

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "text"

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "version"

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "collect"

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "build_depend"

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "each"

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "findAll"

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "getTransitiveDependencies"

    const/16 v1, 0xb

    aput-object v0, p0, v1

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackage;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackage;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_19

    :cond_e
    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/ros/gradle_plugins/CatkinPackage;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_19
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Lorg/gradle/api/Project;Ljava/io/File;)V
    .registers 7
    .param p1, "project"    # Lorg/gradle/api/Project;
    .param p2, "packageXmlFilename"    # Ljava/io/File;

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackage;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/gradle_plugins/CatkinPackage;->metaClass:Lgroovy/lang/MetaClass;

    .line 166
    const-class v1, Lorg/gradle/api/Project;

    invoke-static {p1, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    iput-object v1, p0, Lorg/ros/gradle_plugins/CatkinPackage;->project:Lorg/gradle/api/Project;

    .line 168
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-class v3, Lgroovy/util/XmlParser;

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, "packageXml":Ljava/lang/Object;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-interface {v2, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/ros/gradle_plugins/CatkinPackage;->directory:Ljava/lang/String;

    .line 170
    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/ros/gradle_plugins/CatkinPackage;->name:Ljava/lang/String;

    .line 171
    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x6

    aget-object v3, v0, v3

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/ros/gradle_plugins/CatkinPackage;->version:Ljava/lang/String;

    .line 172
    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/16 v3, 0x8

    aget-object v0, v0, v3

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Lorg/ros/gradle_plugins/CatkinPackage$_closure1;

    invoke-direct {v3, p0, p0}, Lorg/ros/gradle_plugins/CatkinPackage$_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v2, Ljava/util/Set;

    invoke-static {v0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage;->dependencies:Ljava/util/Set;

    .end local v1    # "packageXml":Ljava/lang/Object;
    .end local p0    # "this":Lorg/ros/gradle_plugins/CatkinPackage;
    .end local p1    # "project":Lorg/gradle/api/Project;
    .end local p2    # "packageXmlFilename":Ljava/io/File;
    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ros/gradle_plugins/CatkinPackage;

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lorg/ros/gradle_plugins/CatkinPackage;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/ros/gradle_plugins/CatkinPackage;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1b
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage;->dependencies:Ljava/util/Set;

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage;->directory:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDependencies()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 190
    const/16 v1, 0xa

    aget-object v1, v0, v1

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/ros/gradle_plugins/CatkinPackage;->dependencies:Ljava/util/Set;

    invoke-interface {v0, p0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lorg/ros/gradle_plugins/CatkinPackage$_getMessageDependencies_closure3;

    invoke-direct {v2, p0, p0}, Lorg/ros/gradle_plugins/CatkinPackage$_getMessageDependencies_closure3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/util/Set;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->asType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackage;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage;->metaClass:Lgroovy/lang/MetaClass;

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Lorg/gradle/api/Project;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage;->project:Lorg/gradle/api/Project;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackage;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTransitiveDependencies(Ljava/util/Collection;)Ljava/util/Set;
    .registers 5
    .param p1, "dependencies"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 178
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Ljava/util/Set;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    new-instance v2, Lgroovy/lang/Reference;

    invoke-direct {v2, v1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 179
    .local v1, "result":Lgroovy/lang/Reference;
    const/16 v2, 0x9

    aget-object v0, v0, v2

    new-instance v2, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;

    invoke-direct {v2, p0, p0, v1}, Lorg/ros/gradle_plugins/CatkinPackage$_getTransitiveDependencies_closure2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v0, p1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/CatkinPackage;->version:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackage;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setDependencies(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackage;->dependencies:Ljava/util/Set;

    return-void
.end method

.method public setDirectory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackage;->directory:Ljava/lang/String;

    return-void
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackage;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackage;->name:Ljava/lang/String;

    return-void
.end method

.method public setProject(Lorg/gradle/api/Project;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackage;->project:Lorg/gradle/api/Project;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/CatkinPackage;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/CatkinPackage;->version:Ljava/lang/String;

    return-void
.end method

.method public synthetic super$1$toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    invoke-static {}, Lorg/ros/gradle_plugins/CatkinPackage;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 175
    new-instance v0, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/ros/gradle_plugins/CatkinPackage;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/ros/gradle_plugins/CatkinPackage;->version:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/ros/gradle_plugins/CatkinPackage;->dependencies:Ljava/util/Set;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v3, v4

    const-string v4, " "

    aput-object v4, v3, v5

    const-string v4, " "

    aput-object v4, v3, v6

    const-string v4, ""

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
