.class public final Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;
.super Ljava/lang/Object;
.source "ReflectionSocketFactory.java"


# static fields
.field private static INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

.field private static REFLECTION_FAILED:Z

.field private static SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

.field static synthetic class$java$net$InetAddress:Ljava/lang/Class;

.field static synthetic class$java$net$Socket:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 56
    sput-object v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    .line 57
    sput-object v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    .line 58
    sput-object v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 121
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

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createSocket(Ljava/lang/String;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;
    .registers 22
    .param p0, "socketfactoryName"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/commons/httpclient/ConnectTimeoutException;
        }
    .end annotation

    .line 95
    move/from16 v1, p5

    sget-boolean v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 97
    return-object v2

    .line 109
    :cond_8
    const/4 v3, 0x1

    :try_start_9
    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    .local v0, "socketfactoryClass":Ljava/lang/Class;
    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 112
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 114
    .local v6, "socketfactory":Ljava/lang/Object;
    const-string v7, "createSocket"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v4, v7

    .line 116
    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/Socket;

    .line 118
    .local v7, "socket":Ljava/net/Socket;
    sget-object v8, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v9, 0x2

    if-nez v8, :cond_55

    .line 119
    const-string v8, "java.net.InetSocketAddress"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 120
    .local v8, "addressClass":Ljava/lang/Class;
    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$InetAddress:Ljava/lang/Class;

    if-nez v11, :cond_47

    const-string v11, "java.net.InetAddress"

    invoke-static {v11}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$InetAddress:Ljava/lang/Class;

    goto :goto_49

    :cond_47
    sget-object v11, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$InetAddress:Ljava/lang/Class;

    :goto_49
    aput-object v11, v10, v5

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v3

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    sput-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 124
    .end local v8    # "addressClass":Ljava/lang/Class;
    :cond_55
    sget-object v8, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    aput-object v11, v10, v5

    new-instance v11, Ljava/lang/Integer;
    :try_end_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_61} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_61} :catch_ef

    move/from16 v12, p2

    :try_start_63
    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v10, v3

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 127
    .local v8, "remoteaddr":Ljava/lang/Object;
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-array v11, v9, [Ljava/lang/Object;

    aput-object p3, v11, v5

    new-instance v13, Ljava/lang/Integer;
    :try_end_74
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_63 .. :try_end_74} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_74} :catch_eb

    move/from16 v14, p4

    :try_start_76
    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 130
    .local v10, "localaddr":Ljava/lang/Object;
    sget-object v11, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    if-nez v11, :cond_a8

    .line 131
    sget-object v11, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    if-nez v11, :cond_90

    const-string v11, "java.net.Socket"

    invoke-static {v11}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    goto :goto_92

    :cond_90
    sget-object v11, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    :goto_92
    const-string v13, "connect"

    new-array v2, v9, [Ljava/lang/Class;

    const-string v15, "java.net.SocketAddress"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v2, v5

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v2, v3

    invoke-virtual {v11, v13, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    .line 135
    :cond_a8
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    if-nez v2, :cond_cd

    .line 136
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    if-nez v2, :cond_b9

    const-string v2, "java.net.Socket"

    invoke-static {v2}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    goto :goto_bb

    :cond_b9
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    :goto_bb
    const-string v11, "bind"

    new-array v13, v3, [Ljava/lang/Class;

    const-string v15, "java.net.SocketAddress"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v5

    invoke-virtual {v2, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    .line 139
    :cond_cd
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v5

    invoke-virtual {v2, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v9, v3

    invoke-virtual {v2, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_76 .. :try_end_e6} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_e6} :catch_e7

    .line 141
    return-object v7

    .line 164
    .end local v0    # "socketfactoryClass":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "socketfactory":Ljava/lang/Object;
    .end local v7    # "socket":Ljava/net/Socket;
    .end local v8    # "remoteaddr":Ljava/lang/Object;
    .end local v10    # "localaddr":Ljava/lang/Object;
    :catch_e7
    move-exception v0

    goto :goto_f4

    .line 143
    :catch_e9
    move-exception v0

    goto :goto_fd

    .line 164
    :catch_eb
    move-exception v0

    goto :goto_f2

    .line 143
    :catch_ed
    move-exception v0

    goto :goto_fb

    .line 164
    :catch_ef
    move-exception v0

    move/from16 v12, p2

    :goto_f2
    move/from16 v14, p4

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    :goto_f4
    sput-boolean v3, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    .line 166
    const/4 v2, 0x0

    return-object v2

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_f8
    move-exception v0

    move/from16 v12, p2

    :goto_fb
    move/from16 v14, p4

    :goto_fd
    move-object v2, v0

    .line 144
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 145
    .local v4, "cause":Ljava/lang/Throwable;
    sget-object v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_114

    .line 147
    :try_start_106
    const-string v0, "java.net.SocketTimeoutException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;
    :try_end_10e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_106 .. :try_end_10e} :catch_10f

    .line 152
    goto :goto_114

    .line 148
    :catch_10f
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    sput-boolean v3, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    .line 151
    const/4 v3, 0x0

    return-object v3

    .line 154
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_114
    :goto_114
    const/4 v3, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    .line 159
    instance-of v0, v4, Ljava/io/IOException;

    if-nez v0, :cond_122

    .line 162
    return-object v3

    .line 160
    :cond_122
    move-object v0, v4

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 155
    :cond_126
    new-instance v0, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "The host did not accept the connection within timeout of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
