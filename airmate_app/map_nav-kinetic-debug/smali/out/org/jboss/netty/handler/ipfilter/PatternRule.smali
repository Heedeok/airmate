.class public Lorg/jboss/netty/handler/ipfilter/PatternRule;
.super Ljava/lang/Object;
.source "PatternRule.java"

# interfaces
.implements Lorg/jboss/netty/handler/ipfilter/IpFilterRule;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/handler/ipfilter/IpFilterRule;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private ipPattern:Ljava/util/regex/Pattern;

.field private isAllowRule:Z

.field private localhost:Z

.field private namePattern:Ljava/util/regex/Pattern;

.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lorg/jboss/netty/handler/ipfilter/PatternRule;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 4
    .param p1, "allow"    # Z
    .param p2, "pattern"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    .line 70
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    .line 71
    iput-object p2, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    .line 72
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->parse(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private static addRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "rule"    # Ljava/lang/String;

    .line 139
    if-eqz p1, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_52

    .line 142
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_20

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 145
    :cond_20
    const-string v0, "\\."

    const-string v1, "\\\\."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    const-string v0, "\\*"

    const-string v1, ".*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    const-string v0, "\\?"

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    return-object p0

    .line 140
    :cond_52
    :goto_52
    return-object p0
.end method

.method private static isLocalhost(Ljava/net/InetAddress;)Z
    .registers 9
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 154
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_9} :catch_d

    if-eqz v1, :cond_c

    .line 155
    return v0

    .line 161
    :cond_c
    goto :goto_1d

    .line 157
    :catch_d
    move-exception v1

    .line 158
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 159
    sget-object v2, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "error getting ip of localhost"

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    :try_start_1e
    const-string v2, "127.0.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 164
    .local v2, "addrs":[Ljava/net/InetAddress;
    move-object v3, v2

    .local v3, "arr$":[Ljava/net/InetAddress;
    array-length v4, v3

    const/4 v5, 0x0

    .local v4, "len$":I
    .local v5, "i$":I
    :goto_27
    if-ge v5, v4, :cond_35

    aget-object v6, v3, v5

    .line 165
    .local v6, "addr":Ljava/net/InetAddress;
    invoke-virtual {v6, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2f
    .catch Ljava/net/UnknownHostException; {:try_start_1e .. :try_end_2f} :catch_36

    if-eqz v7, :cond_32

    .line 166
    return v0

    .line 164
    .end local v6    # "addr":Ljava/net/InetAddress;
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 173
    .end local v2    # "addrs":[Ljava/net/InetAddress;
    .end local v3    # "arr$":[Ljava/net/InetAddress;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_35
    goto :goto_46

    .line 169
    :catch_36
    move-exception v0

    .line 170
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 171
    sget-object v2, Lorg/jboss/netty/handler/ipfilter/PatternRule;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "error getting ip of localhost"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_46
    :goto_46
    return v1
.end method

.method private parse(Ljava/lang/String;)V
    .registers 11
    .param p1, "pattern"    # Ljava/lang/String;

    .line 112
    if-nez p1, :cond_3

    .line 113
    return-void

    .line 116
    :cond_3
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "acls":[Ljava/lang/String;
    const-string v1, ""

    .line 119
    .local v1, "ip":Ljava/lang/String;
    const-string v2, ""

    .line 120
    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    .local v3, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_10
    if-ge v5, v4, :cond_49

    aget-object v6, v3, v5

    .line 121
    .local v6, "c":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 122
    const-string v7, "n:localhost"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 123
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->localhost:Z

    goto :goto_46

    .line 124
    :cond_24
    const-string v7, "n:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_36

    .line 125
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->addRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    .line 126
    :cond_36
    const-string v7, "i:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 127
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->addRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .end local v6    # "c":Ljava/lang/String;
    :cond_46
    :goto_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 130
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_55

    .line 131
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->ipPattern:Ljava/util/regex/Pattern;

    .line 133
    :cond_55
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_61

    .line 134
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->namePattern:Ljava/util/regex/Pattern;

    .line 136
    :cond_61
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 179
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 180
    return v0

    .line 182
    :cond_4
    instance-of v1, p1, Lorg/jboss/netty/handler/ipfilter/PatternRule;

    if-nez v1, :cond_9

    .line 183
    return v0

    .line 185
    :cond_9
    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/handler/ipfilter/PatternRule;

    .line 186
    .local v1, "p":Lorg/jboss/netty/handler/ipfilter/PatternRule;
    invoke-virtual {v1}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    if-nez v2, :cond_17

    .line 187
    return v0

    .line 189
    :cond_17
    iget-object v2, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, v1, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_21
    iget-object v2, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    if-eqz v2, :cond_30

    .line 193
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 195
    :cond_30
    return v0
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .registers 5
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 93
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->localhost:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 94
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isLocalhost(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 95
    return v1

    .line 98
    :cond_c
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->ipPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_21

    .line 99
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->ipPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 100
    return v1

    .line 103
    :cond_21
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->namePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_36

    .line 104
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->namePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 105
    return v1

    .line 108
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowRule()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    return v0
.end method

.method public isDenyRule()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/PatternRule;->isAllowRule:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
