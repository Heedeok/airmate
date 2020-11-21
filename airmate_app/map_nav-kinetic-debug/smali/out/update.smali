.class public Lupdate;
.super Ljava/lang/Object;
.source "update.java"


# instance fields
.field defaultClass:I

.field defaultTTL:J

.field log:Ljava/io/PrintStream;

.field query:Lorg/xbill/DNS/Message;

.field res:Lorg/xbill/DNS/Resolver;

.field response:Lorg/xbill/DNS/Message;

.field server:Ljava/lang/String;

.field zone:Lorg/xbill/DNS/Name;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 16
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lupdate;->server:Ljava/lang/String;

    .line 15
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    iput-object v1, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    .line 17
    const/4 v1, 0x1

    iput v1, p0, Lupdate;->defaultClass:I

    .line 18
    iput-object v0, p0, Lupdate;->log:Ljava/io/PrintStream;

    .line 36
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 37
    .local v2, "inputs":Ljava/util/List;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 39
    .local v3, "istreams":Ljava/util/List;
    invoke-virtual {p0}, Lupdate;->newMessage()Lorg/xbill/DNS/Message;

    move-result-object v4

    iput-object v4, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    .line 41
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .local v5, "br":Ljava/io/BufferedReader;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_2f
    move-object v6, v5

    move-object v5, v0

    .line 52
    .local v5, "line":Ljava/lang/String;
    .local v6, "br":Ljava/io/BufferedReader;
    :cond_31
    const/4 v7, 0x0

    :try_start_32
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;

    .line 53
    .local v8, "is":Ljava/io/InputStream;
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/BufferedReader;

    move-object v6, v9

    .line 55
    sget-object v9, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-ne v8, v9, :cond_4a

    .line 56
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "> "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    :cond_4a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 59
    if-nez v5, :cond_61

    .line 60
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 61
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_61

    .line 64
    return-void

    .line 66
    .end local v8    # "is":Ljava/io/InputStream;
    :cond_61
    if-eqz v5, :cond_31

    .line 68
    iget-object v8, p0, Lupdate;->log:Ljava/io/PrintStream;

    if-eqz v8, :cond_7d

    .line 69
    iget-object v8, p0, Lupdate;->log:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    :cond_7d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_329

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_8d

    goto/16 :goto_329

    .line 75
    :cond_8d
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_9a

    .line 76
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 78
    :cond_9a
    new-instance v8, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v8, v5}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 79
    .local v8, "st":Lorg/xbill/DNS/Tokenizer;
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v9

    .line 81
    .local v9, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v9}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 82
    goto/16 :goto_34e

    .line 83
    :cond_ab
    iget-object v10, v9, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 85
    .local v10, "operation":Ljava/lang/String;
    const-string v11, "server"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_db

    .line 86
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lupdate;->server:Ljava/lang/String;

    .line 87
    new-instance v7, Lorg/xbill/DNS/SimpleResolver;

    iget-object v11, p0, Lupdate;->server:Ljava/lang/String;

    invoke-direct {v7, v11}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    .line 88
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v7

    .line 89
    .end local v9    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .local v7, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v7}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v9

    if-eqz v9, :cond_34d

    .line 90
    iget-object v9, v7, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 91
    .local v9, "portstr":Ljava/lang/String;
    iget-object v11, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v12

    invoke-interface {v11, v12}, Lorg/xbill/DNS/Resolver;->setPort(I)V

    .line 92
    .end local v9    # "portstr":Ljava/lang/String;
    goto/16 :goto_34d

    .line 95
    .end local v7    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .local v9, "token":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_db
    const-string v11, "key"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_104

    .line 96
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "keyname":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v11

    .line 98
    .local v11, "keydata":Ljava/lang/String;
    iget-object v12, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    if-nez v12, :cond_f8

    .line 99
    new-instance v12, Lorg/xbill/DNS/SimpleResolver;

    iget-object v13, p0, Lupdate;->server:Ljava/lang/String;

    invoke-direct {v12, v13}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    .line 100
    :cond_f8
    iget-object v12, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    new-instance v13, Lorg/xbill/DNS/TSIG;

    invoke-direct {v13, v7, v11}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Lorg/xbill/DNS/Resolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    .line 101
    .end local v7    # "keyname":Ljava/lang/String;
    .end local v11    # "keydata":Ljava/lang/String;
    goto/16 :goto_34d

    .line 103
    :cond_104
    const-string v11, "edns"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_124

    .line 104
    iget-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    if-nez v7, :cond_119

    .line 105
    new-instance v7, Lorg/xbill/DNS/SimpleResolver;

    iget-object v11, p0, Lupdate;->server:Ljava/lang/String;

    invoke-direct {v7, v11}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    .line 106
    :cond_119
    iget-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v11

    invoke-interface {v7, v11}, Lorg/xbill/DNS/Resolver;->setEDNS(I)V

    goto/16 :goto_34d

    .line 109
    :cond_124
    const-string v11, "port"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_144

    .line 110
    iget-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    if-nez v7, :cond_139

    .line 111
    new-instance v7, Lorg/xbill/DNS/SimpleResolver;

    iget-object v11, p0, Lupdate;->server:Ljava/lang/String;

    invoke-direct {v7, v11}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    .line 112
    :cond_139
    iget-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v11

    invoke-interface {v7, v11}, Lorg/xbill/DNS/Resolver;->setPort(I)V

    goto/16 :goto_34d

    .line 115
    :cond_144
    const-string v11, "tcp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_160

    .line 116
    iget-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    if-nez v7, :cond_159

    .line 117
    new-instance v7, Lorg/xbill/DNS/SimpleResolver;

    iget-object v11, p0, Lupdate;->server:Ljava/lang/String;

    invoke-direct {v7, v11}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    .line 118
    :cond_159
    iget-object v7, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    invoke-interface {v7, v1}, Lorg/xbill/DNS/Resolver;->setTCP(Z)V

    goto/16 :goto_34d

    .line 121
    :cond_160
    const-string v11, "class"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18b

    .line 122
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "classStr":Ljava/lang/String;
    invoke-static {v7}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v11

    .line 124
    .local v11, "newClass":I
    if-lez v11, :cond_175

    .line 125
    iput v11, p0, Lupdate;->defaultClass:I

    goto :goto_189

    .line 127
    :cond_175
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Invalid class "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lupdate;->print(Ljava/lang/Object;)V

    .line 128
    .end local v7    # "classStr":Ljava/lang/String;
    .end local v11    # "newClass":I
    :goto_189
    goto/16 :goto_34d

    .line 130
    :cond_18b
    const-string v11, "ttl"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19b

    .line 131
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v11

    iput-wide v11, p0, Lupdate;->defaultTTL:J

    goto/16 :goto_34d

    .line 133
    :cond_19b
    const-string v11, "origin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_320

    const-string v11, "zone"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ad

    goto/16 :goto_320

    .line 139
    :cond_1ad
    const-string v11, "require"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ba

    .line 140
    invoke-virtual {p0, v8}, Lupdate;->doRequire(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_34d

    .line 142
    :cond_1ba
    const-string v11, "prohibit"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c7

    .line 143
    invoke-virtual {p0, v8}, Lupdate;->doProhibit(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_34d

    .line 145
    :cond_1c7
    const-string v11, "add"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d4

    .line 146
    invoke-virtual {p0, v8}, Lupdate;->doAdd(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_34d

    .line 148
    :cond_1d4
    const-string v11, "delete"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e1

    .line 149
    invoke-virtual {p0, v8}, Lupdate;->doDelete(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_34d

    .line 151
    :cond_1e1
    const-string v11, "glue"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ee

    .line 152
    invoke-virtual {p0, v8}, Lupdate;->doGlue(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_34d

    .line 154
    :cond_1ee
    const-string v11, "help"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_30c

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_200

    goto/16 :goto_30c

    .line 164
    :cond_200
    const-string v11, "echo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_216

    .line 165
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lupdate;->print(Ljava/lang/Object;)V

    goto/16 :goto_34d

    .line 167
    :cond_216
    const-string v11, "send"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_229

    .line 168
    invoke-virtual {p0}, Lupdate;->sendUpdate()V

    .line 169
    invoke-virtual {p0}, Lupdate;->newMessage()Lorg/xbill/DNS/Message;

    move-result-object v7

    iput-object v7, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    goto/16 :goto_34d

    .line 172
    :cond_229
    const-string v11, "show"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_238

    .line 173
    iget-object v7, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    invoke-virtual {p0, v7}, Lupdate;->print(Ljava/lang/Object;)V

    goto/16 :goto_34d

    .line 176
    :cond_238
    const-string v11, "clear"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_248

    .line 177
    invoke-virtual {p0}, Lupdate;->newMessage()Lorg/xbill/DNS/Message;

    move-result-object v7

    iput-object v7, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    goto/16 :goto_34d

    .line 179
    :cond_248
    const-string v11, "query"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_255

    .line 180
    invoke-virtual {p0, v8}, Lupdate;->doQuery(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_34d

    .line 182
    :cond_255
    const-string v11, "quit"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2eb

    const-string v11, "q"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_267

    goto/16 :goto_2eb

    .line 196
    :cond_267
    const-string v7, "file"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_274

    .line 197
    invoke-virtual {p0, v8, v2, v3}, Lupdate;->doFile(Lorg/xbill/DNS/Tokenizer;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_34d

    .line 199
    :cond_274
    const-string v7, "log"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_281

    .line 200
    invoke-virtual {p0, v8}, Lupdate;->doLog(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_34d

    .line 202
    :cond_281
    const-string v7, "assert"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_290

    .line 203
    invoke-virtual {p0, v8}, Lupdate;->doAssert(Lorg/xbill/DNS/Tokenizer;)Z

    move-result v7

    if-nez v7, :cond_34d

    .line 204
    return-void

    .line 207
    :cond_290
    const-string v7, "sleep"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a3

    .line 208
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->getUInt32()J

    move-result-wide v11
    :try_end_29c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_32 .. :try_end_29c} :catch_343
    .catch Ljava/io/InterruptedIOException; {:try_start_32 .. :try_end_29c} :catch_33a
    .catch Ljava/net/SocketException; {:try_start_32 .. :try_end_29c} :catch_331
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_29c} :catch_32a

    .line 210
    .local v11, "interval":J
    :try_start_29c
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29f
    .catch Ljava/lang/InterruptedException; {:try_start_29c .. :try_end_29f} :catch_2a0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_29c .. :try_end_29f} :catch_343
    .catch Ljava/io/InterruptedIOException; {:try_start_29c .. :try_end_29f} :catch_33a
    .catch Ljava/net/SocketException; {:try_start_29c .. :try_end_29f} :catch_331
    .catch Ljava/io/IOException; {:try_start_29c .. :try_end_29f} :catch_32a

    .line 213
    goto :goto_2a1

    .line 212
    :catch_2a0
    move-exception v7

    .line 214
    .end local v11    # "interval":J
    :goto_2a1
    goto/16 :goto_34d

    .line 216
    :cond_2a3
    :try_start_2a3
    const-string v7, "date"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d6

    .line 217
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 218
    .local v7, "now":Ljava/util/Date;
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v11

    move-object v9, v11

    .line 219
    invoke-virtual {v9}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v11

    if-eqz v11, :cond_2d1

    iget-object v11, v9, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    const-string v12, "-ms"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d1

    .line 221
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lupdate;->print(Ljava/lang/Object;)V

    goto :goto_2d4

    .line 223
    :cond_2d1
    invoke-virtual {p0, v7}, Lupdate;->print(Ljava/lang/Object;)V

    .line 224
    .end local v7    # "now":Ljava/util/Date;
    :goto_2d4
    goto/16 :goto_34d

    .line 227
    :cond_2d6
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "invalid keyword: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lupdate;->print(Ljava/lang/Object;)V

    goto :goto_34d

    .line 185
    :cond_2eb
    :goto_2eb
    iget-object v11, p0, Lupdate;->log:Ljava/io/PrintStream;

    if-eqz v11, :cond_2f4

    .line 186
    iget-object v11, p0, Lupdate;->log:Ljava/io/PrintStream;

    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    .line 187
    :cond_2f4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 188
    .local v11, "it":Ljava/util/Iterator;
    :goto_2f8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_308

    .line 190
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/BufferedReader;

    .line 191
    .local v12, "tbr":Ljava/io/BufferedReader;
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 192
    .end local v12    # "tbr":Ljava/io/BufferedReader;
    goto :goto_2f8

    .line 193
    :cond_308
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 194
    .end local v11    # "it":Ljava/util/Iterator;
    goto :goto_34d

    .line 157
    :cond_30c
    :goto_30c
    invoke-virtual {v8}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v7

    .line 158
    .end local v9    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .local v7, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v7}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v9

    if-eqz v9, :cond_31c

    .line 159
    iget-object v9, v7, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v9}, Lupdate;->help(Ljava/lang/String;)V

    goto :goto_34d

    .line 161
    :cond_31c
    invoke-static {v0}, Lupdate;->help(Ljava/lang/String;)V

    goto :goto_34d

    .line 136
    .end local v7    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .restart local v9    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_320
    :goto_320
    sget-object v7, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v8, v7}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v7

    iput-object v7, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;
    :try_end_328
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_2a3 .. :try_end_328} :catch_343
    .catch Ljava/io/InterruptedIOException; {:try_start_2a3 .. :try_end_328} :catch_33a
    .catch Ljava/net/SocketException; {:try_start_2a3 .. :try_end_328} :catch_331
    .catch Ljava/io/IOException; {:try_start_2a3 .. :try_end_328} :catch_32a

    goto :goto_34d

    .line 72
    .end local v8    # "st":Lorg/xbill/DNS/Tokenizer;
    .end local v9    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .end local v10    # "operation":Ljava/lang/String;
    :cond_329
    :goto_329
    goto :goto_34e

    .line 238
    .end local v5    # "line":Ljava/lang/String;
    :catch_32a
    move-exception v5

    .line 239
    .local v5, "ioe":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .end local v5    # "ioe":Ljava/io/IOException;
    goto :goto_34d

    .line 235
    :catch_331
    move-exception v5

    .line 236
    .local v5, "se":Ljava/net/SocketException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Socket error"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v5    # "se":Ljava/net/SocketException;
    goto :goto_34d

    .line 232
    :catch_33a
    move-exception v5

    .line 233
    .local v5, "iioe":Ljava/io/InterruptedIOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Operation timed out"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v5    # "iioe":Ljava/io/InterruptedIOException;
    goto :goto_34d

    .line 229
    :catch_343
    move-exception v5

    .line 230
    .local v5, "tpe":Lorg/xbill/DNS/TextParseException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    :cond_34d
    :goto_34d
    nop

    .line 49
    :goto_34e
    move-object v5, v6

    goto/16 :goto_2f
.end method

.method static help(Ljava/lang/String;)V
    .registers 4
    .param p0, "topic"    # Ljava/lang/String;

    .line 540
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 541
    if-nez p0, :cond_f

    .line 542
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "The following are supported commands:\nadd      assert   class    clear    date     delete\necho     edns     file     glue     help     key\nlog      port     prohibit query    quit     require\nsend     server   show     sleep    tcp      ttl\nzone     #\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 548
    return-void

    .line 550
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 552
    const-string v0, "add"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 553
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "add <name> [ttl] [class] <type> <data>\n\nspecify a record to be added\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 556
    :cond_24
    const-string v0, "assert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 557
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "assert <field> <value> [msg]\n\nasserts that the value of the field in the last\nresponse matches the value specified.  If not,\nthe message is printed (if present) and the\nprogram exits.  The field may be any of <rcode>,\n<serial>, <tsig>, <qu>, <an>, <au>, or <ad>.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 564
    :cond_35
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 565
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "class <class>\n\nclass of the zone to be updated (default: IN)\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 568
    :cond_46
    const-string v0, "clear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 569
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "clear\n\nclears the current update packet\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 572
    :cond_57
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 573
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "date [-ms]\n\nprints the current date and time in human readable\nformat or as the number of milliseconds since the\nepoch"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 578
    :cond_68
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 579
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "delete <name> [ttl] [class] <type> <data> \ndelete <name> <type> \ndelete <name>\n\nspecify a record or set to be deleted, or that\nall records at a name should be deleted\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 585
    :cond_79
    const-string v0, "echo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 586
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "echo <text>\n\nprints the text\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 589
    :cond_8a
    const-string v0, "edns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 590
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "edns <level>\n\nEDNS level specified when sending messages\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 593
    :cond_9b
    const-string v0, "file"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 594
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "file <file>\n\nopens the specified file as the new input source\n(- represents stdin)\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 598
    :cond_ac
    const-string v0, "glue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 599
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "glue <name> [ttl] [class] <type> <data>\n\nspecify an additional record\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 602
    :cond_bd
    const-string v0, "help"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 603
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "help\nhelp [topic]\n\nprints a list of commands or help about a specific\ncommand\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 608
    :cond_ce
    const-string v0, "key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 609
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "key <name> <data>\n\nTSIG key used to sign messages\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 612
    :cond_df
    const-string v0, "log"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 613
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "log <file>\n\nopens the specified file and uses it to log output\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 616
    :cond_f0
    const-string v0, "port"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 617
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "port <port>\n\nUDP/TCP port messages are sent to (default: 53)\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 620
    :cond_101
    const-string v0, "prohibit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 621
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "prohibit <name> <type> \nprohibit <name>\n\nrequire that a set or name is not present\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 625
    :cond_112
    const-string v0, "query"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 626
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "query <name> [type [class]] \n\nissues a query\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 629
    :cond_123
    const-string v0, "q"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ef

    const-string v0, "quit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    goto/16 :goto_1ef

    .line 633
    :cond_135
    const-string v0, "require"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 634
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "require <name> [ttl] [class] <type> <data> \nrequire <name> <type> \nrequire <name>\n\nrequire that a record, set, or name is present\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 639
    :cond_146
    const-string v0, "send"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 640
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "send\n\nsends and resets the current update packet\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 643
    :cond_157
    const-string v0, "server"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 644
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "server <name> [port]\n\nserver that receives send updates/queries\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 647
    :cond_168
    const-string v0, "show"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 648
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "show\n\nshows the current update packet\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 651
    :cond_179
    const-string v0, "sleep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 652
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "sleep <milliseconds>\n\npause for interval before next command\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 655
    :cond_18a
    const-string v0, "tcp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 656
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "tcp\n\nTCP should be used to send all messages\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1f6

    .line 659
    :cond_19a
    const-string v0, "ttl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 660
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ttl <ttl>\n\ndefault ttl of added records (default: 0)\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1f6

    .line 663
    :cond_1aa
    const-string v0, "zone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e7

    const-string v0, "origin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    goto :goto_1e7

    .line 667
    :cond_1bb
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 668
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "# <text>\n\na comment\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1f6

    .line 672
    :cond_1cb
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Topic \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\' unrecognized\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1f6

    .line 664
    :cond_1e7
    :goto_1e7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zone <zone>\n\nzone to update (default: .\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1f6

    .line 630
    :cond_1ef
    :goto_1ef
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "quit\n\nquits the program\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 673
    :goto_1f6
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "in":Ljava/io/InputStream;
    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2c

    .line 681
    const/4 v1, 0x0

    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    aget-object v4, p0, v1

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_d} :catch_f

    move-object v0, v3

    goto :goto_2b

    .line 683
    :catch_f
    move-exception v3

    .line 684
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v1, p0, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " not found."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 685
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 686
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_2b
    goto :goto_2e

    .line 689
    :cond_2c
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 690
    :goto_2e
    new-instance v1, Lupdate;

    invoke-direct {v1, v0}, Lupdate;-><init>(Ljava/io/InputStream;)V

    .line 691
    .local v1, "u":Lupdate;
    return-void
.end method


# virtual methods
.method doAdd(Lorg/xbill/DNS/Tokenizer;)V
    .registers 5
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget v0, p0, Lupdate;->defaultClass:I

    iget-wide v1, p0, Lupdate;->defaultTTL:J

    invoke-virtual {p0, p1, v0, v1, v2}, Lupdate;->parseRR(Lorg/xbill/DNS/Tokenizer;IJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 366
    .local v0, "record":Lorg/xbill/DNS/Record;
    iget-object v1, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 367
    invoke-virtual {p0, v0}, Lupdate;->print(Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method doAssert(Lorg/xbill/DNS/Tokenizer;)Z
    .registers 13
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "expected":Ljava/lang/String;
    const/4 v2, 0x0

    .line 475
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x1

    .line 478
    .local v3, "flag":Z
    iget-object v4, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    const/4 v5, 0x1

    if-nez v4, :cond_15

    .line 479
    const-string v4, "No response has been received"

    invoke-virtual {p0, v4}, Lupdate;->print(Ljava/lang/Object;)V

    .line 480
    return v5

    .line 482
    :cond_15
    const-string v4, "rcode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 483
    iget-object v4, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v4

    .line 484
    .local v4, "rcode":I
    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_32

    .line 485
    invoke-static {v4}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    const/4 v3, 0x0

    .line 488
    .end local v4    # "rcode":I
    :cond_32
    goto/16 :goto_c7

    .line 489
    :cond_34
    const-string v4, "serial"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 490
    iget-object v4, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 491
    .local v4, "answers":[Lorg/xbill/DNS/Record;
    array-length v6, v4

    if-lt v6, v5, :cond_63

    const/4 v5, 0x0

    aget-object v6, v4, v5

    instance-of v6, v6, Lorg/xbill/DNS/SOARecord;

    if-nez v6, :cond_4d

    goto :goto_63

    .line 494
    :cond_4d
    aget-object v5, v4, v5

    check-cast v5, Lorg/xbill/DNS/SOARecord;

    .line 495
    .local v5, "soa":Lorg/xbill/DNS/SOARecord;
    invoke-virtual {v5}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v6

    .line 496
    .local v6, "serial":J
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_68

    .line 497
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 498
    const/4 v3, 0x0

    goto :goto_68

    .line 492
    .end local v5    # "soa":Lorg/xbill/DNS/SOARecord;
    .end local v6    # "serial":J
    :cond_63
    :goto_63
    const-string v5, "Invalid response (no SOA)"

    invoke-virtual {p0, v5}, Lupdate;->print(Ljava/lang/Object;)V

    .line 501
    .end local v4    # "answers":[Lorg/xbill/DNS/Record;
    :cond_68
    :goto_68
    goto :goto_c7

    .line 502
    :cond_69
    const-string v4, "tsig"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 503
    iget-object v4, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 504
    iget-object v4, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 505
    const-string v2, "ok"

    goto :goto_89

    .line 507
    :cond_84
    const-string v2, "failed"

    goto :goto_89

    .line 510
    :cond_87
    const-string v2, "unsigned"

    .line 511
    :goto_89
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c7

    .line 512
    const/4 v3, 0x0

    goto :goto_c7

    .line 514
    :cond_91
    invoke-static {v0}, Lorg/xbill/DNS/Section;->value(Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .local v5, "section":I
    if-ltz v4, :cond_b3

    .line 515
    iget-object v4, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v4

    .line 516
    .local v4, "count":I
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v4, v6, :cond_b2

    .line 517
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 518
    const/4 v3, 0x0

    .line 520
    .end local v4    # "count":I
    :cond_b2
    goto :goto_c7

    .line 522
    :cond_b3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid assertion keyword: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lupdate;->print(Ljava/lang/Object;)V

    .line 524
    .end local v5    # "section":I
    :cond_c7
    :goto_c7
    if-nez v3, :cond_102

    .line 525
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ", received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lupdate;->print(Ljava/lang/Object;)V

    .line 528
    :goto_ed
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v4

    .line 529
    .local v4, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v4}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v5

    if-nez v5, :cond_fc

    .line 530
    nop

    .line 533
    .end local v4    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    goto :goto_102

    .line 531
    .restart local v4    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_fc
    iget-object v5, v4, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lupdate;->print(Ljava/lang/Object;)V

    .line 532
    .end local v4    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    goto :goto_ed

    .line 535
    :cond_102
    :goto_102
    return v3
.end method

.method doDelete(Lorg/xbill/DNS/Tokenizer;)V
    .registers 14
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 379
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 380
    .local v1, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/16 v5, 0xff

    if-eqz v2, :cond_5f

    .line 381
    iget-object v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 382
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_20

    .line 383
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v2

    .line 385
    .end local v2    # "s":Ljava/lang/String;
    .local v8, "s":Ljava/lang/String;
    :cond_20
    move-object v8, v2

    invoke-static {v8}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v2

    move v9, v2

    .local v9, "type":I
    if-ltz v2, :cond_48

    .line 387
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v10

    .line 388
    .end local v1    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .local v10, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v10}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v11

    .line 389
    .local v11, "iseol":Z
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 390
    if-nez v11, :cond_43

    .line 391
    const/16 v3, 0xfe

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    move-object v1, v0

    move v2, v9

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    goto :goto_47

    .line 394
    :cond_43
    invoke-static {v0, v9, v5, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 395
    .end local v11    # "iseol":Z
    .local v1, "record":Lorg/xbill/DNS/Record;
    :goto_47
    goto :goto_65

    .line 386
    .end local v10    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .local v1, "token":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_48
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "type":I
    :cond_5f
    invoke-static {v0, v5, v5, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v2

    move-object v10, v1

    move-object v1, v2

    .line 399
    .local v1, "record":Lorg/xbill/DNS/Record;
    .restart local v10    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    :goto_65
    iget-object v2, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 400
    invoke-virtual {p0, v1}, Lupdate;->print(Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method doFile(Lorg/xbill/DNS/Tokenizer;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "inputs"    # Ljava/util/List;
    .param p3, "istreams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 447
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    move-object v1, v2

    goto :goto_17

    .line 449
    :cond_11
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 450
    .local v1, "is":Ljava/io/InputStream;
    :goto_17
    const/4 v2, 0x0

    invoke-interface {p3, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 451
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {p2, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_28} :catch_29

    .line 455
    goto :goto_3e

    .line 453
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_29
    move-exception v2

    .line 454
    .restart local v1    # "is":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lupdate;->print(Ljava/lang/Object;)V

    .line 456
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_3e
    return-void
.end method

.method doGlue(Lorg/xbill/DNS/Tokenizer;)V
    .registers 5
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget v0, p0, Lupdate;->defaultClass:I

    iget-wide v1, p0, Lupdate;->defaultTTL:J

    invoke-virtual {p0, p1, v0, v1, v2}, Lupdate;->parseRR(Lorg/xbill/DNS/Tokenizer;IJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 406
    .local v0, "record":Lorg/xbill/DNS/Record;
    iget-object v1, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 407
    invoke-virtual {p0, v0}, Lupdate;->print(Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method doLog(Lorg/xbill/DNS/Tokenizer;)V
    .registers 6
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "s":Ljava/lang/String;
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lupdate;->log:Ljava/io/PrintStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    .line 467
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_26

    .line 465
    :catch_11
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lupdate;->print(Ljava/lang/Object;)V

    .line 468
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method

.method doProhibit(Lorg/xbill/DNS/Tokenizer;)V
    .registers 8
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 352
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 353
    .local v1, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 354
    iget-object v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-ltz v2, :cond_1a

    goto :goto_35

    .line 355
    :cond_1a
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    .end local v3    # "type":I
    :cond_33
    const/16 v3, 0xff

    .restart local v3    # "type":I
    :goto_35
    move v2, v3

    .line 358
    .end local v3    # "type":I
    .local v2, "type":I
    const/16 v3, 0xfe

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 359
    .local v3, "record":Lorg/xbill/DNS/Record;
    iget-object v4, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 360
    invoke-virtual {p0, v3}, Lupdate;->print(Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method doQuery(Lorg/xbill/DNS/Tokenizer;)V
    .registers 10
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "name":Lorg/xbill/DNS/Name;
    const/4 v1, 0x1

    .line 417
    .local v1, "type":I
    iget v2, p0, Lupdate;->defaultClass:I

    .line 419
    .local v2, "dclass":I
    iget-object v3, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 420
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    .line 421
    .local v3, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 422
    iget-object v4, v3, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v4}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v1

    .line 423
    if-ltz v1, :cond_37

    .line 425
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    .line 426
    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 427
    iget-object v4, v3, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v4}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v2

    .line 428
    if-ltz v2, :cond_2f

    goto :goto_3f

    .line 429
    :cond_2f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid class"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 424
    :cond_37
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid type"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    :cond_3f
    :goto_3f
    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 434
    .local v4, "rec":Lorg/xbill/DNS/Record;
    invoke-static {v4}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v5

    .line 435
    .local v5, "newQuery":Lorg/xbill/DNS/Message;
    iget-object v6, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    if-nez v6, :cond_54

    .line 436
    new-instance v6, Lorg/xbill/DNS/SimpleResolver;

    iget-object v7, p0, Lupdate;->server:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    .line 437
    :cond_54
    iget-object v6, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    invoke-interface {v6, v5}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v6

    iput-object v6, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    .line 438
    iget-object v6, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    invoke-virtual {p0, v6}, Lupdate;->print(Ljava/lang/Object;)V

    .line 439
    return-void
.end method

.method doRequire(Lorg/xbill/DNS/Tokenizer;)V
    .registers 13
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 324
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 325
    .local v1, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/16 v5, 0xff

    if-eqz v2, :cond_56

    .line 326
    iget-object v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v2

    move v8, v2

    .local v8, "type":I
    if-ltz v2, :cond_3d

    .line 328
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v9

    .line 329
    .end local v1    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .local v9, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v9}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v10

    .line 330
    .local v10, "iseol":Z
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 331
    if-nez v10, :cond_38

    .line 332
    iget v3, p0, Lupdate;->defaultClass:I

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    move-object v1, v0

    move v2, v8

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    goto :goto_3c

    .line 335
    :cond_38
    invoke-static {v0, v8, v5, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 337
    .end local v10    # "iseol":Z
    .local v1, "record":Lorg/xbill/DNS/Record;
    :goto_3c
    goto :goto_5c

    .line 327
    .end local v9    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    .local v1, "token":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_3d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    .end local v8    # "type":I
    :cond_56
    invoke-static {v0, v5, v5, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v2

    move-object v9, v1

    move-object v1, v2

    .line 340
    .local v1, "record":Lorg/xbill/DNS/Record;
    .restart local v9    # "token":Lorg/xbill/DNS/Tokenizer$Token;
    :goto_5c
    iget-object v2, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 341
    invoke-virtual {p0, v1}, Lupdate;->print(Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public newMessage()Lorg/xbill/DNS/Message;
    .registers 4

    .line 29
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 30
    .local v0, "msg":Lorg/xbill/DNS/Message;
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 31
    return-object v0
.end method

.method parseRR(Lorg/xbill/DNS/Tokenizer;IJ)Lorg/xbill/DNS/Record;
    .registers 16
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "classValue"    # I
    .param p3, "TTLValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 291
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "s":Ljava/lang/String;
    :try_start_a
    invoke-static {v1}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_16

    .line 295
    .local v2, "ttl":J
    :try_start_e
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_14

    move-object v1, v4

    .line 299
    goto :goto_1a

    .line 297
    :catch_14
    move-exception v4

    goto :goto_19

    .end local v2    # "ttl":J
    :catch_16
    move-exception v4

    const-wide/16 v2, 0x0

    .line 298
    .restart local v2    # "ttl":J
    .local v4, "e":Ljava/lang/NumberFormatException;
    :goto_19
    move-wide v2, p3

    .line 301
    .end local v2    # "ttl":J
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .local v8, "ttl":J
    :goto_1a
    move-wide v8, v2

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_29

    .line 302
    invoke-static {v1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result p2

    .line 303
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .end local v1    # "s":Ljava/lang/String;
    .local v10, "classValue":I
    .local p2, "s":Ljava/lang/String;
    :cond_29
    move v10, p2

    move-object p2, v1

    invoke-static {p2}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "type":I
    if-ltz v1, :cond_47

    .line 309
    iget-object v7, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    move-object v1, v0

    move v3, v10

    move-wide v4, v8

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 310
    .local v1, "record":Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_3f

    .line 311
    return-object v1

    .line 313
    :cond_3f
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Parse error"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    .end local v1    # "record":Lorg/xbill/DNS/Record;
    :cond_47
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method print(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lupdate;->log:Ljava/io/PrintStream;

    if-eqz v0, :cond_e

    .line 24
    iget-object v0, p0, Lupdate;->log:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 25
    :cond_e
    return-void
.end method

.method sendUpdate()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    if-nez v0, :cond_13

    .line 247
    const-string v0, "Empty update message.  Ignoring."

    invoke-virtual {p0, v0}, Lupdate;->print(Ljava/lang/Object;)V

    .line 248
    return-void

    .line 250
    :cond_13
    iget-object v0, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    if-nez v0, :cond_69

    .line 252
    iget-object v0, p0, Lupdate;->zone:Lorg/xbill/DNS/Name;

    .line 253
    .local v0, "updzone":Lorg/xbill/DNS/Name;
    iget v3, p0, Lupdate;->defaultClass:I

    .line 254
    .local v3, "dclass":I
    if-nez v0, :cond_5e

    .line 255
    iget-object v4, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    invoke-virtual {v4, v1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 256
    .local v1, "recs":[Lorg/xbill/DNS/Record;
    move-object v4, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v4, "updzone":Lorg/xbill/DNS/Name;
    :goto_2e
    array-length v5, v1

    if-ge v0, v5, :cond_5f

    .line 257
    if-nez v4, :cond_40

    .line 258
    new-instance v5, Lorg/xbill/DNS/Name;

    aget-object v6, v1, v0

    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    move-object v4, v5

    .line 260
    :cond_40
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    const/16 v6, 0xfe

    if-eq v5, v6, :cond_5b

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_5b

    .line 263
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v3

    .line 264
    goto :goto_5f

    .line 256
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 268
    .end local v1    # "recs":[Lorg/xbill/DNS/Record;
    .end local v4    # "updzone":Lorg/xbill/DNS/Name;
    .local v0, "updzone":Lorg/xbill/DNS/Name;
    :cond_5e
    move-object v4, v0

    .end local v0    # "updzone":Lorg/xbill/DNS/Name;
    .restart local v4    # "updzone":Lorg/xbill/DNS/Name;
    :cond_5f
    :goto_5f
    const/4 v0, 0x6

    invoke-static {v4, v0, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 269
    .local v0, "soa":Lorg/xbill/DNS/Record;
    iget-object v1, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 272
    .end local v0    # "soa":Lorg/xbill/DNS/Record;
    .end local v3    # "dclass":I
    .end local v4    # "updzone":Lorg/xbill/DNS/Name;
    :cond_69
    iget-object v0, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    if-nez v0, :cond_76

    .line 273
    new-instance v0, Lorg/xbill/DNS/SimpleResolver;

    iget-object v1, p0, Lupdate;->server:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    .line 274
    :cond_76
    iget-object v0, p0, Lupdate;->res:Lorg/xbill/DNS/Resolver;

    iget-object v1, p0, Lupdate;->query:Lorg/xbill/DNS/Message;

    invoke-interface {v0, v1}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v0

    iput-object v0, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    .line 275
    iget-object v0, p0, Lupdate;->response:Lorg/xbill/DNS/Message;

    invoke-virtual {p0, v0}, Lupdate;->print(Ljava/lang/Object;)V

    .line 276
    return-void
.end method
