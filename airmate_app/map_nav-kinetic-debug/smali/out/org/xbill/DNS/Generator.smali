.class public Lorg/xbill/DNS/Generator;
.super Ljava/lang/Object;
.source "Generator.java"


# instance fields
.field private current:J

.field public final dclass:I

.field public end:J

.field public final namePattern:Ljava/lang/String;

.field public final origin:Lorg/xbill/DNS/Name;

.field public final rdataPattern:Ljava/lang/String;

.field public start:J

.field public step:J

.field public final ttl:J

.field public final type:I


# direct methods
.method public constructor <init>(JJJLjava/lang/String;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)V
    .registers 30
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "step"    # J
    .param p7, "namePattern"    # Ljava/lang/String;
    .param p8, "type"    # I
    .param p9, "dclass"    # I
    .param p10, "ttl"    # J
    .param p12, "rdataPattern"    # Ljava/lang/String;
    .param p13, "origin"    # Lorg/xbill/DNS/Name;

    .line 76
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-ltz v9, :cond_5b

    cmp-long v9, v3, v7

    if-ltz v9, :cond_5b

    cmp-long v9, v1, v3

    if-gtz v9, :cond_5b

    cmp-long v9, v5, v7

    if-lez v9, :cond_5b

    .line 80
    invoke-static/range {p8 .. p8}, Lorg/xbill/DNS/Generator;->supportedType(I)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 82
    invoke-static/range {p9 .. p9}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 84
    iput-wide v1, v0, Lorg/xbill/DNS/Generator;->start:J

    .line 85
    iput-wide v3, v0, Lorg/xbill/DNS/Generator;->end:J

    .line 86
    iput-wide v5, v0, Lorg/xbill/DNS/Generator;->step:J

    .line 87
    move-object/from16 v7, p7

    iput-object v7, v0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    .line 88
    move/from16 v8, p8

    iput v8, v0, Lorg/xbill/DNS/Generator;->type:I

    .line 89
    move/from16 v9, p9

    iput v9, v0, Lorg/xbill/DNS/Generator;->dclass:I

    .line 90
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lorg/xbill/DNS/Generator;->ttl:J

    .line 91
    move-object/from16 v12, p12

    iput-object v12, v0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    .line 92
    move-object/from16 v13, p13

    iput-object v13, v0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    .line 93
    iput-wide v1, v0, Lorg/xbill/DNS/Generator;->current:J

    .line 94
    return-void

    .line 81
    :cond_47
    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "unsupported type"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 78
    :cond_5b
    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "invalid range specification"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private substitute(Ljava/lang/String;J)Ljava/lang/String;
    .registers 29
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "escaped":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 100
    .local v1, "str":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    array-length v4, v1

    if-ge v3, v4, :cond_1a3

    .line 103
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 104
    .local v4, "c":C
    if-eqz v0, :cond_1d

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    const/4 v0, 0x0

    .line 102
    .end local v1    # "str":[B
    .end local v4    # "c":C
    .local v24, "str":[B
    :goto_19
    move-object/from16 v24, v1

    goto/16 :goto_19d

    .line 107
    .end local v24    # "str":[B
    .restart local v1    # "str":[B
    .restart local v4    # "c":C
    :cond_1d
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_30

    .line 108
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_28

    .line 111
    const/4 v0, 0x1

    goto :goto_19

    .line 109
    :cond_28
    new-instance v5, Lorg/xbill/DNS/TextParseException;

    const-string v6, "invalid escape character"

    invoke-direct {v5, v6}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    :cond_30
    const/16 v5, 0x24

    if-ne v4, v5, :cond_196

    .line 113
    const/4 v6, 0x0

    .line 114
    .local v6, "negative":Z
    const-wide/16 v7, 0x0

    .line 115
    .local v7, "offset":J
    const-wide/16 v9, 0x0

    .line 116
    .local v9, "width":J
    const-wide/16 v11, 0xa

    .line 117
    .local v11, "base":J
    const/4 v13, 0x0

    .line 118
    .local v13, "wantUpperCase":Z
    add-int/lit8 v14, v3, 0x1

    array-length v15, v1

    if-ge v14, v15, :cond_52

    add-int/lit8 v14, v3, 0x1

    aget-byte v14, v1, v14

    if-ne v14, v5, :cond_52

    .line 121
    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    int-to-char v4, v5

    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    goto :goto_19

    .line 124
    :cond_52
    add-int/lit8 v5, v3, 0x1

    array-length v14, v1

    if-ge v5, v14, :cond_12e

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    const/16 v14, 0x7b

    if-ne v5, v14, :cond_12e

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 127
    add-int/lit8 v5, v3, 0x1

    array-length v14, v1

    if-ge v5, v14, :cond_71

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    const/16 v14, 0x2d

    if-ne v5, v14, :cond_71

    .line 128
    const/4 v6, 0x1

    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 131
    :cond_71
    :goto_71
    add-int/lit8 v5, v3, 0x1

    array-length v14, v1

    const-wide/16 v16, 0xa

    const/16 v15, 0x2c

    if-ge v5, v14, :cond_a0

    .line 132
    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    int-to-char v4, v5

    .line 133
    if-eq v4, v15, :cond_a0

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_88

    .line 134
    goto :goto_a0

    .line 135
    :cond_88
    const/16 v5, 0x30

    if-lt v4, v5, :cond_98

    const/16 v5, 0x39

    if-gt v4, v5, :cond_98

    .line 138
    add-int/lit8 v5, v4, -0x30

    int-to-char v4, v5

    .line 139
    mul-long v7, v7, v16

    .line 140
    int-to-long v14, v4

    add-long/2addr v7, v14

    goto :goto_71

    .line 136
    :cond_98
    new-instance v5, Lorg/xbill/DNS/TextParseException;

    const-string v14, "invalid offset"

    invoke-direct {v5, v14}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_a0
    :goto_a0
    if-eqz v6, :cond_a3

    .line 143
    neg-long v7, v7

    .line 145
    :cond_a3
    if-ne v4, v15, :cond_d9

    .line 146
    :goto_a5
    add-int/lit8 v5, v3, 0x1

    array-length v14, v1

    if-ge v5, v14, :cond_d9

    .line 147
    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    int-to-char v4, v5

    .line 148
    if-eq v4, v15, :cond_d9

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_bb

    .line 149
    nop

    .line 160
    move/from16 v20, v6

    goto :goto_db

    .line 150
    :cond_bb
    const/16 v5, 0x30

    if-lt v4, v5, :cond_cf

    const/16 v5, 0x39

    if-gt v4, v5, :cond_cf

    .line 154
    add-int/lit8 v14, v4, -0x30

    int-to-char v4, v14

    .line 155
    mul-long v9, v9, v16

    .line 156
    move/from16 v20, v6

    .end local v6    # "negative":Z
    .local v20, "negative":Z
    int-to-long v5, v4

    add-long/2addr v9, v5

    .line 146
    move/from16 v6, v20

    goto :goto_a5

    .line 151
    .end local v20    # "negative":Z
    .restart local v6    # "negative":Z
    :cond_cf
    move/from16 v20, v6

    .end local v6    # "negative":Z
    .restart local v20    # "negative":Z
    new-instance v5, Lorg/xbill/DNS/TextParseException;

    const-string v6, "invalid width"

    invoke-direct {v5, v6}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    .end local v20    # "negative":Z
    .restart local v6    # "negative":Z
    :cond_d9
    move/from16 v20, v6

    .end local v6    # "negative":Z
    .restart local v20    # "negative":Z
    :goto_db
    if-ne v4, v15, :cond_116

    .line 161
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_10e

    .line 164
    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    int-to-char v4, v5

    .line 165
    const/16 v5, 0x6f

    if-ne v4, v5, :cond_f1

    .line 166
    const-wide/16 v5, 0x8

    .line 178
    :goto_ef
    move-wide v11, v5

    goto :goto_116

    .line 167
    :cond_f1
    const/16 v5, 0x78

    if-ne v4, v5, :cond_f8

    .line 168
    const-wide/16 v5, 0x10

    goto :goto_ef

    .line 169
    :cond_f8
    const/16 v5, 0x58

    if-ne v4, v5, :cond_101

    .line 170
    const-wide/16 v5, 0x10

    .line 171
    .end local v11    # "base":J
    .local v5, "base":J
    const/4 v11, 0x1

    .line 178
    move v13, v11

    goto :goto_ef

    .line 173
    .end local v5    # "base":J
    .restart local v11    # "base":J
    :cond_101
    const/16 v5, 0x64

    if-ne v4, v5, :cond_106

    goto :goto_116

    .line 174
    :cond_106
    new-instance v5, Lorg/xbill/DNS/TextParseException;

    const-string v6, "invalid base"

    invoke-direct {v5, v6}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_10e
    new-instance v5, Lorg/xbill/DNS/TextParseException;

    const-string v6, "invalid base"

    invoke-direct {v5, v6}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 178
    :cond_116
    :goto_116
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_126

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_126

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_130

    .line 179
    :cond_126
    new-instance v5, Lorg/xbill/DNS/TextParseException;

    const-string v6, "invalid modifiers"

    invoke-direct {v5, v6}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    .end local v20    # "negative":Z
    .restart local v6    # "negative":Z
    :cond_12e
    move/from16 v20, v6

    .end local v6    # "negative":Z
    .restart local v20    # "negative":Z
    :goto_130
    const/4 v5, 0x0

    add-long v14, p2, v7

    .line 184
    .local v14, "v":J
    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-ltz v18, :cond_18a

    .line 188
    const-wide/16 v18, 0x8

    cmp-long v21, v11, v18

    if-nez v21, :cond_144

    .line 189
    invoke-static {v14, v15}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v18

    goto :goto_153

    .line 190
    :cond_144
    const-wide/16 v18, 0x10

    cmp-long v21, v11, v18

    if-nez v21, :cond_14f

    .line 191
    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v18

    goto :goto_153

    .line 193
    :cond_14f
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    .line 194
    .local v18, "number":Ljava/lang/String;
    :goto_153
    if-eqz v13, :cond_159

    .line 195
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    .line 196
    .end local v18    # "number":Ljava/lang/String;
    .local v22, "number":Ljava/lang/String;
    :cond_159
    move-object/from16 v22, v18

    cmp-long v18, v9, v16

    if-eqz v18, :cond_17d

    move/from16 v23, v0

    .end local v0    # "escaped":Z
    .local v23, "escaped":Z
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v24, v1

    .end local v1    # "str":[B
    .restart local v24    # "str":[B
    int-to-long v0, v0

    cmp-long v16, v9, v0

    if-lez v16, :cond_181

    .line 197
    long-to-int v0, v9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 198
    .local v0, "zeros":I
    :goto_172
    add-int/lit8 v1, v0, -0x1

    .local v1, "zeros":I
    if-lez v0, :cond_181

    .line 199
    .end local v0    # "zeros":I
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    move v0, v1

    goto :goto_172

    .line 201
    .end local v23    # "escaped":Z
    .end local v24    # "str":[B
    .local v0, "escaped":Z
    .local v1, "str":[B
    :cond_17d
    move/from16 v23, v0

    move-object/from16 v24, v1

    .end local v0    # "escaped":Z
    .end local v1    # "str":[B
    .restart local v23    # "escaped":Z
    .restart local v24    # "str":[B
    :cond_181
    move-object/from16 v0, v22

    .end local v22    # "number":Ljava/lang/String;
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    .end local v0    # "number":Ljava/lang/String;
    .end local v7    # "offset":J
    .end local v9    # "width":J
    .end local v11    # "base":J
    .end local v13    # "wantUpperCase":Z
    .end local v14    # "v":J
    .end local v20    # "negative":Z
    nop

    .line 102
    move/from16 v0, v23

    goto :goto_19d

    .line 185
    .end local v23    # "escaped":Z
    .end local v24    # "str":[B
    .local v0, "escaped":Z
    .restart local v1    # "str":[B
    .restart local v7    # "offset":J
    .restart local v9    # "width":J
    .restart local v11    # "base":J
    .restart local v13    # "wantUpperCase":Z
    .restart local v14    # "v":J
    .restart local v20    # "negative":Z
    :cond_18a
    move/from16 v23, v0

    move-object/from16 v24, v1

    .end local v0    # "escaped":Z
    .end local v1    # "str":[B
    .restart local v23    # "escaped":Z
    .restart local v24    # "str":[B
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string v1, "invalid offset expansion"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    .end local v7    # "offset":J
    .end local v9    # "width":J
    .end local v11    # "base":J
    .end local v13    # "wantUpperCase":Z
    .end local v14    # "v":J
    .end local v20    # "negative":Z
    .end local v23    # "escaped":Z
    .end local v24    # "str":[B
    .restart local v0    # "escaped":Z
    .restart local v1    # "str":[B
    :cond_196
    move/from16 v23, v0

    move-object/from16 v24, v1

    .end local v0    # "escaped":Z
    .end local v1    # "str":[B
    .restart local v23    # "escaped":Z
    .restart local v24    # "str":[B
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    .end local v4    # "c":C
    .end local v23    # "escaped":Z
    .restart local v0    # "escaped":Z
    :goto_19d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v24

    goto/16 :goto_b

    .line 206
    .end local v3    # "i":I
    .end local v24    # "str":[B
    .restart local v1    # "str":[B
    :cond_1a3
    move/from16 v23, v0

    move-object/from16 v24, v1

    .end local v0    # "escaped":Z
    .end local v1    # "str":[B
    .restart local v23    # "escaped":Z
    .restart local v24    # "str":[B
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static supportedType(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 51
    invoke-static {p0}, Lorg/xbill/DNS/Type;->check(I)V

    .line 52
    const/4 v0, 0x1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1b

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1b

    const/16 v1, 0x27

    if-eq p0, v1, :cond_1b

    if-eq p0, v0, :cond_1b

    const/16 v1, 0x1c

    if-eq p0, v1, :cond_1b

    const/4 v1, 0x2

    if-ne p0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    nop

    :cond_1b
    :goto_1b
    return v0
.end method


# virtual methods
.method public expand()[Lorg/xbill/DNS/Record;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, "list":Ljava/util/List;
    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->start:J

    .local v1, "i":J
    :goto_7
    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->end:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_38

    .line 234
    iget-object v3, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    iget-wide v4, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v3, v4, v5}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "namestr":Ljava/lang/String;
    iget-object v4, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    invoke-static {v3, v4}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 236
    .local v4, "name":Lorg/xbill/DNS/Name;
    iget-object v5, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    iget-wide v6, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v5, v6, v7}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "rdata":Ljava/lang/String;
    iget v6, p0, Lorg/xbill/DNS/Generator;->type:I

    iget v7, p0, Lorg/xbill/DNS/Generator;->dclass:I

    iget-wide v8, p0, Lorg/xbill/DNS/Generator;->ttl:J

    iget-object v11, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    move-object v5, v4

    move-object v10, v12

    invoke-static/range {v5 .. v11}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v3    # "namestr":Ljava/lang/String;
    .end local v4    # "name":Lorg/xbill/DNS/Name;
    .end local v12    # "rdata":Ljava/lang/String;
    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->step:J

    add-long/2addr v1, v3

    goto :goto_7

    .line 240
    .end local v1    # "i":J
    :cond_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Record;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/Record;

    return-object v1
.end method

.method public nextRecord()Lorg/xbill/DNS/Record;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-wide v0, p0, Lorg/xbill/DNS/Generator;->current:J

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->end:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_a
    iget-object v0, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "namestr":Ljava/lang/String;
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 220
    .local v1, "name":Lorg/xbill/DNS/Name;
    iget-object v2, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v2, v3, v4}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "rdata":Ljava/lang/String;
    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->current:J

    iget-wide v4, p0, Lorg/xbill/DNS/Generator;->step:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xbill/DNS/Generator;->current:J

    .line 222
    iget v3, p0, Lorg/xbill/DNS/Generator;->type:I

    iget v4, p0, Lorg/xbill/DNS/Generator;->dclass:I

    iget-wide v5, p0, Lorg/xbill/DNS/Generator;->ttl:J

    iget-object v8, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    move-object v2, v1

    move-object v7, v9

    invoke-static/range {v2 .. v8}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "$GENERATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->step:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_43

    .line 253
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->step:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    :cond_43
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget v1, p0, Lorg/xbill/DNS/Generator;->dclass:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_81

    const-string v1, "noPrintIN"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 258
    :cond_81
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Generator;->dclass:I

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_9b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Generator;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
