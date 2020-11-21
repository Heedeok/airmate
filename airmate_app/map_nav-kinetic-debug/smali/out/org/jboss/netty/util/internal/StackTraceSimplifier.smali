.class public final Lorg/jboss/netty/util/internal/StackTraceSimplifier;
.super Ljava/lang/Object;
.source "StackTraceSimplifier.java"


# static fields
.field private static final EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

.field private static final SIMPLIFY_STACK_TRACE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Lorg/jboss/netty/util/DebugUtil;->isDebugEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->SIMPLIFY_STACK_TRACE:Z

    .line 35
    const-string v0, "^org\\.jboss\\.netty\\.(util\\.(ThreadRenamingRunnable|internal\\.DeadLockProofWorker)|channel\\.(SimpleChannel(Upstream|Downstream)?Handler|(Default|Static)ChannelPipeline.*))(\\$.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static simplify(Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 48
    sget-boolean v0, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->SIMPLIFY_STACK_TRACE:Z

    if-nez v0, :cond_5

    .line 49
    return-void

    .line 52
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    .line 56
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 57
    .local v0, "trace":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_6a

    array-length v1, v0

    if-nez v1, :cond_1c

    goto :goto_6a

    .line 62
    :cond_1c
    sget-object v1, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 63
    return-void

    .line 66
    :cond_30
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v1, "simpleTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3c
    array-length v3, v0

    if-ge v2, v3, :cond_5a

    .line 73
    sget-object v3, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 74
    goto :goto_57

    .line 76
    :cond_52
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 79
    .end local v2    # "i":I
    :cond_5a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 81
    return-void

    .line 58
    .end local v1    # "simpleTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    :cond_6a
    :goto_6a
    return-void
.end method
