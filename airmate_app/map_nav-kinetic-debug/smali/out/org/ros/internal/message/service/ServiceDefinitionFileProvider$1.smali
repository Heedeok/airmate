.class final Lorg/ros/internal/message/service/ServiceDefinitionFileProvider$1;
.super Ljava/lang/Object;
.source "ServiceDefinitionFileProvider.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;->newStringFileProvider()Lorg/ros/internal/message/StringFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "srv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
