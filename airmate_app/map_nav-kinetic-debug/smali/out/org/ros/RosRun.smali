.class public Lorg/ros/RosRun;
.super Ljava/lang/Object;
.source "RosRun.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    array-length v0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 43
    invoke-static {}, Lorg/ros/RosRun;->printUsage()V

    .line 44
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 47
    :cond_a
    new-instance v0, Lorg/ros/internal/loader/CommandLineLoader;

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/ros/internal/loader/CommandLineLoader;-><init>(Ljava/util/List;)V

    .line 48
    .local v0, "loader":Lorg/ros/internal/loader/CommandLineLoader;
    invoke-virtual {v0}, Lorg/ros/internal/loader/CommandLineLoader;->getNodeClassName()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "nodeClassName":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading node class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/ros/internal/loader/CommandLineLoader;->getNodeClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lorg/ros/internal/loader/CommandLineLoader;->build()Lorg/ros/node/NodeConfiguration;

    move-result-object v3

    .line 52
    .local v3, "nodeConfiguration":Lorg/ros/node/NodeConfiguration;
    const/4 v4, 0x0

    .line 54
    .local v4, "nodeMain":Lorg/ros/node/NodeMain;
    :try_start_36
    invoke-virtual {v0, v2}, Lorg/ros/internal/loader/CommandLineLoader;->loadClass(Ljava/lang/String;)Lorg/ros/node/NodeMain;

    move-result-object v5
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_3a} :catch_7b
    .catch Ljava/lang/InstantiationException; {:try_start_36 .. :try_end_3a} :catch_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_3a} :catch_4b

    move-object v4, v5

    .line 61
    nop

    .line 63
    if-eqz v4, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 64
    invoke-static {}, Lorg/ros/node/DefaultNodeMainExecutor;->newDefault()Lorg/ros/node/NodeMainExecutor;

    move-result-object v1

    .line 65
    .local v1, "nodeMainExecutor":Lorg/ros/node/NodeMainExecutor;
    invoke-interface {v1, v4, v3}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 66
    return-void

    .line 59
    .end local v1    # "nodeMainExecutor":Lorg/ros/node/NodeMainExecutor;
    :catch_4b
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lorg/ros/exception/RosRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 57
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_63
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v5, Lorg/ros/exception/RosRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 55
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_7b
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lorg/ros/exception/RosRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to locate node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static printUsage()V
    .registers 2

    .line 38
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java -jar my_package.jar com.example.MyNodeMain [args]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    return-void
.end method
