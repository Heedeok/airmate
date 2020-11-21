.class public Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;
.super Ljava/lang/Object;
.source "DNSJavaNameServiceDescriptor.java"

# interfaces
.implements Lsun/net/spi/nameservice/NameServiceDescriptor;


# static fields
.field static synthetic class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

.field private static nameService:Lsun/net/spi/nameservice/NameService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    sget-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "sun.net.spi.nameservice.NameService"

    invoke-static {v0}, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 22
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    if-nez v3, :cond_24

    const-string v3, "sun.net.spi.nameservice.NameService"

    invoke-static {v3}, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    goto :goto_26

    :cond_24
    sget-object v3, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    :goto_26
    aput-object v3, v1, v2

    new-instance v2, Lorg/xbill/DNS/spi/DNSJavaNameService;

    invoke-direct {v2}, Lorg/xbill/DNS/spi/DNSJavaNameService;-><init>()V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/spi/nameservice/NameService;

    sput-object v1, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->nameService:Lsun/net/spi/nameservice/NameService;

    .line 25
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 21
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
.method public createNameService()Lsun/net/spi/nameservice/NameService;
    .registers 2

    .line 32
    sget-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->nameService:Lsun/net/spi/nameservice/NameService;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .registers 2

    .line 42
    const-string v0, "dnsjava"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 37
    const-string v0, "dns"

    return-object v0
.end method
