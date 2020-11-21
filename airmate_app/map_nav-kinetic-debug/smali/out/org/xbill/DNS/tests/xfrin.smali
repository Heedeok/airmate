.class public Lorg/xbill/DNS/tests/xfrin;
.super Ljava/lang/Object;
.source "xfrin.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 16
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "key":Lorg/xbill/DNS/TSIG;
    const/4 v1, -0x1

    .line 23
    .local v1, "ixfr_serial":I
    const/4 v2, 0x0

    .line 24
    .local v2, "server":Ljava/lang/String;
    const/16 v3, 0x35

    .line 25
    .local v3, "port":I
    const/4 v4, 0x0

    .line 28
    .local v4, "fallback":Z
    const/4 v5, 0x0

    move v13, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    const/4 v0, 0x0

    .line 29
    .local v0, "arg":I
    .local v2, "key":Lorg/xbill/DNS/TSIG;
    .local v3, "server":Ljava/lang/String;
    .local v4, "port":I
    .local v13, "fallback":Z
    :goto_c
    array-length v6, p0

    const/4 v7, 0x1

    if-ge v0, v6, :cond_a4

    .line 30
    aget-object v6, p0, v0

    const-string v8, "-i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 31
    add-int/lit8 v0, v0, 0x1

    aget-object v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 32
    if-gez v1, :cond_a1

    .line 33
    const-string v6, "invalid serial number"

    invoke-static {v6}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 34
    :cond_2b
    aget-object v6, p0, v0

    const-string v8, "-k"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 35
    add-int/lit8 v0, v0, 0x1

    aget-object v6, p0, v0

    .line 36
    .local v6, "s":Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 37
    .local v8, "index":I
    if-gez v8, :cond_46

    .line 38
    const-string v9, "invalid key"

    invoke-static {v9}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    .line 39
    :cond_46
    new-instance v9, Lorg/xbill/DNS/TSIG;

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v9

    .line 41
    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "index":I
    goto :goto_a1

    :cond_57
    aget-object v6, p0, v0

    const-string v8, "-s"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 42
    add-int/lit8 v0, v0, 0x1

    aget-object v3, p0, v0

    goto :goto_a1

    .line 43
    :cond_66
    aget-object v6, p0, v0

    const-string v8, "-p"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 44
    add-int/lit8 v0, v0, 0x1

    aget-object v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 45
    if-ltz v4, :cond_7f

    const v6, 0xffff

    if-le v4, v6, :cond_a1

    .line 46
    :cond_7f
    const-string v6, "invalid port"

    invoke-static {v6}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    goto :goto_a1

    .line 47
    :cond_85
    aget-object v6, p0, v0

    const-string v8, "-f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 48
    const/4 v6, 0x1

    .line 54
    move v13, v6

    goto :goto_a1

    .line 49
    :cond_92
    aget-object v6, p0, v0

    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 50
    const-string v6, "invalid option"

    invoke-static {v6}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    .line 54
    :cond_a1
    :goto_a1
    add-int/2addr v0, v7

    goto/16 :goto_c

    .line 56
    :cond_a4
    array-length v6, p0

    if-lt v0, v6, :cond_ac

    .line 57
    const-string v6, "no zone name specified"

    invoke-static {v6}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    .line 58
    :cond_ac
    aget-object v6, p0, v0

    invoke-static {v6}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v14

    .line 60
    .local v14, "zname":Lorg/xbill/DNS/Name;
    if-nez v3, :cond_fe

    .line 61
    new-instance v6, Lorg/xbill/DNS/Lookup;

    const/4 v8, 0x2

    invoke-direct {v6, v14, v8}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 62
    .local v6, "l":Lorg/xbill/DNS/Lookup;
    invoke-virtual {v6}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v8

    .line 63
    .local v8, "ns":[Lorg/xbill/DNS/Record;
    if-nez v8, :cond_dd

    .line 64
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "failed to look up NS record: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Lorg/xbill/DNS/Lookup;->getErrorString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 68
    :cond_dd
    aget-object v5, v8, v5

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->rdataToString()Ljava/lang/String;

    move-result-object v3

    .line 69
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "sending to server \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    .end local v6    # "l":Lorg/xbill/DNS/Lookup;
    .end local v8    # "ns":[Lorg/xbill/DNS/Record;
    :cond_fe
    if-ltz v1, :cond_10b

    .line 73
    int-to-long v7, v1

    move-object v6, v14

    move v9, v13

    move-object v10, v3

    move v11, v4

    move-object v12, v2

    invoke-static/range {v6 .. v12}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v5

    goto :goto_10f

    .line 76
    :cond_10b
    invoke-static {v14, v3, v4, v2}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v5

    .line 78
    .local v5, "xfrin":Lorg/xbill/DNS/ZoneTransferIn;
    :goto_10f
    invoke-virtual {v5}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;

    move-result-object v6

    .line 79
    .local v6, "response":Ljava/util/List;
    invoke-virtual {v5}, Lorg/xbill/DNS/ZoneTransferIn;->isAXFR()Z

    move-result v7

    if-eqz v7, :cond_140

    .line 80
    if-ltz v1, :cond_123

    .line 81
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "AXFR-like IXFR response"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12a

    .line 83
    :cond_123
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "AXFR response"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    :goto_12a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 85
    .local v7, "it":Ljava/util/Iterator;
    :goto_12e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13e

    .line 86
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_12e

    .line 87
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_13e
    goto/16 :goto_1c8

    :cond_140
    invoke-virtual {v5}, Lorg/xbill/DNS/ZoneTransferIn;->isIXFR()Z

    move-result v7

    if-eqz v7, :cond_1bb

    .line 88
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "IXFR response"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 90
    .restart local v7    # "it":Ljava/util/Iterator;
    :goto_151
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1ba

    .line 92
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 93
    .local v8, "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "delta from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v11, v8, Lorg/xbill/DNS/ZoneTransferIn$Delta;->start:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v11, v8, Lorg/xbill/DNS/ZoneTransferIn$Delta;->end:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "deletes"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    iget-object v9, v8, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 97
    .local v9, "it2":Ljava/util/Iterator;
    :goto_18c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19c

    .line 98
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_18c

    .line 99
    :cond_19c
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "adds"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    iget-object v10, v8, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 101
    :goto_1a9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b9

    .line 102
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1a9

    .line 103
    .end local v8    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    .end local v9    # "it2":Ljava/util/Iterator;
    :cond_1b9
    goto :goto_151

    .line 104
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_1ba
    goto :goto_1c8

    :cond_1bb
    invoke-virtual {v5}, Lorg/xbill/DNS/ZoneTransferIn;->isCurrent()Z

    move-result v7

    if-eqz v7, :cond_1c8

    .line 105
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "up to date"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    :cond_1c8
    :goto_1c8
    return-void
.end method

.method private static usage(Ljava/lang/String;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: xfrin [-i serial] [-k keyname/secret] [-s server] [-p port] [-f] zone"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 16
    return-void
.end method
