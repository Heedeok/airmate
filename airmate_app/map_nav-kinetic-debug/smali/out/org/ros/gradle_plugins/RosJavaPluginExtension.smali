.class public Lorg/ros/gradle_plugins/RosJavaPluginExtension;
.super Ljava/lang/Object;
.source "RosJavaPlugin.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private maven:Ljava/lang/String;

.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/ros/gradle_plugins/RosJavaPluginExtension;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    sget-object v0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_19

    :cond_e
    invoke-static {}, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_19
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ros/gradle_plugins/RosJavaPluginExtension;

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1b
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public getMaven()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->maven:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .registers 2

    iget-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->metaClass:Lgroovy/lang/MetaClass;

    iget-object v0, p0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setMaven(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->maven:Ljava/lang/String;

    return-void
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .registers 2

    iput-object p1, p0, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lorg/ros/gradle_plugins/RosJavaPluginExtension;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
