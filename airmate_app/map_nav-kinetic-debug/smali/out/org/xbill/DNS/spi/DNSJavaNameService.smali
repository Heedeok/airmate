.class public Lorg/xbill/DNS/spi/DNSJavaNameService;
.super Ljava/lang/Object;
.source "DNSJavaNameService.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field static synthetic array$$B:Ljava/lang/Class; = null

.field static synthetic array$Ljava$net$InetAddress:Ljava/lang/Class; = null

.field private static final domainProperty:Ljava/lang/String; = "sun.net.spi.nameservice.domain"

.field private static final nsProperty:Ljava/lang/String; = "sun.net.spi.nameservice.nameservers"

.field private static final v6Property:Ljava/lang/String; = "java.net.preferIPv6Addresses"


# instance fields
.field private preferV6:Z


# direct methods
.method protected constructor <init>()V
    .registers 11

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    .line 55
    const-string v1, "sun.net.spi.nameservice.nameservers"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "nameServers":Ljava/lang/String;
    const-string v2, "sun.net.spi.nameservice.domain"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "domain":Ljava/lang/String;
    const-string v3, "java.net.preferIPv6Addresses"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "v6":Ljava/lang/String;
    if-eqz v1, :cond_49

    .line 60
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 62
    .local v5, "servers":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 63
    .local v6, "n":I
    :goto_28
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 64
    add-int/lit8 v7, v6, 0x1

    .local v7, "n":I
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 62
    move v6, v7

    goto :goto_28

    .line 66
    .end local v7    # "n":I
    :cond_38
    :try_start_38
    new-instance v7, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v7, v5}, Lorg/xbill/DNS/ExtendedResolver;-><init>([Ljava/lang/String;)V

    .line 67
    .local v7, "res":Lorg/xbill/DNS/Resolver;
    invoke-static {v7}, Lorg/xbill/DNS/Lookup;->setDefaultResolver(Lorg/xbill/DNS/Resolver;)V
    :try_end_40
    .catch Ljava/net/UnknownHostException; {:try_start_38 .. :try_end_40} :catch_41

    .line 72
    .end local v7    # "res":Lorg/xbill/DNS/Resolver;
    goto :goto_49

    .line 69
    :catch_41
    move-exception v7

    .line 70
    .local v7, "e":Ljava/net/UnknownHostException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "DNSJavaNameService: invalid sun.net.spi.nameservice.nameservers"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "servers":[Ljava/lang/String;
    .end local v6    # "n":I
    .end local v7    # "e":Ljava/net/UnknownHostException;
    :cond_49
    :goto_49
    const/4 v4, 0x1

    if-eqz v2, :cond_5c

    .line 77
    :try_start_4c
    new-array v5, v4, [Ljava/lang/String;

    aput-object v2, v5, v0

    invoke-static {v5}, Lorg/xbill/DNS/Lookup;->setDefaultSearchPath([Ljava/lang/String;)V
    :try_end_53
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_4c .. :try_end_53} :catch_54

    .line 82
    goto :goto_5c

    .line 79
    :catch_54
    move-exception v0

    .line 80
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "DNSJavaNameService: invalid sun.net.spi.nameservice.domain"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    :cond_5c
    :goto_5c
    if-eqz v3, :cond_68

    const-string v0, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 86
    iput-boolean v4, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    .line 87
    :cond_68
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 99
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


# virtual methods
.method public getHostByAddr([B)Ljava/lang/String;
    .registers 5
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 170
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 171
    .local v0, "name":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 172
    .local v1, "records":[Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_23

    .line 174
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/xbill/DNS/PTRRecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 173
    :cond_23
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getHostByAddr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 94
    aget-object v0, p3, v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/spi/DNSJavaNameService;->getHostByAddr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_18
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lookupAllHostAddr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 97
    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/spi/DNSJavaNameService;->lookupAllHostAddr(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 98
    .local v0, "addresses":[Ljava/net/InetAddress;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 99
    .local v2, "returnType":Ljava/lang/Class;
    sget-object v3, Lorg/xbill/DNS/spi/DNSJavaNameService;->array$Ljava$net$InetAddress:Ljava/lang/Class;

    if-nez v3, :cond_3d

    const-string v3, "[Ljava.net.InetAddress;"

    invoke-static {v3}, Lorg/xbill/DNS/spi/DNSJavaNameService;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/xbill/DNS/spi/DNSJavaNameService;->array$Ljava$net$InetAddress:Ljava/lang/Class;

    goto :goto_3f

    :cond_3d
    sget-object v3, Lorg/xbill/DNS/spi/DNSJavaNameService;->array$Ljava$net$InetAddress:Ljava/lang/Class;

    :goto_3f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 101
    return-object v0

    .line 102
    :cond_46
    sget-object v3, Lorg/xbill/DNS/spi/DNSJavaNameService;->array$$B:Ljava/lang/Class;

    if-nez v3, :cond_53

    const-string v3, "[[B"

    invoke-static {v3}, Lorg/xbill/DNS/spi/DNSJavaNameService;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/xbill/DNS/spi/DNSJavaNameService;->array$$B:Ljava/lang/Class;

    goto :goto_55

    :cond_53
    sget-object v3, Lorg/xbill/DNS/spi/DNSJavaNameService;->array$$B:Ljava/lang/Class;

    :goto_55
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 104
    array-length v3, v0

    .line 105
    .local v3, "naddrs":I
    new-array v4, v3, [[B

    .line 107
    .local v4, "byteAddresses":[[B
    nop

    .local v1, "i":I
    :goto_5f
    if-ge v1, v3, :cond_6c

    .line 108
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 109
    .local v5, "addr":[B
    aput-object v5, v4, v1
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_69} :catch_76

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 111
    .end local v1    # "i":I
    .end local v5    # "addr":[B
    :cond_6c
    return-object v4

    .line 118
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .end local v2    # "returnType":Ljava/lang/Class;
    .end local v3    # "naddrs":I
    .end local v4    # "byteAddresses":[[B
    :cond_6d
    nop

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown function name or arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :catch_76
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "DNSJavaNameService: Unexpected error."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    throw v0
.end method

.method public lookupAllHostAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    .line 133
    .local v0, "name":Lorg/xbill/DNS/Name;
    :try_start_1
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_6} :catch_63

    move-object v0, v1

    .line 137
    nop

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "records":[Lorg/xbill/DNS/Record;
    iget-boolean v2, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    const/16 v3, 0x1c

    if-eqz v2, :cond_18

    .line 141
    new-instance v2, Lorg/xbill/DNS/Lookup;

    invoke-direct {v2, v0, v3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v2}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 142
    :cond_18
    if-nez v1, :cond_24

    .line 143
    new-instance v2, Lorg/xbill/DNS/Lookup;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v2}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 144
    :cond_24
    if-nez v1, :cond_33

    iget-boolean v2, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    if-nez v2, :cond_33

    .line 145
    new-instance v2, Lorg/xbill/DNS/Lookup;

    invoke-direct {v2, v0, v3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v2}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 146
    :cond_33
    if-eqz v1, :cond_5d

    .line 149
    array-length v2, v1

    new-array v2, v2, [Ljava/net/InetAddress;

    .line 150
    .local v2, "array":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    array-length v4, v1

    if-ge v3, v4, :cond_5c

    .line 151
    aget-object v4, v1, v3

    .line 152
    .local v4, "record":Lorg/xbill/DNS/Record;
    aget-object v5, v1, v3

    instance-of v5, v5, Lorg/xbill/DNS/ARecord;

    if-eqz v5, :cond_4f

    .line 153
    aget-object v5, v1, v3

    check-cast v5, Lorg/xbill/DNS/ARecord;

    .line 154
    .local v5, "a":Lorg/xbill/DNS/ARecord;
    invoke-virtual {v5}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    aput-object v6, v2, v3

    .line 155
    .end local v5    # "a":Lorg/xbill/DNS/ARecord;
    goto :goto_59

    .line 156
    :cond_4f
    aget-object v5, v1, v3

    check-cast v5, Lorg/xbill/DNS/AAAARecord;

    .line 157
    .local v5, "aaaa":Lorg/xbill/DNS/AAAARecord;
    invoke-virtual {v5}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    aput-object v6, v2, v3

    .line 150
    .end local v4    # "record":Lorg/xbill/DNS/Record;
    .end local v5    # "aaaa":Lorg/xbill/DNS/AAAARecord;
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 160
    .end local v3    # "i":I
    :cond_5c
    return-object v2

    .line 147
    .end local v2    # "array":[Ljava/net/InetAddress;
    :cond_5d
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v1    # "records":[Lorg/xbill/DNS/Record;
    :catch_63
    move-exception v1

    .line 136
    .local v1, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
