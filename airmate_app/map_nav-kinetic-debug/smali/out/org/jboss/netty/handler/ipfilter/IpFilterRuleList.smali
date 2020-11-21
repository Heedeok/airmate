.class public Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;
.super Ljava/util/ArrayList;
.source "IpFilterRuleList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final serialVersionUID:J = -0x558b8189509c732cL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "rules"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->parseRules(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private parseRule(Ljava/lang/String;)V
    .registers 7
    .param p1, "rule"    # Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_b3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_b3

    .line 71
    :cond_a
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 72
    sget-object v0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 73
    sget-object v0, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error in ip filter rule:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 75
    :cond_38
    return-void

    .line 78
    :cond_39
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 79
    .local v0, "allow":Z
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_a6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x69

    if-ne v2, v3, :cond_51

    goto :goto_a6

    .line 81
    :cond_51
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_87

    .line 83
    :try_start_59
    new-instance v1, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/jboss/netty/handler/ipfilter/IpSubnetFilterRule;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/net/UnknownHostException; {:try_start_59 .. :try_end_66} :catch_67

    goto :goto_86

    .line 84
    :catch_67
    move-exception v1

    .line 85
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 86
    sget-object v2, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error parsing ip filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_86
    :goto_86
    goto :goto_b2

    .line 90
    :cond_87
    sget-object v1, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 91
    sget-object v1, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error in ip filter rule:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    goto :goto_b2

    .line 80
    :cond_a6
    :goto_a6
    new-instance v2, Lorg/jboss/netty/handler/ipfilter/PatternRule;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/jboss/netty/handler/ipfilter/PatternRule;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_b2
    :goto_b2
    return-void

    .line 69
    .end local v0    # "allow":Z
    :cond_b3
    :goto_b3
    return-void
.end method

.method private parseRules(Ljava/lang/String;)V
    .registers 8
    .param p1, "rules"    # Ljava/lang/String;

    .line 61
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "ruless":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 63
    .local v4, "rule":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/ipfilter/IpFilterRuleList;->parseRule(Ljava/lang/String;)V

    .line 62
    .end local v4    # "rule":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 65
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_17
    return-void
.end method
