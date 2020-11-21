.class public Ldig;
.super Ljava/lang/Object;
.source "dig.java"


# static fields
.field static dclass:I

.field static name:Lorg/xbill/DNS/Name;

.field static type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const/4 v0, 0x0

    sput-object v0, Ldig;->name:Lorg/xbill/DNS/Name;

    .line 12
    const/4 v0, 0x1

    sput v0, Ldig;->type:I

    sput v0, Ldig;->dclass:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doAXFR(Lorg/xbill/DNS/Message;)V
    .registers 6
    .param p0, "response"    # Lorg/xbill/DNS/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "; java dig 0.0 <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Ldig;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " axfr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ";; TSIG "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3f

    .line 36
    :cond_38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 41
    return-void

    .line 44
    :cond_4b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 45
    .local v1, "records":[Lorg/xbill/DNS/Record;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    array-length v3, v1

    if-ge v2, v3, :cond_5e

    .line 46
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 48
    .end local v2    # "i":I
    :cond_5e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ";; done ("

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 49
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(I)V

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " records, "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(I)V

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " additional)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method static doQuery(Lorg/xbill/DNS/Message;J)V
    .registers 6
    .param p0, "response"    # Lorg/xbill/DNS/Message;
    .param p1, "ms"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "; java dig 0.0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ";; Query time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 17
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 61
    .local v2, "server":Ljava/lang/String;
    const/4 v3, 0x0

    .line 62
    .local v3, "res":Lorg/xbill/DNS/SimpleResolver;
    const/4 v4, 0x0

    .line 65
    .local v4, "printQuery":Z
    array-length v0, v1

    const/4 v5, 0x1

    if-ge v0, v5, :cond_c

    .line 66
    invoke-static {}, Ldig;->usage()V

    .line 70
    :cond_c
    const/4 v6, 0x0

    .line 71
    .local v6, "arg":I
    :try_start_d
    aget-object v0, v1, v6

    const-string v7, "@"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_15} :catch_185

    if-eqz v0, :cond_25

    .line 72
    add-int/lit8 v7, v6, 0x1

    .local v7, "arg":I
    :try_start_19
    aget-object v0, v1, v6

    .end local v6    # "arg":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_1f} :catch_22

    move-object v2, v0

    .line 74
    move v6, v7

    goto :goto_25

    .line 184
    :catch_22
    move-exception v0

    goto/16 :goto_187

    .line 74
    .end local v7    # "arg":I
    .restart local v6    # "arg":I
    :cond_25
    :goto_25
    if-eqz v2, :cond_2e

    .line 75
    :try_start_27
    new-instance v0, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v0, v2}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 79
    :goto_2c
    move-object v3, v0

    goto :goto_34

    .line 77
    :cond_2e
    new-instance v0, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v0}, Lorg/xbill/DNS/SimpleResolver;-><init>()V
    :try_end_33
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_27 .. :try_end_33} :catch_185

    goto :goto_2c

    .line 79
    :goto_34
    add-int/lit8 v7, v6, 0x1

    .restart local v7    # "arg":I
    :try_start_36
    aget-object v0, v1, v6

    .end local v6    # "arg":I
    move-object v6, v0

    .line 80
    .local v6, "nameString":Ljava/lang/String;
    const-string v0, "-x"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_36 .. :try_end_3f} :catch_22

    if-eqz v0, :cond_5e

    .line 81
    add-int/lit8 v10, v7, 0x1

    .local v10, "arg":I
    :try_start_43
    aget-object v0, v1, v7

    .end local v7    # "arg":I
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Ldig;->name:Lorg/xbill/DNS/Name;

    .line 82
    const/16 v0, 0xc

    sput v0, Ldig;->type:I

    .line 83
    sput v5, Ldig;->dclass:I
    :try_end_51
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_43 .. :try_end_51} :catch_5a

    .line 100
    move v7, v10

    .local v0, "addrStr":Ljava/lang/String;
    .restart local v7    # "arg":I
    .local v10, "portStr":Ljava/lang/String;
    .local v11, "addr":Ljava/net/InetAddress;
    .local v12, "key":Ljava/lang/String;
    .local v13, "ednsStr":Ljava/lang/String;
    .local v14, "port":I
    .local v15, "edns":I
    :goto_52
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_89

    .line 184
    .end local v0    # "addrStr":Ljava/lang/String;
    .end local v6    # "nameString":Ljava/lang/String;
    .end local v7    # "arg":I
    .end local v11    # "addr":Ljava/net/InetAddress;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "ednsStr":Ljava/lang/String;
    .end local v14    # "port":I
    .end local v15    # "edns":I
    .local v10, "arg":I
    :catch_5a
    move-exception v0

    move v7, v10

    goto/16 :goto_187

    .line 86
    .end local v10    # "arg":I
    .restart local v6    # "nameString":Ljava/lang/String;
    .restart local v7    # "arg":I
    :cond_5e
    :try_start_5e
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v6, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Ldig;->name:Lorg/xbill/DNS/Name;

    .line 87
    aget-object v0, v1, v7

    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldig;->type:I

    .line 88
    sget v0, Ldig;->type:I

    if-gez v0, :cond_75

    .line 89
    sput v5, Ldig;->type:I

    goto :goto_77

    .line 91
    :cond_75
    add-int/lit8 v7, v7, 0x1

    .line 93
    :goto_77
    aget-object v0, v1, v7

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldig;->dclass:I

    .line 94
    sget v0, Ldig;->dclass:I

    if-gez v0, :cond_86

    .line 95
    sput v5, Ldig;->dclass:I

    goto :goto_52

    .line 97
    :cond_86
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 100
    .restart local v0    # "addrStr":Ljava/lang/String;
    .local v10, "portStr":Ljava/lang/String;
    .restart local v11    # "addr":Ljava/net/InetAddress;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "ednsStr":Ljava/lang/String;
    .restart local v14    # "port":I
    .restart local v15    # "edns":I
    :goto_89
    aget-object v8, v1, v7

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_184

    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v5, :cond_184

    .line 101
    aget-object v8, v1, v7

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x2

    sparse-switch v8, :sswitch_data_1c8

    .line 177
    const/4 v5, 0x0

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto/16 :goto_174

    .line 144
    :sswitch_ab
    invoke-virtual {v3, v5}, Lorg/xbill/DNS/SimpleResolver;->setTCP(Z)V

    .line 145
    goto :goto_b1

    .line 173
    :sswitch_af
    const/4 v4, 0x1

    .line 174
    nop

    .line 180
    :goto_b1
    const/4 v8, 0x0

    goto/16 :goto_180

    .line 105
    .end local v10    # "portStr":Ljava/lang/String;
    .end local v14    # "port":I
    :sswitch_b4
    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_c3

    .line 106
    aget-object v8, v1, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_c7

    .line 108
    :cond_c3
    add-int/lit8 v7, v7, 0x1

    aget-object v8, v1, v7

    .line 109
    .local v8, "portStr":Ljava/lang/String;
    :goto_c7
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 110
    .local v9, "port":I
    if-ltz v9, :cond_d9

    const/high16 v10, 0x10000

    if-le v9, v10, :cond_d2

    .end local v0    # "addrStr":Ljava/lang/String;
    .end local v11    # "addr":Ljava/net/InetAddress;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "ednsStr":Ljava/lang/String;
    .end local v15    # "edns":I
    goto :goto_d9

    .line 114
    .restart local v0    # "addrStr":Ljava/lang/String;
    .restart local v11    # "addr":Ljava/net/InetAddress;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "ednsStr":Ljava/lang/String;
    .restart local v15    # "edns":I
    :cond_d2
    invoke-virtual {v3, v9}, Lorg/xbill/DNS/SimpleResolver;->setPort(I)V

    .line 115
    nop

    .line 180
    move-object v10, v8

    move v14, v9

    goto :goto_b1

    .line 111
    .end local v0    # "addrStr":Ljava/lang/String;
    .end local v11    # "addr":Ljava/net/InetAddress;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "ednsStr":Ljava/lang/String;
    .end local v15    # "edns":I
    :cond_d9
    :goto_d9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Invalid port"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    return-void

    .line 136
    .end local v8    # "portStr":Ljava/lang/String;
    .end local v9    # "port":I
    .restart local v0    # "addrStr":Ljava/lang/String;
    .restart local v10    # "portStr":Ljava/lang/String;
    .restart local v11    # "addr":Ljava/net/InetAddress;
    .restart local v13    # "ednsStr":Ljava/lang/String;
    .restart local v14    # "port":I
    .restart local v15    # "edns":I
    :sswitch_e1
    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_f0

    .line 137
    aget-object v8, v1, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f4

    .line 139
    :cond_f0
    add-int/lit8 v7, v7, 0x1

    aget-object v8, v1, v7

    .line 140
    .local v8, "key":Ljava/lang/String;
    :goto_f4
    invoke-static {v8}, Lorg/xbill/DNS/TSIG;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/xbill/DNS/SimpleResolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    .line 141
    nop

    .line 180
    move-object v12, v8

    goto :goto_b1

    .line 148
    .end local v8    # "key":Ljava/lang/String;
    .restart local v12    # "key":Ljava/lang/String;
    :sswitch_fe
    invoke-virtual {v3, v5}, Lorg/xbill/DNS/SimpleResolver;->setIgnoreTruncation(Z)V

    .line 149
    goto :goto_b1

    .line 154
    .end local v13    # "ednsStr":Ljava/lang/String;
    .end local v15    # "edns":I
    :sswitch_102
    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_111

    .line 155
    aget-object v8, v1, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_115

    .line 157
    :cond_111
    add-int/lit8 v7, v7, 0x1

    aget-object v8, v1, v7

    .line 158
    .local v8, "ednsStr":Ljava/lang/String;
    :goto_115
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 159
    .local v9, "edns":I
    if-ltz v9, :cond_125

    if-le v9, v5, :cond_11e

    goto :goto_125

    .line 165
    :cond_11e
    invoke-virtual {v3, v9}, Lorg/xbill/DNS/SimpleResolver;->setEDNS(I)V

    .line 166
    nop

    .line 180
    move-object v13, v8

    move v15, v9

    goto :goto_b1

    .line 160
    :cond_125
    :goto_125
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Unsupported EDNS level: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    return-void

    .line 169
    .end local v8    # "ednsStr":Ljava/lang/String;
    .end local v9    # "edns":I
    .restart local v13    # "ednsStr":Ljava/lang/String;
    .restart local v15    # "edns":I
    :sswitch_13c
    const v8, 0x8000

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v5, v8, v9}, Lorg/xbill/DNS/SimpleResolver;->setEDNS(IIILjava/util/List;)V

    .line 170
    nop

    .line 180
    move-object v8, v9

    goto :goto_180

    .line 119
    .end local v0    # "addrStr":Ljava/lang/String;
    :sswitch_147
    const/4 v5, 0x0

    const/4 v8, 0x0

    aget-object v0, v1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v9, :cond_158

    .line 120
    aget-object v0, v1, v7

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15c

    .line 122
    :cond_158
    add-int/lit8 v7, v7, 0x1

    aget-object v0, v1, v7
    :try_end_15c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5e .. :try_end_15c} :catch_22

    .restart local v0    # "addrStr":Ljava/lang/String;
    :goto_15c
    move-object v9, v0

    .line 125
    .end local v0    # "addrStr":Ljava/lang/String;
    .local v9, "addrStr":Ljava/lang/String;
    :try_start_15d
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_161} :catch_169
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_15d .. :try_end_161} :catch_22

    .line 130
    .end local v11    # "addr":Ljava/net/InetAddress;
    .local v0, "addr":Ljava/net/InetAddress;
    nop

    .line 131
    :try_start_162
    invoke-virtual {v3, v0}, Lorg/xbill/DNS/SimpleResolver;->setLocalAddress(Ljava/net/InetAddress;)V

    .line 132
    nop

    .line 180
    move-object v11, v0

    move-object v0, v9

    goto :goto_180

    .line 127
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "ednsStr":Ljava/lang/String;
    .end local v15    # "edns":I
    .restart local v11    # "addr":Ljava/net/InetAddress;
    :catch_169
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Invalid address"

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    return-void

    .line 177
    .end local v9    # "addrStr":Ljava/lang/String;
    .local v0, "addrStr":Ljava/lang/String;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "ednsStr":Ljava/lang/String;
    .restart local v15    # "edns":I
    :goto_174
    const-string v5, "Invalid option: "

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 178
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v9, v1, v7

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_180
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_162 .. :try_end_180} :catch_22

    .line 180
    :goto_180
    const/4 v5, 0x1

    add-int/2addr v7, v5

    goto/16 :goto_89

    .line 187
    .end local v0    # "addrStr":Ljava/lang/String;
    .end local v6    # "nameString":Ljava/lang/String;
    .end local v10    # "portStr":Ljava/lang/String;
    .end local v11    # "addr":Ljava/net/InetAddress;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "ednsStr":Ljava/lang/String;
    .end local v14    # "port":I
    .end local v15    # "edns":I
    :cond_184
    goto :goto_18e

    .line 184
    .end local v7    # "arg":I
    .local v6, "arg":I
    :catch_185
    move-exception v0

    move v7, v6

    .line 185
    .end local v6    # "arg":I
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v7    # "arg":I
    :goto_187
    sget-object v5, Ldig;->name:Lorg/xbill/DNS/Name;

    if-nez v5, :cond_18e

    .line 186
    invoke-static {}, Ldig;->usage()V

    .line 188
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_18e
    :goto_18e
    if-nez v3, :cond_196

    .line 189
    new-instance v0, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v0}, Lorg/xbill/DNS/SimpleResolver;-><init>()V

    move-object v3, v0

    .line 191
    :cond_196
    sget-object v0, Ldig;->name:Lorg/xbill/DNS/Name;

    sget v5, Ldig;->type:I

    sget v6, Ldig;->dclass:I

    invoke-static {v0, v5, v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 192
    .local v0, "rec":Lorg/xbill/DNS/Record;
    invoke-static {v0}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v5

    .line 193
    .local v5, "query":Lorg/xbill/DNS/Message;
    if-eqz v4, :cond_1ab

    .line 194
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 195
    :cond_1ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 196
    .local v8, "startTime":J
    invoke-virtual {v3, v5}, Lorg/xbill/DNS/SimpleResolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v6

    .line 197
    .local v6, "response":Lorg/xbill/DNS/Message;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 199
    .local v10, "endTime":J
    sget v12, Ldig;->type:I

    const/16 v13, 0xfc

    if-ne v12, v13, :cond_1c1

    .line 200
    invoke-static {v6}, Ldig;->doAXFR(Lorg/xbill/DNS/Message;)V

    goto :goto_1c7

    .line 202
    :cond_1c1
    const/4 v12, 0x0

    sub-long v12, v10, v8

    invoke-static {v6, v12, v13}, Ldig;->doQuery(Lorg/xbill/DNS/Message;J)V

    .line 203
    :goto_1c7
    return-void

    :sswitch_data_1c8
    .sparse-switch
        0x62 -> :sswitch_147
        0x64 -> :sswitch_13c
        0x65 -> :sswitch_102
        0x69 -> :sswitch_fe
        0x6b -> :sswitch_e1
        0x70 -> :sswitch_b4
        0x71 -> :sswitch_af
        0x74 -> :sswitch_ab
    .end sparse-switch
.end method

.method static usage()V
    .registers 2

    .line 16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: dig [@server] name [<type>] [<class>] [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 19
    return-void
.end method
