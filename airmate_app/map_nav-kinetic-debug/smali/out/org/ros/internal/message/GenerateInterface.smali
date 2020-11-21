.class public Lorg/ros/internal/message/GenerateInterface;
.super Ljava/lang/Object;
.source "GenerateInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 17
    .param p0, "args"    # [Ljava/lang/String;

    .line 60
    invoke-static/range {p0 .. p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .local v1, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_16

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Incorrect usage, please provide two args: _output_directory_, _pkg_ and _path_to_msg/srv_file_"

    .line 63
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 66
    :cond_16
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 67
    .local v4, "outputDirectory":Ljava/io/File;
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 68
    .local v5, "pkg":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 70
    .local v6, "file":Ljava/io/File;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Output Directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "extension":Ljava/lang/String;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Extension: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    :try_start_bc
    const-string v0, "US-ASCII"

    invoke-static {v6, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c2} :catch_13f

    .line 84
    .local v0, "definition":Ljava/lang/String;
    nop

    .line 83
    nop

    .line 85
    invoke-static {v5, v7}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v9

    .line 86
    .local v9, "messageIdentifier":Lorg/ros/message/MessageIdentifier;
    new-instance v10, Lorg/ros/message/MessageDeclaration;

    invoke-direct {v10, v9, v0}, Lorg/ros/message/MessageDeclaration;-><init>(Lorg/ros/message/MessageIdentifier;Ljava/lang/String;)V

    .line 87
    .local v10, "messageDeclaration":Lorg/ros/message/MessageDeclaration;
    new-instance v11, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;

    invoke-direct {v11}, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;-><init>()V

    .line 89
    .local v11, "messageDefinitionProvider":Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;
    invoke-virtual {v9}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v12, Lorg/ros/internal/message/DefaultMessageFactory;

    invoke-direct {v12, v11}, Lorg/ros/internal/message/DefaultMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    .line 91
    .local v12, "messageFactory":Lorg/ros/message/MessageFactory;
    const-string v13, "msg"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ea

    .line 92
    invoke-static {v10, v4, v2, v12}, Lorg/ros/internal/message/GenerateInterface;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;ZLorg/ros/message/MessageFactory;)V

    goto :goto_13e

    .line 93
    :cond_ea
    const-string v13, "srv"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13e

    .line 94
    invoke-static {v10, v4, v3, v12}, Lorg/ros/internal/message/GenerateInterface;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;ZLorg/ros/message/MessageFactory;)V

    .line 95
    const/4 v13, 0x2

    invoke-static {v0, v13}, Lorg/ros/internal/message/definition/MessageDefinitionTupleParser;->parse(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v13

    .line 96
    .local v13, "requestAndResponse":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {v9}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "Request"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v3

    .line 98
    .local v3, "requestDeclaration":Lorg/ros/message/MessageDeclaration;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {v9}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "Response"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v14, v15}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v14

    .line 101
    .local v14, "responseDeclaration":Lorg/ros/message/MessageDeclaration;
    invoke-static {v3, v4, v2, v12}, Lorg/ros/internal/message/GenerateInterface;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;ZLorg/ros/message/MessageFactory;)V

    .line 102
    invoke-static {v14, v4, v2, v12}, Lorg/ros/internal/message/GenerateInterface;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;ZLorg/ros/message/MessageFactory;)V

    .line 104
    .end local v3    # "requestDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v13    # "requestAndResponse":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "responseDeclaration":Lorg/ros/message/MessageDeclaration;
    :cond_13e
    :goto_13e
    return-void

    .line 82
    .end local v0    # "definition":Ljava/lang/String;
    .end local v9    # "messageIdentifier":Lorg/ros/message/MessageIdentifier;
    .end local v10    # "messageDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v11    # "messageDefinitionProvider":Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;
    .end local v12    # "messageFactory":Lorg/ros/message/MessageFactory;
    :catch_13f
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/ros/exception/RosMessageRuntimeException;

    invoke-direct {v2, v0}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;ZLorg/ros/message/MessageFactory;)V
    .registers 11
    .param p0, "messageDeclaration"    # Lorg/ros/message/MessageDeclaration;
    .param p1, "outputDirectory"    # Ljava/io/File;
    .param p2, "addConstantsAndMethods"    # Z
    .param p3, "messageFactory"    # Lorg/ros/message/MessageFactory;

    .line 42
    new-instance v0, Lorg/ros/internal/message/MessageInterfaceBuilder;

    invoke-direct {v0}, Lorg/ros/internal/message/MessageInterfaceBuilder;-><init>()V

    .line 43
    .local v0, "builder":Lorg/ros/internal/message/MessageInterfaceBuilder;
    invoke-virtual {p0}, Lorg/ros/message/MessageDeclaration;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/MessageInterfaceBuilder;->setPackageName(Ljava/lang/String;)Lorg/ros/internal/message/MessageInterfaceBuilder;

    .line 44
    invoke-virtual {p0}, Lorg/ros/message/MessageDeclaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/MessageInterfaceBuilder;->setInterfaceName(Ljava/lang/String;)Lorg/ros/internal/message/MessageInterfaceBuilder;

    .line 45
    invoke-virtual {v0, p0}, Lorg/ros/internal/message/MessageInterfaceBuilder;->setMessageDeclaration(Lorg/ros/message/MessageDeclaration;)Lorg/ros/internal/message/MessageInterfaceBuilder;

    .line 46
    invoke-virtual {v0, p2}, Lorg/ros/internal/message/MessageInterfaceBuilder;->setAddConstantsAndMethods(Z)V

    .line 49
    :try_start_19
    invoke-virtual {v0, p3}, Lorg/ros/internal/message/MessageInterfaceBuilder;->build(Lorg/ros/message/MessageFactory;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "content":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/ros/message/MessageDeclaration;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v2, "file":Ljava/io/File;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    invoke-static {v2, v1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_54} :catch_55

    .line 56
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    goto :goto_6a

    .line 53
    :catch_55
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Failed to generate interface for %s.\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/ros/message/MessageDeclaration;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method
