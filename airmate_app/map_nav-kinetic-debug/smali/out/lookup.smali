.class public Llookup;
.super Ljava/lang/Object;
.source "lookup.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    const/4 v0, 0x1

    .line 36
    .local v0, "type":I
    const/4 v1, 0x0

    .line 37
    .local v1, "start":I
    array-length v2, p0

    const/4 v3, 0x2

    if-le v2, v3, :cond_24

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const-string v3, "-t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 38
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v0

    .line 39
    if-ltz v0, :cond_1c

    .line 41
    const/4 v1, 0x2

    goto :goto_24

    .line 40
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_24
    :goto_24
    move v2, v1

    .local v2, "i":I
    :goto_25
    array-length v3, p0

    if-ge v2, v3, :cond_3a

    .line 44
    new-instance v3, Lorg/xbill/DNS/Lookup;

    aget-object v4, p0, v2

    invoke-direct {v3, v4, v0}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 45
    .local v3, "l":Lorg/xbill/DNS/Lookup;
    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    .line 46
    aget-object v4, p0, v2

    invoke-static {v4, v3}, Llookup;->printAnswer(Ljava/lang/String;Lorg/xbill/DNS/Lookup;)V

    .line 43
    .end local v3    # "l":Lorg/xbill/DNS/Lookup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 48
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method

.method public static printAnswer(Ljava/lang/String;Lorg/xbill/DNS/Lookup;)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "lookup"    # Lorg/xbill/DNS/Lookup;

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getResult()I

    move-result v0

    .line 13
    .local v0, "result":I
    if-eqz v0, :cond_36

    .line 14
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getErrorString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 15
    :cond_36
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 16
    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getAliases()[Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 17
    .local v1, "aliases":[Lorg/xbill/DNS/Name;
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_69

    .line 18
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "# aliases: "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 19
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4b
    array-length v4, v1

    if-ge v2, v4, :cond_64

    .line 20
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 21
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_61

    .line 22
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 19
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 24
    .end local v2    # "i":I
    :cond_64
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 26
    :cond_69
    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getResult()I

    move-result v2

    if-nez v2, :cond_81

    .line 27
    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getAnswers()[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 28
    .local v2, "answers":[Lorg/xbill/DNS/Record;
    nop

    .local v3, "i":I
    :goto_74
    array-length v4, v2

    if-ge v3, v4, :cond_81

    .line 29
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 28
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 31
    .end local v2    # "answers":[Lorg/xbill/DNS/Record;
    .end local v3    # "i":I
    :cond_81
    return-void
.end method
