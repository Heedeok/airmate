.class public Lorg/xbill/DNS/tests/primary;
.super Ljava/lang/Object;
.source "primary.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 16
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "time":Z
    const/4 v1, 0x0

    .line 20
    .local v1, "axfr":Z
    const/4 v2, 0x0

    .line 21
    .local v2, "iterator":Z
    const/4 v3, 0x0

    .line 23
    .local v3, "arg":I
    array-length v4, p0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_b

    .line 24
    invoke-static {}, Lorg/xbill/DNS/tests/primary;->usage()V

    .line 26
    :cond_b
    :goto_b
    array-length v4, p0

    sub-int/2addr v4, v3

    if-le v4, v5, :cond_36

    .line 27
    const/4 v4, 0x0

    aget-object v6, p0, v4

    const-string v7, "-t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 28
    const/4 v0, 0x1

    goto :goto_33

    .line 29
    :cond_1c
    aget-object v6, p0, v4

    const-string v7, "-a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 30
    const/4 v1, 0x1

    goto :goto_33

    .line 31
    :cond_28
    aget-object v4, p0, v4

    const-string v6, "-i"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 32
    const/4 v2, 0x1

    .line 33
    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 36
    :cond_36
    add-int/lit8 v4, v3, 0x1

    .local v4, "arg":I
    aget-object v3, p0, v3

    .end local v3    # "arg":I
    sget-object v5, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v3, v5}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 37
    .local v3, "origin":Lorg/xbill/DNS/Name;
    add-int/lit8 v5, v4, 0x1

    .local v5, "arg":I
    aget-object v4, p0, v4

    .line 39
    .local v4, "file":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 40
    .local v6, "start":J
    new-instance v8, Lorg/xbill/DNS/Zone;

    invoke-direct {v8, v3, v4}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 41
    .local v8, "zone":Lorg/xbill/DNS/Zone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 42
    .local v9, "end":J
    if-eqz v1, :cond_68

    .line 43
    invoke-virtual {v8}, Lorg/xbill/DNS/Zone;->AXFR()Ljava/util/Iterator;

    move-result-object v11

    .line 44
    .local v11, "it":Ljava/util/Iterator;
    :goto_57
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_67

    .line 45
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_57

    .line 47
    .end local v11    # "it":Ljava/util/Iterator;
    :cond_67
    goto :goto_84

    :cond_68
    if-eqz v2, :cond_7f

    .line 48
    invoke-virtual {v8}, Lorg/xbill/DNS/Zone;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 49
    .restart local v11    # "it":Ljava/util/Iterator;
    :goto_6e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7e

    .line 50
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_6e

    .line 52
    .end local v11    # "it":Ljava/util/Iterator;
    :cond_7e
    goto :goto_84

    .line 53
    :cond_7f
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 55
    :goto_84
    if-eqz v0, :cond_a3

    .line 56
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "; Load time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sub-long v13, v9, v6

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_a3
    return-void
.end method

.method private static usage()V
    .registers 2

    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: primary [-t] [-a | -i] origin file"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 14
    return-void
.end method
