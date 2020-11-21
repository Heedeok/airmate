.class public Lorg/ros/internal/message/MessageProxyFactory;
.super Ljava/lang/Object;
.source "MessageProxyFactory.java"


# static fields
.field private static final HEADER_MESSAGE_TYPE:Ljava/lang/String; = "std_msgs/Header"

.field private static final SEQUENCE_FIELD_NAME:Ljava/lang/String; = "seq"

.field private static final SEQUENCE_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final messageContextProvider:Lorg/ros/internal/message/context/MessageContextProvider;

.field private final messageInterfaceClassProvider:Lorg/ros/internal/message/MessageInterfaceClassProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/ros/internal/message/MessageProxyFactory;->SEQUENCE_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/message/MessageInterfaceClassProvider;Lorg/ros/message/MessageFactory;)V
    .registers 4
    .param p1, "messageInterfaceClassProvider"    # Lorg/ros/internal/message/MessageInterfaceClassProvider;
    .param p2, "messageFactory"    # Lorg/ros/message/MessageFactory;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/ros/internal/message/MessageProxyFactory;->messageInterfaceClassProvider:Lorg/ros/internal/message/MessageInterfaceClassProvider;

    .line 46
    new-instance v0, Lorg/ros/internal/message/context/MessageContextProvider;

    invoke-direct {v0, p2}, Lorg/ros/internal/message/context/MessageContextProvider;-><init>(Lorg/ros/message/MessageFactory;)V

    iput-object v0, p0, Lorg/ros/internal/message/MessageProxyFactory;->messageContextProvider:Lorg/ros/internal/message/context/MessageContextProvider;

    .line 47
    return-void
.end method

.method private newProxy(Ljava/lang/Class;Lorg/ros/internal/message/MessageImpl;)Ljava/lang/Object;
    .registers 7
    .param p2, "messageImpl"    # Lorg/ros/internal/message/MessageImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/ros/internal/message/MessageImpl;",
            ")TT;"
        }
    .end annotation

    .line 74
    .local p1, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 75
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-class v2, Lorg/ros/internal/message/GetInstance;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 76
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v2, Lorg/ros/internal/message/MessageProxyInvocationHandler;

    invoke-direct {v2, p2}, Lorg/ros/internal/message/MessageProxyInvocationHandler;-><init>(Lorg/ros/internal/message/MessageImpl;)V

    .line 78
    .local v2, "invocationHandler":Lorg/ros/internal/message/MessageProxyInvocationHandler;
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public newMessageProxy(Lorg/ros/message/MessageDeclaration;)Ljava/lang/Object;
    .registers 6
    .param p1, "messageDeclaration"    # Lorg/ros/message/MessageDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/message/MessageDeclaration;",
            ")TT;"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lorg/ros/internal/message/MessageProxyFactory;->messageContextProvider:Lorg/ros/internal/message/context/MessageContextProvider;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/context/MessageContextProvider;->get(Lorg/ros/message/MessageDeclaration;)Lorg/ros/internal/message/context/MessageContext;

    move-result-object v0

    .line 53
    .local v0, "messageContext":Lorg/ros/internal/message/context/MessageContext;
    new-instance v1, Lorg/ros/internal/message/MessageImpl;

    invoke-direct {v1, v0}, Lorg/ros/internal/message/MessageImpl;-><init>(Lorg/ros/internal/message/context/MessageContext;)V

    .line 56
    .local v1, "messageImpl":Lorg/ros/internal/message/MessageImpl;
    invoke-virtual {v1}, Lorg/ros/internal/message/MessageImpl;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "std_msgs/Header"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 57
    const-string v2, "seq"

    sget-object v3, Lorg/ros/internal/message/MessageProxyFactory;->SEQUENCE_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/ros/internal/message/MessageImpl;->setUInt32(Ljava/lang/String;I)V

    .line 59
    :cond_25
    iget-object v2, p0, Lorg/ros/internal/message/MessageProxyFactory;->messageInterfaceClassProvider:Lorg/ros/internal/message/MessageInterfaceClassProvider;

    .line 60
    invoke-virtual {p1}, Lorg/ros/message/MessageDeclaration;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ros/internal/message/MessageInterfaceClassProvider;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 61
    .local v2, "messageInterfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, v2, v1}, Lorg/ros/internal/message/MessageProxyFactory;->newProxy(Ljava/lang/Class;Lorg/ros/internal/message/MessageImpl;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method
