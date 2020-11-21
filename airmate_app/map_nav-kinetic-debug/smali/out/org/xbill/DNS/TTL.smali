.class public final Lorg/xbill/DNS/TTL;
.super Ljava/lang/Object;
.source "TTL.java"


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffL


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(J)V
    .registers 5
    .param p0, "i"    # J

    .line 22
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_e

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_e

    .line 24
    return-void

    .line 23
    :cond_e
    new-instance v0, Lorg/xbill/DNS/InvalidTTLException;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/InvalidTTLException;-><init>(J)V

    throw v0
.end method

.method public static format(J)Ljava/lang/String;
    .registers 18
    .param p0, "ttl"    # J

    .line 88
    invoke-static/range {p0 .. p1}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 89
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v3, 0x3c

    rem-long v5, p0, v3

    .line 92
    .local v5, "secs":J
    div-long v0, p0, v3

    .line 93
    .end local p0    # "ttl":J
    .local v0, "ttl":J
    rem-long v7, v0, v3

    .line 94
    .local v7, "mins":J
    div-long/2addr v0, v3

    .line 95
    const-wide/16 v3, 0x18

    rem-long v9, v0, v3

    .line 96
    .local v9, "hours":J
    div-long/2addr v0, v3

    .line 97
    const-wide/16 v3, 0x7

    rem-long v11, v0, v3

    .line 98
    .local v11, "days":J
    div-long/2addr v0, v3

    .line 99
    move-wide v3, v0

    .line 100
    .local v3, "weeks":J
    const-wide/16 v13, 0x0

    cmp-long v15, v3, v13

    if-lez v15, :cond_36

    .line 101
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v13, "W"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_36
    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_50

    .line 103
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v14, "D"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_50
    const-wide/16 v13, 0x0

    cmp-long v15, v9, v13

    if-lez v15, :cond_6a

    .line 105
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v14, "H"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_6a
    const-wide/16 v13, 0x0

    cmp-long v15, v7, v13

    if-lez v15, :cond_84

    .line 107
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v14, "M"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_84
    const-wide/16 v13, 0x0

    cmp-long v15, v5, v13

    if-gtz v15, :cond_9a

    cmp-long v15, v3, v13

    if-nez v15, :cond_ae

    cmp-long v15, v11, v13

    if-nez v15, :cond_ae

    cmp-long v15, v9, v13

    if-nez v15, :cond_ae

    cmp-long v15, v7, v13

    if-nez v15, :cond_ae

    .line 109
    :cond_9a
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v14, "S"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_ae
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static parse(Ljava/lang/String;Z)J
    .registers 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "clamp"    # Z

    .line 38
    if-eqz p0, :cond_a1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .local v1, "value":J
    const-wide/16 v3, 0x0

    .line 42
    .local v3, "ttl":J
    nop

    .local v0, "i":I
    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const-wide v6, 0xffffffffL

    if-ge v0, v5, :cond_83

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 44
    .local v5, "c":C
    move-wide v8, v1

    .line 45
    .local v8, "oldvalue":J
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 46
    const-wide/16 v6, 0xa

    mul-long v6, v6, v1

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 47
    .end local v1    # "value":J
    .local v6, "value":J
    cmp-long v1, v6, v8

    if-ltz v1, :cond_3e

    .line 42
    .end local v5    # "c":C
    .end local v8    # "oldvalue":J
    move-wide v1, v6

    goto :goto_7a

    .line 48
    .restart local v5    # "c":C
    .restart local v8    # "oldvalue":J
    :cond_3e
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 50
    .end local v6    # "value":J
    .restart local v1    # "value":J
    :cond_44
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    const/16 v11, 0x44

    const-wide/16 v12, 0x3c

    if-eq v10, v11, :cond_69

    const/16 v11, 0x48

    if-eq v10, v11, :cond_6d

    const/16 v11, 0x4d

    if-eq v10, v11, :cond_6f

    const/16 v11, 0x53

    if-eq v10, v11, :cond_71

    const/16 v11, 0x57

    if-ne v10, v11, :cond_63

    .line 51
    const-wide/16 v10, 0x7

    mul-long v1, v1, v10

    goto :goto_69

    .line 56
    :cond_63
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6}, Ljava/lang/NumberFormatException;-><init>()V

    throw v6

    .line 52
    :cond_69
    :goto_69
    const-wide/16 v10, 0x18

    mul-long v1, v1, v10

    .line 53
    :cond_6d
    mul-long v1, v1, v12

    .line 54
    :cond_6f
    mul-long v1, v1, v12

    .line 55
    :cond_71
    nop

    .line 58
    const/4 v10, 0x0

    add-long/2addr v3, v1

    .line 59
    const-wide/16 v1, 0x0

    .line 60
    cmp-long v10, v3, v6

    if-gtz v10, :cond_7d

    .line 42
    .end local v5    # "c":C
    .end local v8    # "oldvalue":J
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 61
    .restart local v5    # "c":C
    .restart local v8    # "oldvalue":J
    :cond_7d
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6}, Ljava/lang/NumberFormatException;-><init>()V

    throw v6

    .line 64
    .end local v0    # "i":I
    .end local v5    # "c":C
    .end local v8    # "oldvalue":J
    :cond_83
    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-nez v0, :cond_8a

    .line 65
    move-wide v3, v1

    .line 67
    :cond_8a
    cmp-long v0, v3, v6

    if-gtz v0, :cond_9b

    .line 69
    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-lez v0, :cond_9a

    if-eqz p1, :cond_9a

    .line 70
    const-wide/32 v3, 0x7fffffff

    .line 71
    :cond_9a
    return-wide v3

    .line 68
    :cond_9b
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 39
    .end local v1    # "value":J
    .end local v3    # "ttl":J
    :cond_a1
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public static parseTTL(Ljava/lang/String;)J
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/TTL;->parse(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method
