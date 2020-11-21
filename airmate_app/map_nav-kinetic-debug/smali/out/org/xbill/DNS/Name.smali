.class public Lorg/xbill/DNS/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final LABEL_COMPRESSION:I = 0xc0

.field private static final LABEL_MASK:I = 0xc0

.field private static final LABEL_NORMAL:I = 0x0

.field private static final MAXLABEL:I = 0x3f

.field private static final MAXLABELS:I = 0x80

.field private static final MAXNAME:I = 0xff

.field private static final MAXOFFSETS:I = 0x7

.field private static final byteFormat:Ljava/text/DecimalFormat;

.field public static final empty:Lorg/xbill/DNS/Name;

.field private static final emptyLabel:[B

.field private static final lowercase:[B

.field public static final root:Lorg/xbill/DNS/Name;

.field private static final serialVersionUID:J = -0x64b61d2fdd88b60cL

.field private static final wild:Lorg/xbill/DNS/Name;

.field private static final wildLabel:[B


# instance fields
.field private hashcode:I

.field private name:[B

.field private offsets:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 35
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    sput-object v1, Lorg/xbill/DNS/Name;->emptyLabel:[B

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_6e

    sput-object v1, Lorg/xbill/DNS/Name;->wildLabel:[B

    .line 57
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    .line 60
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lorg/xbill/DNS/Name;->lowercase:[B

    .line 66
    sget-object v1, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    array-length v3, v3

    if-ge v1, v3, :cond_44

    .line 68
    const/16 v3, 0x41

    if-lt v1, v3, :cond_3c

    const/16 v3, 0x5a

    if-le v1, v3, :cond_32

    goto :goto_3c

    .line 71
    :cond_32
    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    add-int/lit8 v4, v1, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_41

    .line 69
    :cond_3c
    :goto_3c
    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    .line 67
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 73
    .end local v1    # "i":I
    :cond_44
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 74
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    sget-object v3, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {v1, v3, v2, v0}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 75
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    .line 76
    sget-object v1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    new-array v3, v2, [B

    iput-object v3, v1, Lorg/xbill/DNS/Name;->name:[B

    .line 77
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    .line 78
    sget-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    sget-object v3, Lorg/xbill/DNS/Name;->wildLabel:[B

    invoke-direct {v1, v3, v2, v0}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 79
    return-void

    :array_6e
    .array-data 1
        0x1t
        0x2at
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .registers 19
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fb

    .line 208
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 209
    if-nez v2, :cond_21

    .line 210
    sget-object v3, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    invoke-static {v3, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_24

    .line 212
    :cond_21
    invoke-static {v2, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 213
    :goto_24
    return-void

    .line 214
    :cond_25
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 215
    sget-object v3, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v3, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 216
    return-void

    .line 218
    :cond_33
    const/4 v3, -0x1

    .line 219
    .local v3, "labelstart":I
    const/4 v4, 0x1

    .line 220
    .local v4, "pos":I
    const/16 v5, 0x40

    new-array v5, v5, [B

    .line 221
    .local v5, "label":[B
    const/4 v6, 0x0

    .line 222
    .local v6, "escaped":Z
    const/4 v7, 0x0

    .line 223
    .local v7, "digits":I
    const/4 v8, 0x0

    .line 224
    .local v8, "intval":I
    const/4 v9, 0x0

    .line 225
    .local v9, "absolute":Z
    const/4 v10, 0x0

    move v11, v4

    move v4, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v4, "labelstart":I
    .local v11, "pos":I
    :goto_41
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x3

    if-ge v3, v12, :cond_c5

    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    int-to-byte v12, v12

    .line 227
    .local v12, "b":B
    const/16 v15, 0x3f

    if-eqz v6, :cond_90

    .line 228
    const/16 v13, 0x30

    if-lt v12, v13, :cond_73

    const/16 v13, 0x39

    if-gt v12, v13, :cond_73

    if-ge v7, v14, :cond_73

    .line 229
    add-int/lit8 v7, v7, 0x1

    .line 230
    mul-int/lit8 v8, v8, 0xa

    .line 231
    add-int/lit8 v13, v12, -0x30

    add-int/2addr v8, v13

    .line 232
    const/16 v13, 0xff

    if-gt v8, v13, :cond_6c

    .line 234
    if-ge v7, v14, :cond_6a

    .line 235
    goto :goto_bb

    .line 236
    :cond_6a
    int-to-byte v12, v8

    goto :goto_7f

    .line 233
    :cond_6c
    const-string v10, "bad escape"

    invoke-static {v1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 238
    :cond_73
    if-lez v7, :cond_7f

    if-lt v7, v14, :cond_78

    goto :goto_7f

    .line 239
    :cond_78
    const-string v10, "bad escape"

    invoke-static {v1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 240
    :cond_7f
    :goto_7f
    if-gt v11, v15, :cond_89

    .line 242
    move v4, v11

    .line 243
    add-int/lit8 v13, v11, 0x1

    .local v13, "pos":I
    aput-byte v12, v5, v11

    .line 244
    .end local v11    # "pos":I
    const/4 v6, 0x0

    .line 225
    .end local v12    # "b":B
    .end local v13    # "pos":I
    .restart local v11    # "pos":I
    :goto_87
    move v11, v13

    goto :goto_bb

    .line 241
    .restart local v12    # "b":B
    :cond_89
    const-string v10, "label too long"

    invoke-static {v1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 245
    :cond_90
    const/16 v14, 0x5c

    if-ne v12, v14, :cond_98

    .line 246
    const/4 v6, 0x1

    .line 247
    const/4 v7, 0x0

    .line 248
    const/4 v8, 0x0

    goto :goto_bb

    .line 249
    :cond_98
    const/16 v14, 0x2e

    if-ne v12, v14, :cond_b1

    .line 250
    if-eq v4, v13, :cond_aa

    .line 252
    add-int/lit8 v13, v11, -0x1

    int-to-byte v13, v13

    aput-byte v13, v5, v10

    .line 253
    const/4 v13, 0x1

    invoke-direct {v0, v1, v5, v10, v13}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 254
    const/4 v4, -0x1

    .line 255
    const/4 v11, 0x1

    goto :goto_bb

    .line 251
    :cond_aa
    const-string v10, "invalid empty label"

    invoke-static {v1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 257
    :cond_b1
    if-ne v4, v13, :cond_b4

    .line 258
    move v4, v3

    .line 259
    :cond_b4
    if-gt v11, v15, :cond_be

    .line 261
    add-int/lit8 v13, v11, 0x1

    .restart local v13    # "pos":I
    aput-byte v12, v5, v11

    goto :goto_87

    .line 225
    .end local v12    # "b":B
    .end local v13    # "pos":I
    :goto_bb
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 260
    .restart local v12    # "b":B
    :cond_be
    const-string v10, "label too long"

    invoke-static {v1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 264
    .end local v3    # "i":I
    .end local v12    # "b":B
    :cond_c5
    if-lez v7, :cond_d1

    if-lt v7, v14, :cond_ca

    goto :goto_d1

    .line 265
    :cond_ca
    const-string v3, "bad escape"

    invoke-static {v1, v3}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 266
    :cond_d1
    :goto_d1
    if-nez v6, :cond_f4

    .line 268
    if-ne v4, v13, :cond_dd

    .line 269
    sget-object v3, Lorg/xbill/DNS/Name;->emptyLabel:[B

    const/4 v12, 0x1

    invoke-direct {v0, v1, v3, v10, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 270
    const/4 v9, 0x1

    goto :goto_e6

    .line 272
    :cond_dd
    const/4 v12, 0x1

    add-int/lit8 v3, v11, -0x1

    int-to-byte v3, v3

    aput-byte v3, v5, v10

    .line 273
    invoke-direct {v0, v1, v5, v10, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 275
    :goto_e6
    if-eqz v2, :cond_f3

    if-nez v9, :cond_f3

    .line 276
    iget-object v3, v2, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct/range {p2 .. p2}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v12

    invoke-direct {v0, v1, v3, v10, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 277
    :cond_f3
    return-void

    .line 267
    :cond_f4
    const-string v3, "bad escape"

    invoke-static {v1, v3}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 207
    .end local v4    # "labelstart":I
    .end local v5    # "label":[B
    .end local v6    # "escaped":Z
    .end local v7    # "digits":I
    .end local v8    # "intval":I
    .end local v9    # "absolute":Z
    .end local v11    # "pos":I
    :cond_fb
    const-string v3, "empty name"

    invoke-static {v1, v3}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3
.end method

.method public constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .registers 11
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "done":Z
    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 348
    .local v1, "label":[B
    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 350
    .local v0, "savedState":Z
    .local v3, "done":Z
    .local v4, "pos":I
    :cond_c
    :goto_c
    if-nez v3, :cond_bb

    .line 351
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 352
    .local v5, "len":I
    and-int/lit16 v6, v5, 0xc0

    if-eqz v6, :cond_95

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_8d

    .line 366
    .end local v4    # "pos":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 367
    .restart local v4    # "pos":I
    and-int/lit16 v6, v5, -0xc1

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v4, v6

    .line 368
    const-string v6, "verbosecompression"

    invoke-static {v6}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 369
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "currently "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, ", pointer to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    :cond_4d
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ge v4, v6, :cond_85

    .line 374
    if-nez v0, :cond_5b

    .line 375
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->save()V

    .line 376
    const/4 v0, 0x1

    .line 378
    :cond_5b
    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 379
    const-string v6, "verbosecompression"

    invoke-static {v6}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 380
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "current name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v8, "\', seeking to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 373
    :cond_85
    new-instance v2, Lorg/xbill/DNS/WireParseException;

    const-string v6, "bad compression"

    invoke-direct {v2, v6}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_8d
    new-instance v2, Lorg/xbill/DNS/WireParseException;

    const-string v6, "bad label type"

    invoke-direct {v2, v6}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :cond_95
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v6

    const/16 v7, 0x80

    if-ge v6, v7, :cond_b3

    .line 356
    const/4 v6, 0x1

    if-nez v5, :cond_a8

    .line 357
    sget-object v7, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {p0, v7, v2, v6}, Lorg/xbill/DNS/Name;->append([BII)V

    .line 358
    const/4 v3, 0x1

    goto/16 :goto_c

    .line 360
    :cond_a8
    int-to-byte v7, v5

    aput-byte v7, v1, v2

    .line 361
    invoke-virtual {p1, v1, v6, v5}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    .line 362
    invoke-direct {p0, v1, v2, v6}, Lorg/xbill/DNS/Name;->append([BII)V

    .line 364
    goto/16 :goto_c

    .line 355
    .end local v4    # "pos":I
    :cond_b3
    new-instance v2, Lorg/xbill/DNS/WireParseException;

    const-string v4, "too many labels"

    invoke-direct {v2, v4}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    .end local v5    # "len":I
    .restart local v4    # "pos":I
    :cond_bb
    if-eqz v0, :cond_c0

    .line 388
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->restore()V

    .line 390
    :cond_c0
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .registers 6
    .param p1, "src"    # Lorg/xbill/DNS/Name;
    .param p2, "n"    # I

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 409
    .local v0, "slabels":I
    if-gt p2, v0, :cond_27

    .line 412
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    iput-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 413
    sub-int v1, v0, p2

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    const/4 v2, 0x7

    if-ge v1, v2, :cond_26

    sub-int v2, v0, p2

    if-ge v1, v2, :cond_26

    .line 415
    add-int v2, v1, p2

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 416
    .end local v1    # "i":I
    :cond_26
    return-void

    .line 410
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempted to remove too many labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 399
    return-void
.end method

.method private final append([BII)V
    .registers 13
    .param p1, "array"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v0, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 142
    .local v0, "length":I
    :goto_f
    const/4 v2, 0x0

    .line 143
    .local v2, "alength":I
    const/4 v3, 0x0

    move v4, v2

    move v2, p2

    .local v2, "pos":I
    .local v3, "i":I
    .local v4, "alength":I
    :goto_13
    if-ge v3, p3, :cond_2a

    .line 144
    aget-byte v5, p1, v2

    .line 145
    .local v5, "len":I
    const/16 v6, 0x3f

    if-gt v5, v6, :cond_22

    .line 147
    add-int/lit8 v5, v5, 0x1

    .line 148
    add-int/2addr v2, v5

    .line 149
    add-int/2addr v4, v5

    .line 143
    .end local v5    # "len":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 146
    .restart local v5    # "len":I
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v6, "invalid label"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v2    # "pos":I
    .end local v3    # "i":I
    .end local v5    # "len":I
    :cond_2a
    add-int v2, v0, v4

    .line 152
    .local v2, "newlength":I
    const/16 v3, 0xff

    if-gt v2, v3, :cond_6a

    .line 154
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    .line 155
    .local v3, "labels":I
    add-int v5, v3, p3

    .line 156
    .local v5, "newlabels":I
    const/16 v6, 0x80

    if-gt v5, v6, :cond_62

    .line 158
    new-array v6, v2, [B

    .line 159
    .local v6, "newname":[B
    if-eqz v0, :cond_47

    .line 160
    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v8

    invoke-static {v7, v8, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_47
    invoke-static {p1, p2, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 163
    const/4 v1, 0x0

    move v7, v1

    move v1, v0

    .local v1, "pos":I
    .local v7, "i":I
    :goto_4f
    if-ge v7, p3, :cond_5e

    .line 164
    add-int v8, v3, v7

    invoke-direct {p0, v8, v1}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 165
    aget-byte v8, v6, v1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v1, v8

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 167
    .end local v1    # "pos":I
    .end local v7    # "i":I
    :cond_5e
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 168
    return-void

    .line 157
    .end local v6    # "newname":[B
    :cond_62
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v6, "too many labels"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    .end local v3    # "labels":I
    .end local v5    # "newlabels":I
    :cond_6a
    new-instance v1, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v1}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v1
.end method

.method private final appendFromString(Ljava/lang/String;[BII)V
    .registers 7
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "start"    # I
    .param p4, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_3
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_3} :catch_5

    .line 184
    nop

    .line 185
    return-void

    .line 182
    :catch_5
    move-exception v0

    .line 183
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    const-string v1, "Name too long"

    invoke-static {p1, v1}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method private final appendSafe([BII)V
    .registers 5
    .param p1, "array"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I

    .line 190
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_3
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_3} :catch_4

    .line 193
    goto :goto_5

    .line 192
    :catch_4
    move-exception v0

    .line 194
    :goto_5
    return-void
.end method

.method private byteString([BI)Ljava/lang/String;
    .registers 10
    .param p1, "array"    # [B
    .param p2, "pos"    # I

    .line 566
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 567
    .local v0, "sb":Ljava/lang/StringBuffer;
    add-int/lit8 v1, p2, 0x1

    .local v1, "pos":I
    aget-byte p2, p1, p2

    .line 568
    .local p2, "len":I
    move v2, v1

    .local v2, "i":I
    :goto_a
    add-int v3, v1, p2

    if-ge v2, v3, :cond_59

    .line 569
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 570
    .local v3, "b":I
    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-le v3, v4, :cond_49

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1d

    goto :goto_49

    .line 574
    :cond_1d
    const/16 v4, 0x22

    if-eq v3, v4, :cond_41

    const/16 v4, 0x28

    if-eq v3, v4, :cond_41

    const/16 v4, 0x29

    if-eq v3, v4, :cond_41

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_41

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_41

    if-eq v3, v5, :cond_41

    const/16 v4, 0x40

    if-eq v3, v4, :cond_41

    const/16 v4, 0x24

    if-ne v3, v4, :cond_3c

    goto :goto_41

    .line 581
    :cond_3c
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_56

    .line 577
    :cond_41
    :goto_41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_56

    .line 571
    :cond_49
    :goto_49
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 572
    sget-object v4, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    .end local v3    # "b":I
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 583
    .end local v2    # "i":I
    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .registers 6
    .param p0, "prefix"    # Lorg/xbill/DNS/Name;
    .param p1, "suffix"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    return-object p0

    .line 429
    :cond_7
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 430
    .local v0, "newname":Lorg/xbill/DNS/Name;
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 431
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p1}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V

    .line 432
    return-object v0
.end method

.method private static final copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .registers 8
    .param p0, "src"    # Lorg/xbill/DNS/Name;
    .param p1, "dst"    # Lorg/xbill/DNS/Name;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    if-nez v1, :cond_10

    .line 125
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    iput-object v0, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 126
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    iput-wide v0, p1, Lorg/xbill/DNS/Name;->offsets:J

    goto :goto_3b

    .line 128
    :cond_10
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .line 129
    .local v1, "offset0":I
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 130
    .local v2, "namelen":I
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 131
    .local v3, "labels":I
    new-array v4, v2, [B

    iput-object v4, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 132
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v5, p1, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v4, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    nop

    .local v0, "i":I
    :goto_28
    if-ge v0, v3, :cond_38

    const/4 v4, 0x7

    if-ge v0, v4, :cond_38

    .line 134
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {p1, v0, v4}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 135
    .end local v0    # "i":I
    :cond_38
    invoke-direct {p1, v3}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 137
    .end local v1    # "offset0":I
    .end local v2    # "namelen":I
    .end local v3    # "labels":I
    :goto_3b
    return-void
.end method

.method private final equals([BI)Z
    .registers 12
    .param p1, "b"    # [B
    .param p2, "bpos"    # I

    .line 734
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 735
    .local v0, "labels":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    .local v3, "pos":I
    :goto_a
    if-ge v1, v0, :cond_50

    .line 736
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v3

    aget-byte v5, p1, p2

    if-eq v4, v5, :cond_15

    .line 737
    return v2

    .line 738
    :cond_15
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v5, v3, 0x1

    .local v5, "pos":I
    aget-byte v3, v4, v3

    .line 739
    .local v3, "len":I
    add-int/lit8 p2, p2, 0x1

    .line 740
    const/16 v4, 0x3f

    if-gt v3, v4, :cond_48

    .line 742
    move v4, p2

    const/4 p2, 0x0

    .local v4, "bpos":I
    .local p2, "j":I
    :goto_23
    if-ge p2, v3, :cond_43

    .line 743
    sget-object v6, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v8, v5, 0x1

    .local v8, "pos":I
    aget-byte v5, v7, v5

    .end local v5    # "pos":I
    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v6, v5

    sget-object v6, Lorg/xbill/DNS/Name;->lowercase:[B

    add-int/lit8 v7, v4, 0x1

    .local v7, "bpos":I
    aget-byte v4, p1, v4

    .end local v4    # "bpos":I
    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v6, v4

    if-eq v5, v4, :cond_3e

    .line 745
    return v2

    .line 742
    :cond_3e
    add-int/lit8 p2, p2, 0x1

    move v4, v7

    move v5, v8

    goto :goto_23

    .line 735
    .end local v3    # "len":I
    .end local v7    # "bpos":I
    .end local v8    # "pos":I
    .end local p2    # "j":I
    .restart local v4    # "bpos":I
    .restart local v5    # "pos":I
    :cond_43
    add-int/lit8 v1, v1, 0x1

    move p2, v4

    move v3, v5

    goto :goto_a

    .line 741
    .end local v4    # "bpos":I
    .restart local v3    # "len":I
    .local p2, "bpos":I
    :cond_48
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "invalid label"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 747
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v5    # "pos":I
    :cond_50
    const/4 v1, 0x1

    return v1
.end method

.method public static fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 331
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_5
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 333
    :catch_6
    move-exception v0

    .line 334
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 301
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 302
    return-object p1

    .line 303
    :cond_b
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 304
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    return-object v0

    .line 306
    :cond_16
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private final getlabels()I
    .registers 5

    .line 119
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private final offset(I)I
    .registers 5
    .param p1, "n"    # I

    .line 96
    if-nez p1, :cond_a

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    if-nez v0, :cond_a

    .line 97
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_a
    if-ltz p1, :cond_32

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    if-ge p1, v0, :cond_32

    .line 100
    const/4 v0, 0x7

    if-ge p1, v0, :cond_1f

    .line 101
    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 102
    .local v0, "shift":I
    iget-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    ushr-long/2addr v1, v0

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 104
    .end local v0    # "shift":I
    :cond_1f
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .line 105
    .local v1, "pos":I
    nop

    .local v0, "i":I
    :goto_25
    if-ge v0, p1, :cond_31

    .line 106
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 107
    .end local v0    # "i":I
    :cond_31
    return v1

    .line 99
    .end local v1    # "pos":I
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 172
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final setlabels(I)V
    .registers 6
    .param p1, "labels"    # I

    .line 113
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 114
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 115
    return-void
.end method

.method private final setoffset(II)V
    .registers 10
    .param p1, "n"    # I
    .param p2, "offset"    # I

    .line 87
    const/4 v0, 0x7

    if-lt p1, v0, :cond_4

    .line 88
    return-void

    .line 89
    :cond_4
    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 90
    .local v0, "shift":I
    iget-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v3, 0xff

    shl-long/2addr v3, v0

    const-wide/16 v5, -0x1

    xor-long/2addr v3, v5

    and-long/2addr v1, v3

    iput-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 91
    iget-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    int-to-long v3, p2

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 92
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 18
    .param p1, "o"    # Ljava/lang/Object;

    .line 796
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lorg/xbill/DNS/Name;

    .line 798
    .local v1, "arg":Lorg/xbill/DNS/Name;
    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    .line 799
    return v2

    .line 801
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 802
    .local v3, "labels":I
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v4

    .line 803
    .local v4, "alabels":I
    if-le v3, v4, :cond_16

    move v5, v4

    goto :goto_17

    :cond_16
    move v5, v3

    .line 805
    .local v5, "compares":I
    :goto_17
    const/4 v6, 0x1

    const/4 v7, 0x1

    .local v7, "i":I
    :goto_19
    if-gt v7, v5, :cond_5f

    .line 806
    sub-int v8, v3, v7

    invoke-direct {v0, v8}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v8

    .line 807
    .local v8, "start":I
    sub-int v9, v4, v7

    invoke-direct {v1, v9}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v9

    .line 808
    .local v9, "astart":I
    iget-object v10, v0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v10, v10, v8

    .line 809
    .local v10, "length":I
    iget-object v11, v1, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v11, v11, v9

    .line 810
    .local v11, "alength":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_30
    if-ge v12, v10, :cond_56

    if-ge v12, v11, :cond_56

    .line 811
    sget-object v13, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v14, v0, Lorg/xbill/DNS/Name;->name:[B

    add-int v15, v12, v8

    add-int/2addr v15, v6

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    sget-object v14, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v2, v1, Lorg/xbill/DNS/Name;->name:[B

    add-int v15, v12, v9

    add-int/2addr v15, v6

    aget-byte v2, v2, v15

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v14, v2

    sub-int/2addr v13, v2

    .line 813
    .local v13, "n":I
    if-eqz v13, :cond_52

    .line 814
    return v13

    .line 810
    .end local v13    # "n":I
    :cond_52
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_30

    .line 816
    .end local v12    # "j":I
    :cond_56
    if-eq v10, v11, :cond_5b

    .line 817
    sub-int v2, v10, v11

    return v2

    .line 805
    .end local v8    # "start":I
    .end local v9    # "astart":I
    .end local v10    # "length":I
    .end local v11    # "alength":I
    :cond_5b
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto :goto_19

    .line 819
    .end local v7    # "i":I
    :cond_5f
    sub-int v2, v3, v4

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "arg"    # Ljava/lang/Object;

    .line 755
    if-ne p1, p0, :cond_4

    .line 756
    const/4 v0, 0x1

    return v0

    .line 757
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    instance-of v1, p1, Lorg/xbill/DNS/Name;

    if-nez v1, :cond_c

    goto :goto_3a

    .line 759
    :cond_c
    move-object v1, p1

    check-cast v1, Lorg/xbill/DNS/Name;

    .line 760
    .local v1, "d":Lorg/xbill/DNS/Name;
    iget v2, v1, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v2, :cond_16

    .line 761
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 762
    :cond_16
    iget v2, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v2, :cond_1d

    .line 763
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 764
    :cond_1d
    iget v2, v1, Lorg/xbill/DNS/Name;->hashcode:I

    iget v3, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eq v2, v3, :cond_24

    .line 765
    return v0

    .line 766
    :cond_24
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    if-eq v2, v3, :cond_2f

    .line 767
    return v0

    .line 768
    :cond_2f
    iget-object v2, v1, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {v1, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v0

    return v0

    .line 758
    .end local v1    # "d":Lorg/xbill/DNS/Name;
    :cond_3a
    :goto_3a
    return v0
.end method

.method public fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    .registers 13
    .param p1, "dname"    # Lorg/xbill/DNS/DNAMERecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 484
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 485
    .local v0, "dnameowner":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 486
    .local v1, "dnametarget":Lorg/xbill/DNS/Name;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 487
    const/4 v2, 0x0

    return-object v2

    .line 489
    :cond_10
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    sub-int/2addr v2, v3

    .line 490
    .local v2, "plabels":I
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v3

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v4

    sub-int/2addr v3, v4

    .line 491
    .local v3, "plength":I
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    .line 493
    .local v5, "pstart":I
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v6

    .line 494
    .local v6, "dlabels":I
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v7

    .line 496
    .local v7, "dlength":I
    add-int v8, v3, v7

    const/16 v9, 0xff

    if-gt v8, v9, :cond_69

    .line 499
    new-instance v8, Lorg/xbill/DNS/Name;

    invoke-direct {v8}, Lorg/xbill/DNS/Name;-><init>()V

    .line 500
    .local v8, "newname":Lorg/xbill/DNS/Name;
    add-int v9, v2, v6

    invoke-direct {v8, v9}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 501
    add-int v9, v3, v7

    new-array v9, v9, [B

    iput-object v9, v8, Lorg/xbill/DNS/Name;->name:[B

    .line 502
    iget-object v9, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v10, v8, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v9, v5, v10, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget-object v9, v1, Lorg/xbill/DNS/Name;->name:[B

    iget-object v10, v8, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v9, v4, v10, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    const/4 v9, 0x0

    .local v4, "pos":I
    .local v9, "i":I
    :goto_54
    const/4 v10, 0x7

    if-ge v9, v10, :cond_68

    add-int v10, v2, v6

    if-ge v9, v10, :cond_68

    .line 506
    invoke-direct {v8, v9, v4}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 507
    iget-object v10, v8, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v10, v10, v4

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v4, v10

    .line 505
    add-int/lit8 v9, v9, 0x1

    goto :goto_54

    .line 509
    .end local v4    # "pos":I
    .end local v9    # "i":I
    :cond_68
    return-object v8

    .line 497
    .end local v8    # "newname":Lorg/xbill/DNS/Name;
    :cond_69
    new-instance v4, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v4}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v4
.end method

.method public getLabel(I)[B
    .registers 7
    .param p1, "n"    # I

    .line 620
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 621
    .local v0, "pos":I
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 622
    .local v1, "len":B
    new-array v2, v1, [B

    .line 623
    .local v2, "label":[B
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    return-object v2
.end method

.method public getLabelString(I)Ljava/lang/String;
    .registers 4
    .param p1, "n"    # I

    .line 634
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 635
    .local v0, "pos":I
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .registers 6

    .line 776
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eqz v0, :cond_7

    .line 777
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    return v0

    .line 778
    :cond_7
    const/4 v0, 0x0

    .line 779
    .local v0, "code":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 780
    shl-int/lit8 v2, v0, 0x3

    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 781
    .end local v1    # "i":I
    :cond_23
    iput v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    .line 782
    iget v1, p0, Lorg/xbill/DNS/Name;->hashcode:I

    return v1
.end method

.method public isAbsolute()Z
    .registers 5

    .line 527
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 528
    return v1

    .line 529
    :cond_8
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v0, v0, v2

    if-nez v0, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    return v1
.end method

.method public isWild()Z
    .registers 5

    .line 517
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 518
    return v1

    .line 519
    :cond_8
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v0, v0, v2

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_19

    const/4 v1, 0x1

    nop

    :cond_19
    return v1
.end method

.method public labels()I
    .registers 2

    .line 547
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    return v0
.end method

.method public length()S
    .registers 3

    .line 537
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 538
    return v1

    .line 539
    :cond_8
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v0, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .registers 9
    .param p1, "origin"    # Lorg/xbill/DNS/Name;

    .line 443
    if-eqz p1, :cond_37

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_37

    .line 445
    :cond_9
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 446
    .local v0, "newname":Lorg/xbill/DNS/Name;
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 447
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->length()S

    move-result v2

    sub-int/2addr v1, v2

    .line 448
    .local v1, "length":I
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    sub-int/2addr v2, v3

    .line 449
    .local v2, "labels":I
    invoke-direct {v0, v2}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 450
    new-array v3, v1, [B

    iput-object v3, v0, Lorg/xbill/DNS/Name;->name:[B

    .line 451
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    iget-object v6, v0, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v3, v5, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    return-object v0

    .line 444
    .end local v0    # "newname":Lorg/xbill/DNS/Name;
    .end local v1    # "length":I
    .end local v2    # "labels":I
    :cond_37
    :goto_37
    return-object p0
.end method

.method public subdomain(Lorg/xbill/DNS/Name;)Z
    .registers 6
    .param p1, "domain"    # Lorg/xbill/DNS/Name;

    .line 555
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 556
    .local v0, "labels":I
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 557
    .local v1, "dlabels":I
    if-le v1, v0, :cond_c

    .line 558
    const/4 v2, 0x0

    return v2

    .line 559
    :cond_c
    if-ne v1, v0, :cond_13

    .line 560
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 561
    :cond_13
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    sub-int v3, v0, v1

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    invoke-direct {p1, v2, v3}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 592
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 593
    .local v0, "labels":I
    if-nez v0, :cond_9

    .line 594
    const-string v1, "@"

    return-object v1

    .line 595
    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v4

    aget-byte v3, v3, v4

    if-nez v3, :cond_1a

    .line 596
    const-string v1, "."

    return-object v1

    .line 597
    :cond_1a
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 598
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .local v1, "pos":I
    :goto_24
    if-ge v4, v0, :cond_4d

    .line 599
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v5, v5, v1

    .line 600
    .local v5, "len":I
    const/16 v6, 0x3f

    if-gt v5, v6, :cond_45

    .line 602
    if-nez v5, :cond_31

    .line 603
    goto :goto_4d

    .line 604
    :cond_31
    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v6, v1}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 606
    add-int/lit8 v6, v5, 0x1

    add-int/2addr v1, v6

    .line 598
    .end local v5    # "len":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 601
    .restart local v5    # "len":I
    :cond_45
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "invalid label"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    .end local v1    # "pos":I
    .end local v4    # "i":I
    .end local v5    # "len":I
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 609
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 610
    :cond_5b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V
    .registers 11
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;

    .line 646
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 650
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 651
    .local v0, "labels":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_45

    .line 653
    if-nez v2, :cond_14

    .line 654
    move-object v3, p0

    goto :goto_19

    .line 656
    :cond_14
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, p0, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 657
    .local v3, "tname":Lorg/xbill/DNS/Name;
    :goto_19
    const/4 v4, -0x1

    .line 658
    .local v4, "pos":I
    if-eqz p2, :cond_20

    .line 659
    invoke-virtual {p2, v3}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v4

    .line 660
    :cond_20
    if-ltz v4, :cond_2a

    .line 661
    const v1, 0xc000

    or-int/2addr v1, v4

    .line 662
    .end local v4    # "pos":I
    .local v1, "pos":I
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 663
    return-void

    .line 665
    .end local v1    # "pos":I
    .restart local v4    # "pos":I
    :cond_2a
    if-eqz p2, :cond_33

    .line 666
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v5

    invoke-virtual {p2, v5, v3}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 667
    :cond_33
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    .line 668
    .local v5, "off":I
    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v7, v7, v5

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v6, v5, v7}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 651
    .end local v3    # "tname":Lorg/xbill/DNS/Name;
    .end local v4    # "pos":I
    .end local v5    # "off":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 671
    .end local v2    # "i":I
    :cond_45
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 672
    return-void

    .line 647
    .end local v0    # "labels":I
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toWire() called on non-absolute name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .registers 4
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 726
    if-eqz p3, :cond_6

    .line 727
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_9

    .line 729
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 730
    :goto_9
    return-void
.end method

.method public toWire()[B
    .registers 3

    .line 680
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 681
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 682
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V
    .registers 3
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .line 691
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v0

    .line 692
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 693
    return-void
.end method

.method public toWireCanonical()[B
    .registers 13

    .line 701
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 702
    .local v0, "labels":I
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 703
    new-array v1, v1, [B

    return-object v1

    .line 704
    :cond_a
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 705
    .local v2, "b":[B
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v4

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    .local v3, "dpos":I
    .local v4, "i":I
    .local v5, "spos":I
    :goto_1c
    if-ge v4, v0, :cond_55

    .line 706
    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v6, v6, v5

    .line 707
    .local v6, "len":I
    const/16 v7, 0x3f

    if-gt v6, v7, :cond_4d

    .line 709
    add-int/lit8 v7, v3, 0x1

    .local v7, "dpos":I
    iget-object v8, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v9, v5, 0x1

    .local v9, "spos":I
    aget-byte v5, v8, v5

    .end local v5    # "spos":I
    aput-byte v5, v2, v3

    .line 710
    .end local v3    # "dpos":I
    move v5, v9

    const/4 v3, 0x0

    .end local v9    # "spos":I
    .local v3, "j":I
    .restart local v5    # "spos":I
    :goto_32
    if-ge v3, v6, :cond_49

    .line 711
    add-int/lit8 v8, v7, 0x1

    .local v8, "dpos":I
    sget-object v9, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v10, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v11, v5, 0x1

    .local v11, "spos":I
    aget-byte v5, v10, v5

    .end local v5    # "spos":I
    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v9, v5

    aput-byte v5, v2, v7

    .line 710
    .end local v7    # "dpos":I
    add-int/lit8 v3, v3, 0x1

    move v7, v8

    move v5, v11

    goto :goto_32

    .line 705
    .end local v3    # "j":I
    .end local v6    # "len":I
    .end local v8    # "dpos":I
    .end local v11    # "spos":I
    .restart local v5    # "spos":I
    .restart local v7    # "dpos":I
    :cond_49
    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_1c

    .line 708
    .end local v7    # "dpos":I
    .local v3, "dpos":I
    .restart local v6    # "len":I
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v7, "invalid label"

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 713
    .end local v3    # "dpos":I
    .end local v4    # "i":I
    .end local v5    # "spos":I
    .end local v6    # "len":I
    :cond_55
    return-object v2
.end method

.method public wild(I)Lorg/xbill/DNS/Name;
    .registers 6
    .param p1, "n"    # I

    .line 461
    const/4 v0, 0x1

    if-lt p1, v0, :cond_25

    .line 465
    :try_start_3
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 466
    .local v0, "newname":Lorg/xbill/DNS/Name;
    sget-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 467
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_1b
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 468
    return-object v0

    .line 470
    .end local v0    # "newname":Lorg/xbill/DNS/Name;
    :catch_1c
    move-exception v0

    .line 471
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Name.wild: concatenate failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    .end local v0    # "e":Lorg/xbill/DNS/NameTooLongException;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must replace 1 or more labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
