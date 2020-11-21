.class public Lorg/xbill/DNS/ResolverConfig;
.super Ljava/lang/Object;
.source "ResolverConfig.java"


# static fields
.field static synthetic class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

.field private static currentConfig:Lorg/xbill/DNS/ResolverConfig;


# instance fields
.field private ndots:I

.field private searchlist:[Lorg/xbill/DNS/Name;

.field private servers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 43
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->refresh()V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 48
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findProperty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 49
    return-void

    .line 50
    :cond_12
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findSunJVM()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 51
    return-void

    .line 52
    :cond_19
    iget-object v1, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v1, :cond_71

    .line 53
    :cond_21
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "OS":Ljava/lang/String;
    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "vendor":Ljava/lang/String;
    const-string v3, "Windows"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_56

    .line 56
    const-string v3, "95"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_52

    const-string v3, "98"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_52

    const-string v3, "ME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_4e

    goto :goto_52

    .line 61
    :cond_4e
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNT()V

    goto :goto_71

    .line 59
    :cond_52
    :goto_52
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->find95()V

    goto :goto_71

    .line 62
    :cond_56
    const-string v3, "NetWare"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_62

    .line 63
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNetware()V

    goto :goto_71

    .line 64
    :cond_62
    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_6e

    .line 65
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findAndroid()V

    goto :goto_71

    .line 67
    :cond_6e
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findUnix()V

    .line 70
    .end local v1    # "OS":Ljava/lang/String;
    .end local v2    # "vendor":Ljava/lang/String;
    :cond_71
    :goto_71
    return-void
.end method

.method private addSearch(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .line 84
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "adding search "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_1e
    :try_start_1e
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_24
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1e .. :try_end_24} :catch_30

    .line 91
    .local v0, "name":Lorg/xbill/DNS/Name;
    nop

    .line 92
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 93
    return-void

    .line 94
    :cond_2c
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void

    .line 89
    .end local v0    # "name":Lorg/xbill/DNS/Name;
    :catch_30
    move-exception v0

    .line 90
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    return-void
.end method

.method private addServer(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    return-void

    .line 76
    :cond_7
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "adding server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :cond_25
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 288
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private configureFromLists(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .param p1, "lserver"    # Ljava/util/List;
    .param p2, "lsearch"    # Ljava/util/List;

    .line 115
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 116
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 117
    :cond_15
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v0, :cond_29

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 118
    new-array v0, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 119
    :cond_29
    return-void
.end method

.method private configureNdots(I)V
    .registers 3
    .param p1, "lndots"    # I

    .line 123
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_8

    if-lez p1, :cond_8

    .line 124
    iput p1, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 125
    :cond_8
    return-void
.end method

.method private find95()V
    .registers 5

    .line 393
    const-string v0, "winipcfg.out"

    .line 396
    .local v0, "s":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "winipcfg /all /batch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 397
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 398
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 400
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_35

    .line 404
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "f":Ljava/io/File;
    nop

    .line 405
    return-void

    .line 402
    :catch_35
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    return-void
.end method

.method private findAndroid()V
    .registers 15

    .line 434
    const-string v0, "^\\d+(\\.\\d+){3}$"

    .line 435
    .local v0, "re1":Ljava/lang/String;
    const-string v1, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    .line 437
    .local v1, "re2":Ljava/lang/String;
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v2, "lserver":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v3, "lsearch":Ljava/util/ArrayList;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "getprop"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 441
    .local v4, "p":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 442
    .local v5, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 443
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 444
    .local v7, "br":Ljava/io/BufferedReader;
    :goto_26
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "line":Ljava/lang/String;
    if-eqz v8, :cond_64

    .line 445
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v10, ":"

    invoke-direct {v8, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .local v8, "t":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, "name":Ljava/lang/String;
    const-string v11, "net.dns"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_63

    .line 448
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 449
    .local v11, "v":Ljava/lang/String;
    const-string v12, "[ \\[\\]]"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 450
    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5a

    invoke-virtual {v11, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_63

    :cond_5a
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_63

    .line 452
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v8    # "t":Ljava/util/StringTokenizer;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "v":Ljava/lang/String;
    :cond_63
    goto :goto_26

    .line 455
    :cond_64
    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_67} :catch_68

    .line 458
    .end local v2    # "lserver":Ljava/util/ArrayList;
    .end local v3    # "lsearch":Ljava/util/ArrayList;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v9    # "line":Ljava/lang/String;
    goto :goto_69

    .line 456
    :catch_68
    move-exception v2

    .line 459
    :goto_69
    return-void
.end method

.method private findNT()V
    .registers 3

    .line 414
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ipconfig /all"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 415
    .local v0, "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    .line 420
    .end local v0    # "p":Ljava/lang/Process;
    nop

    .line 421
    return-void

    .line 418
    :catch_16
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method

.method private findNetware()V
    .registers 2

    .line 280
    const-string v0, "sys:/etc/resolv.cfg"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private findProperty()Z
    .registers 7

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v0, "lserver":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v2, "lsearch":Ljava/util/List;
    const-string v3, "dns.server"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "prop":Ljava/lang/String;
    if-eqz v3, :cond_28

    .line 141
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1a
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 143
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1a

    .line 146
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_28
    const-string v4, "dns.search"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    if-eqz v3, :cond_45

    .line 148
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    :goto_37
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 150
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_37

    .line 152
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_45
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 153
    iget-object v4, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v4, :cond_52

    iget-object v4, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-eqz v4, :cond_52

    const/4 v1, 0x1

    nop

    :cond_52
    return v1
.end method

.method private findResolvConf(Ljava/lang/String;)V
    .registers 12
    .param p1, "file"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_c1

    move-object v0, v1

    .line 223
    nop

    .line 224
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 225
    .local v1, "isr":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 226
    .local v2, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v3, "lserver":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v5

    .line 228
    .local v4, "lsearch":Ljava/util/List;
    const/4 v5, -0x1

    .line 231
    .local v5, "lndots":I
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_b5

    .line 232
    const-string v6, "nameserver"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 233
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 234
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 235
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    .line 236
    .end local v6    # "st":Ljava/util/StringTokenizer;
    goto :goto_1f

    .line 237
    :cond_3e
    const-string v6, "domain"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 238
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v6    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 240
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_55

    .line 241
    goto :goto_1f

    .line 242
    :cond_55
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 243
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 244
    .end local v6    # "st":Ljava/util/StringTokenizer;
    :cond_62
    goto :goto_1f

    .line 245
    :cond_63
    const-string v6, "search"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 246
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_74

    .line 247
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 248
    :cond_74
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v6    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 250
    :goto_7c
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 251
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7c

    .line 252
    .end local v6    # "st":Ljava/util/StringTokenizer;
    :cond_8a
    goto :goto_1f

    .line 253
    :cond_8b
    const-string v6, "options"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 254
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v6    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 256
    :goto_9b
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 257
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "token":Ljava/lang/String;
    const-string v9, "ndots:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 259
    invoke-direct {p0, v8}, Lorg/xbill/DNS/ResolverConfig;->parseNdots(Ljava/lang/String;)I

    move-result v9

    move v5, v9

    .line 261
    .end local v8    # "token":Ljava/lang/String;
    :cond_b2
    goto :goto_9b

    .line 262
    .end local v6    # "st":Ljava/util/StringTokenizer;
    :cond_b3
    goto/16 :goto_1f

    .line 264
    :cond_b5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_b8} :catch_b9

    .line 267
    .end local v7    # "line":Ljava/lang/String;
    goto :goto_ba

    .line 266
    :catch_b9
    move-exception v6

    .line 269
    :goto_ba
    invoke-direct {p0, v3, v4}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 270
    invoke-direct {p0, v5}, Lorg/xbill/DNS/ResolverConfig;->configureNdots(I)V

    .line 271
    return-void

    .line 221
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "lserver":Ljava/util/List;
    .end local v4    # "lsearch":Ljava/util/List;
    .end local v5    # "lndots":I
    :catch_c1
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private findSunJVM()Z
    .registers 14

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v0, "lserver":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v2, "lsearch":Ljava/util/List;
    const/4 v3, 0x0

    :try_start_c
    new-array v4, v1, [Ljava/lang/Class;

    .line 169
    .local v4, "noClasses":[Ljava/lang/Class;
    new-array v5, v1, [Ljava/lang/Object;

    .line 170
    .local v5, "noObjects":[Ljava/lang/Object;
    const-string v6, "sun.net.dns.ResolverConfiguration"

    .line 171
    .local v6, "resConfName":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 175
    .local v7, "resConfClass":Ljava/lang/Class;
    const-string v8, "open"

    invoke-virtual {v7, v8, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 176
    .local v8, "open":Ljava/lang/reflect/Method;
    invoke-virtual {v8, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 179
    .local v9, "resConf":Ljava/lang/Object;
    const-string v10, "nameservers"

    invoke-virtual {v7, v10, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 181
    .local v10, "nameservers":Ljava/lang/reflect/Method;
    invoke-virtual {v10, v9, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v3, v11

    .line 184
    .local v3, "lserver_tmp":Ljava/util/List;
    const-string v11, "searchlist"

    invoke-virtual {v7, v11, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 186
    .local v11, "searchlist":Ljava/lang/reflect/Method;
    invoke-virtual {v11, v9, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_39} :catch_7b

    move-object v4, v12

    .line 190
    .end local v5    # "noObjects":[Ljava/lang/Object;
    .end local v6    # "resConfName":Ljava/lang/String;
    .end local v7    # "resConfClass":Ljava/lang/Class;
    .end local v8    # "open":Ljava/lang/reflect/Method;
    .end local v9    # "resConf":Ljava/lang/Object;
    .end local v10    # "nameservers":Ljava/lang/reflect/Method;
    .end local v11    # "searchlist":Ljava/lang/reflect/Method;
    .local v4, "lsearch_tmp":Ljava/util/List;
    nop

    .line 192
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_42

    .line 193
    return v1

    .line 195
    :cond_42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5c

    .line 196
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, "it":Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4c

    .line 201
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_5c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_76

    .line 202
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .restart local v1    # "it":Ljava/util/Iterator;
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_66

    .line 206
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_76
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 207
    const/4 v1, 0x1

    return v1

    .line 188
    .end local v3    # "lserver_tmp":Ljava/util/List;
    .end local v4    # "lsearch_tmp":Ljava/util/List;
    :catch_7b
    move-exception v4

    .line 189
    .restart local v3    # "lserver_tmp":Ljava/util/List;
    .local v4, "e":Ljava/lang/Exception;
    return v1
.end method

.method private findUnix()V
    .registers 2

    .line 275
    const-string v0, "/etc/resolv.conf"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private findWin(Ljava/io/InputStream;)V
    .registers 9
    .param p1, "in"    # Ljava/io/InputStream;

    .line 371
    const-string v0, "org.xbill.DNS.windows.parse.buffer"

    .line 372
    .local v0, "property":Ljava/lang/String;
    const/16 v1, 0x2000

    .line 373
    .local v1, "defaultBufSize":I
    const/16 v2, 0x2000

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 374
    .local v2, "bufSize":I
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 375
    .local v3, "b":Ljava/io/BufferedInputStream;
    invoke-virtual {v3, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 376
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    .line 377
    iget-object v4, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v4, :cond_31

    .line 379
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2f

    .line 383
    nop

    .line 384
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    goto :goto_31

    .line 381
    :catch_2f
    move-exception v4

    .line 382
    .local v4, "e":Ljava/io/IOException;
    return-void

    .line 386
    .end local v4    # "e":Ljava/io/IOException;
    :cond_31
    :goto_31
    return-void
.end method

.method private findWin(Ljava/io/InputStream;Ljava/util/Locale;)V
    .registers 25
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 288
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    sget-object v0, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    if-nez v0, :cond_11

    const-string v0, "org.xbill.DNS.ResolverConfig"

    invoke-static {v0}, Lorg/xbill/DNS/ResolverConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    goto :goto_13

    :cond_11
    sget-object v0, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".windows.DNSServer"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "resPackageName":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 292
    invoke-static {v4, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    goto :goto_37

    .line 294
    :cond_33
    invoke-static {v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .local v0, "res":Ljava/util/ResourceBundle;
    :goto_37
    move-object v5, v0

    .line 296
    .end local v0    # "res":Ljava/util/ResourceBundle;
    .local v5, "res":Ljava/util/ResourceBundle;
    const-string v0, "host_name"

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "host_name":Ljava/lang/String;
    const-string v0, "primary_dns_suffix"

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, "primary_dns_suffix":Ljava/lang/String;
    const-string v0, "dns_suffix"

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, "dns_suffix":Ljava/lang/String;
    const-string v0, "dns_servers"

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 301
    .local v9, "dns_servers":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    move-object/from16 v11, p1

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v10, v0

    .line 303
    .local v10, "br":Ljava/io/BufferedReader;
    :try_start_5d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 304
    .local v12, "lserver":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 305
    .local v13, "lsearch":Ljava/util/List;
    const/4 v0, 0x0

    .line 306
    .local v0, "line":Ljava/lang/String;
    const/4 v14, 0x0

    .line 307
    .local v14, "readingServers":Z
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 308
    .local v16, "readingSearches":Z
    .local v17, "name":Lorg/xbill/DNS/Name;
    :goto_6f
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .end local v0    # "line":Ljava/lang/String;
    .local v19, "line":Ljava/lang/String;
    if-eqz v18, :cond_14e

    .line 309
    new-instance v0, Ljava/util/StringTokenizer;

    move-object/from16 v15, v19

    .end local v19    # "line":Ljava/lang/String;
    .local v15, "line":Ljava/lang/String;
    invoke-direct {v0, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v0

    .line 310
    .local v18, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 311
    const/4 v14, 0x0

    .line 312
    const/16 v16, 0x0

    .line 313
    nop

    .line 307
    move-object v0, v15

    goto :goto_6f

    .line 315
    :cond_8c
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "s":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "s":Ljava/lang/String;
    .local v20, "s":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a0

    .line 317
    const/4 v0, 0x0

    .line 318
    .end local v14    # "readingServers":Z
    .local v0, "readingServers":Z
    const/4 v14, 0x0

    .line 321
    move/from16 v16, v14

    move v14, v0

    .end local v0    # "readingServers":Z
    .restart local v14    # "readingServers":Z
    :cond_a0
    invoke-virtual {v15, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_d6

    .line 322
    move-object/from16 v2, v20

    .end local v20    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    :goto_a8
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_ac} :catch_158

    if-eqz v0, :cond_b9

    .line 323
    :try_start_ae
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b2} :catch_b4

    move-object v2, v0

    goto :goto_a8

    .line 364
    .end local v2    # "s":Ljava/lang/String;
    .end local v12    # "lserver":Ljava/util/List;
    .end local v13    # "lsearch":Ljava/util/List;
    .end local v14    # "readingServers":Z
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "readingSearches":Z
    .end local v17    # "name":Lorg/xbill/DNS/Name;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    :catch_b4
    move-exception v0

    move-object/from16 v21, v3

    goto/16 :goto_15b

    .line 326
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v12    # "lserver":Ljava/util/List;
    .restart local v13    # "lsearch":Ljava/util/List;
    .restart local v14    # "readingServers":Z
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "readingSearches":Z
    .restart local v17    # "name":Lorg/xbill/DNS/Name;
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    :cond_b9
    move-object/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "packageName":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    :try_start_bc
    invoke-static {v2, v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_c0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_bc .. :try_end_c0} :catch_d1
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c0} :catch_156

    .end local v17    # "name":Lorg/xbill/DNS/Name;
    move-object/from16 v17, v0

    .line 330
    .restart local v17    # "name":Lorg/xbill/DNS/Name;
    nop

    .line 331
    :try_start_c3
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_cc

    .line 332
    goto/16 :goto_141

    .line 333
    :cond_cc
    invoke-direct {v1, v2, v13}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 334
    .end local v17    # "name":Lorg/xbill/DNS/Name;
    goto/16 :goto_14d

    .line 328
    .restart local v17    # "name":Lorg/xbill/DNS/Name;
    :catch_d1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 329
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    goto/16 :goto_141

    .line 334
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    .end local v2    # "s":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v20    # "s":Ljava/lang/String;
    :cond_d6
    move-object/from16 v21, v3

    .end local v3    # "packageName":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    invoke-virtual {v15, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_fc

    .line 335
    move-object/from16 v0, v20

    .end local v20    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    :goto_e0
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 336
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_e0

    .line 337
    :cond_ec
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 338
    goto :goto_141

    .line 339
    :cond_f5
    invoke-direct {v1, v0, v13}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 340
    const/4 v2, 0x1

    .line 360
    .end local v0    # "s":Ljava/lang/String;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    :goto_f9
    move/from16 v16, v2

    goto :goto_14d

    .line 341
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    .restart local v20    # "s":Ljava/lang/String;
    :cond_fc
    if-nez v16, :cond_12a

    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_105

    goto :goto_12a

    .line 350
    :cond_105
    if-nez v14, :cond_10d

    invoke-virtual {v15, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_14d

    .line 353
    :cond_10d
    move-object/from16 v0, v20

    .end local v20    # "s":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :goto_10f
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 354
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_10f

    .line 355
    :cond_11b
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 356
    goto :goto_141

    .line 357
    :cond_124
    invoke-direct {v1, v0, v12}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    .line 358
    const/4 v0, 0x1

    .line 360
    move v14, v0

    goto :goto_14d

    .line 344
    .end local v0    # "s":Ljava/lang/String;
    .restart local v20    # "s":Ljava/lang/String;
    :cond_12a
    :goto_12a
    move-object/from16 v0, v20

    .end local v20    # "s":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :goto_12c
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_138

    .line 345
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_12c

    .line 346
    :cond_138
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_148

    .line 347
    nop

    .line 307
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    .end local v21    # "packageName":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :goto_141
    move-object v0, v15

    move-object/from16 v3, v21

    move-object/from16 v2, p2

    goto/16 :goto_6f

    .line 348
    .end local v3    # "packageName":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    .restart local v21    # "packageName":Ljava/lang/String;
    :cond_148
    invoke-direct {v1, v0, v13}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 349
    const/4 v2, 0x1

    goto :goto_f9

    .line 360
    .end local v0    # "s":Ljava/lang/String;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    :cond_14d
    :goto_14d
    goto :goto_141

    .line 362
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "name":Lorg/xbill/DNS/Name;
    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v19    # "line":Ljava/lang/String;
    :cond_14e
    move-object/from16 v21, v3

    move-object/from16 v15, v19

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v19    # "line":Ljava/lang/String;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    invoke-direct {v1, v12, v13}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_155} :catch_156

    .line 365
    .end local v12    # "lserver":Ljava/util/List;
    .end local v13    # "lsearch":Ljava/util/List;
    .end local v14    # "readingServers":Z
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "readingSearches":Z
    goto :goto_15b

    .line 364
    :catch_156
    move-exception v0

    goto :goto_15b

    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_158
    move-exception v0

    move-object/from16 v21, v3

    .line 366
    .end local v3    # "packageName":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    :goto_15b
    return-void
.end method

.method public static declared-synchronized getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;
    .registers 2

    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v0

    .line 497
    :try_start_3
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseNdots(Ljava/lang/String;)I
    .registers 6
    .param p1, "token"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "ndots":I
    if-ltz v0, :cond_2a

    .line 103
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 104
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "setting ndots "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_29} :catch_2b

    .line 105
    :cond_29
    return v0

    .line 109
    .end local v0    # "ndots":I
    :cond_2a
    goto :goto_2c

    .line 108
    :catch_2b
    move-exception v0

    .line 110
    :goto_2c
    const/4 v0, -0x1

    return v0
.end method

.method public static refresh()V
    .registers 3

    .line 503
    new-instance v0, Lorg/xbill/DNS/ResolverConfig;

    invoke-direct {v0}, Lorg/xbill/DNS/ResolverConfig;-><init>()V

    .line 504
    .local v0, "newConfig":Lorg/xbill/DNS/ResolverConfig;
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "org.xbill.DNS.ResolverConfig"

    invoke-static {v1}, Lorg/xbill/DNS/ResolverConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    goto :goto_14

    :cond_12
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->class$org$xbill$DNS$ResolverConfig:Ljava/lang/Class;

    :goto_14
    monitor-enter v1

    .line 505
    :try_start_15
    sput-object v0, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;

    .line 506
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v2
.end method


# virtual methods
.method public ndots()I
    .registers 2

    .line 489
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_6

    .line 490
    const/4 v0, 0x1

    return v0

    .line 491
    :cond_6
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    return v0
.end method

.method public searchPath()[Lorg/xbill/DNS/Name;
    .registers 2

    .line 478
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .registers 3

    .line 470
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_6

    .line 471
    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_6
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public servers()[Ljava/lang/String;
    .registers 2

    .line 464
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    return-object v0
.end method
