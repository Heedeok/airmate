.class public Lorg/ros/internal/message/action/ActionDefinitionFileProvider;
.super Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;
.source "ActionDefinitionFileProvider.java"


# static fields
.field private static final PARENT:Ljava/lang/String; = "action"

.field private static final SUFFIX:Ljava/lang/String; = "action"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-static {}, Lorg/ros/internal/message/action/ActionDefinitionFileProvider;->newStringFileProvider()Lorg/ros/internal/message/StringFileProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/internal/message/definition/MessageDefinitionFileProvider;-><init>(Lorg/ros/internal/message/StringFileProvider;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lorg/ros/internal/message/action/ActionDefinitionFileProvider;->getParentBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static newStringFileProvider()Lorg/ros/internal/message/StringFileProvider;
    .registers 4

    .line 37
    const-string v0, "action"

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->suffixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    .line 38
    .local v0, "extensionFilter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    new-instance v1, Lorg/ros/internal/message/action/ActionDefinitionFileProvider$1;

    invoke-direct {v1}, Lorg/ros/internal/message/action/ActionDefinitionFileProvider$1;-><init>()V

    invoke-static {v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->asFileFilter(Ljava/io/FileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    .line 44
    .local v1, "parentBaseNameFilter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    invoke-static {v0, v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->andFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v2

    .line 45
    .local v2, "fileFilter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    new-instance v3, Lorg/ros/internal/message/StringFileProvider;

    invoke-direct {v3, v2}, Lorg/ros/internal/message/StringFileProvider;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v3
.end method
