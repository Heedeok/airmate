.class final Lorg/jboss/netty/util/internal/jzlib/Inflate;
.super Ljava/lang/Object;
.source "Inflate.java"


# static fields
.field private static final BAD:I = 0xd

.field private static final BLOCKS:I = 0x7

.field private static final CHECK1:I = 0xb

.field private static final CHECK2:I = 0xa

.field private static final CHECK3:I = 0x9

.field private static final CHECK4:I = 0x8

.field private static final DICT0:I = 0x6

.field private static final DICT1:I = 0x5

.field private static final DICT2:I = 0x4

.field private static final DICT3:I = 0x3

.field private static final DICT4:I = 0x2

.field private static final DONE:I = 0xc

.field private static final FLAG:I = 0x1

.field private static final GZIP_CM:I = 0x10

.field private static final GZIP_CRC32:I = 0x18

.field private static final GZIP_FCOMMENT:I = 0x16

.field private static final GZIP_FEXTRA:I = 0x14

.field private static final GZIP_FHCRC:I = 0x17

.field private static final GZIP_FLG:I = 0x11

.field private static final GZIP_FNAME:I = 0x15

.field private static final GZIP_ID1:I = 0xe

.field private static final GZIP_ID2:I = 0xf

.field private static final GZIP_ISIZE:I = 0x19

.field private static final GZIP_MTIME_XFL_OS:I = 0x12

.field private static final GZIP_XLEN:I = 0x13

.field private static final METHOD:I

.field private static final mark:[B


# instance fields
.field private blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

.field private gzipBytesToRead:I

.field private gzipCRC32:I

.field private gzipFlag:I

.field private gzipISize:I

.field private gzipUncompressedBytes:I

.field private gzipXLen:I

.field private marker:I

.field private method:I

.field private mode:I

.field private need:J

.field private final was:[J

.field private wbits:I

.field private wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 587
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mark:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->was:[J

    return-void
.end method

.method private inflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .registers 6
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 102
    if-eqz p1, :cond_3b

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_7

    goto :goto_3b

    .line 106
    :cond_7
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 107
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 108
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Inflate$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_3e

    goto :goto_31

    .line 117
    :pswitch_1f
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0xe

    iput v3, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_31

    .line 114
    :pswitch_26
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 115
    goto :goto_31

    .line 110
    :pswitch_2b
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v3, 0x7

    iput v3, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 111
    nop

    .line 120
    :goto_31
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    .line 121
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    .line 122
    return v2

    .line 103
    :cond_3b
    :goto_3b
    const/4 v0, -0x2

    return v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method

.method static inflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I
    .registers 11
    .param p0, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p1, "dictionary"    # [B
    .param p2, "dictLength"    # I

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "index":I
    move v1, p2

    .line 568
    .local v1, "length":I
    if-eqz p0, :cond_48

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_10

    goto :goto_48

    .line 572
    :cond_10
    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, p2}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v2

    iget-wide v5, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1f

    .line 573
    const/4 v2, -0x3

    return v2

    .line 576
    :cond_1f
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v4}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 578
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    if-lt v1, v2, :cond_3b

    .line 579
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    shl-int v2, v3, v2

    add-int/lit8 v1, v2, -0x1

    .line 580
    sub-int v0, p2, v1

    .line 582
    :cond_3b
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v2, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v2, p1, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->set_dictionary([BII)V

    .line 583
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v3, 0x7

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 584
    return v4

    .line 569
    :cond_48
    :goto_48
    const/4 v2, -0x2

    return v2
.end method


# virtual methods
.method inflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .registers 23
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "f"    # I

    .line 164
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_61c

    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-eqz v3, :cond_61c

    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    if-nez v3, :cond_10

    goto/16 :goto_61c

    .line 167
    :cond_10
    const/4 v3, 0x4

    move/from16 v5, p2

    if-ne v5, v3, :cond_17

    const/4 v6, -0x5

    goto :goto_18

    :cond_17
    const/4 v6, 0x0

    :goto_18
    move v5, v6

    .line 168
    .end local p2    # "f":I
    .local v5, "f":I
    const/4 v6, -0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 171
    .local v6, "r":I
    .local v7, "b":I
    .local v8, "old_next_out_index":I
    :goto_1c
    iget-object v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v9, v9, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const/16 v10, 0xf

    const/4 v12, 0x3

    const/16 v14, 0x10

    const/4 v0, 0x5

    const/16 v13, 0x8

    const/16 v11, 0xd

    const-wide/16 v18, 0x1

    const/4 v15, 0x1

    packed-switch v9, :pswitch_data_620

    .line 560
    const/4 v0, -0x2

    return v0

    .line 519
    :goto_32
    :pswitch_32
    iget v9, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v9, :cond_68

    .line 520
    iget v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v9, :cond_3b

    .line 521
    return v6

    .line 523
    :cond_3b
    move v6, v5

    .line 524
    iget v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v9, v15

    iput v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 525
    iget-wide v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v9, v9, v18

    iput-wide v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 526
    iget v9, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    sub-int/2addr v9, v15

    iput v9, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 527
    iget-object v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v10, v9, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    iget-object v14, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v15, v4, 0x1

    iput v15, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    iget v14, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    rsub-int/lit8 v14, v14, 0x3

    mul-int/lit8 v14, v14, 0x8

    shl-int/2addr v4, v14

    or-int/2addr v4, v10

    iput v4, v9, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    .line 519
    const/4 v15, 0x1

    goto :goto_32

    .line 530
    :cond_68
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v9, v9, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    if-eq v4, v9, :cond_7e

    .line 531
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 532
    const-string v4, "incorrect CRC32 checksum"

    iput-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 533
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 534
    goto/16 :goto_551

    .line 536
    :cond_7e
    iput v3, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 537
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v9, 0x19

    iput v9, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 539
    :goto_86
    :pswitch_86
    iget v4, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v4, :cond_bc

    .line 540
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_8f

    .line 541
    return v6

    .line 543
    :cond_8f
    move v6, v5

    .line 544
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    iput v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 545
    iget-wide v14, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v14, v14, v18

    iput-wide v14, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 546
    iget v4, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    sub-int/2addr v4, v9

    iput v4, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 547
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v9, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    iget-object v10, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v14, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v10, v10, v14

    and-int/lit16 v10, v10, 0xff

    iget v14, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    rsub-int/lit8 v14, v14, 0x3

    mul-int/lit8 v14, v14, 0x8

    shl-int/2addr v10, v14

    or-int/2addr v9, v10

    iput v9, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    goto :goto_86

    .line 550
    :cond_bc
    iget v4, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    iget-object v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v9, v9, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    if-eq v4, v9, :cond_d2

    .line 551
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 552
    const-string v4, "incorrect ISIZE checksum"

    iput-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 553
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 554
    goto/16 :goto_551

    .line 557
    :cond_d2
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v4, 0xc

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 558
    goto/16 :goto_551

    .line 504
    :pswitch_da
    const/4 v0, 0x2

    goto/16 :goto_2a4

    .line 373
    :pswitch_dd
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_e2

    .line 374
    return v6

    .line 376
    :cond_e2
    move v6, v5

    .line 377
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    iput v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 378
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 380
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_10d

    .line 381
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 382
    const-string v3, "not a gzip stream"

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 383
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 384
    goto/16 :goto_551

    .line 386
    :cond_10d
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v10, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 388
    :pswitch_111
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_116

    .line 389
    return v6

    .line 391
    :cond_116
    move v6, v5

    .line 392
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 393
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 395
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8b

    if-eq v3, v4, :cond_141

    .line 396
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 397
    const-string v3, "not a gzip stream"

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 398
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 399
    goto/16 :goto_551

    .line 401
    :cond_141
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v14, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 403
    :pswitch_145
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_14a

    .line 404
    return v6

    .line 406
    :cond_14a
    move v6, v5

    .line 407
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 408
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 410
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v13, :cond_173

    .line 411
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 412
    const-string v3, "unknown compression method"

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 413
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 414
    goto/16 :goto_551

    .line 416
    :cond_173
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v4, 0x11

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 418
    :pswitch_179
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_17e

    .line 419
    return v6

    .line 421
    :cond_17e
    move v6, v5

    .line 422
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 423
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 424
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    .line 426
    iget v3, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit16 v3, v3, 0xe2

    if-eqz v3, :cond_1ad

    .line 427
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 428
    const-string v3, "unsupported flag"

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 429
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 430
    goto/16 :goto_551

    .line 432
    :cond_1ad
    const/4 v0, 0x6

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 433
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x12

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 435
    :goto_1b6
    :pswitch_1b6
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v0, :cond_1d7

    .line 436
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_1bf

    .line 437
    return v6

    .line 439
    :cond_1bf
    move v6, v5

    .line 440
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 441
    iget-wide v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v9, v9, v18

    iput-wide v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 442
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 443
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    goto :goto_1b6

    .line 445
    :cond_1d7
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x13

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 446
    const/4 v0, 0x0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    .line 447
    const/4 v0, 0x2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 449
    :pswitch_1e3
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_2d1

    .line 450
    :goto_1e9
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v0, :cond_21e

    .line 451
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_1f2

    .line 452
    return v6

    .line 454
    :cond_1f2
    move v6, v5

    .line 455
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 456
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 457
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget v4, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    const/4 v9, 0x1

    rsub-int/lit8 v15, v4, 0x1

    mul-int/lit8 v15, v15, 0x8

    shl-int/2addr v3, v15

    or-int/2addr v0, v3

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    .line 458
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    goto :goto_1e9

    .line 460
    :cond_21e
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 461
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x14

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 467
    :goto_228
    :pswitch_228
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v0, :cond_249

    .line 468
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_231

    .line 469
    return v6

    .line 471
    :cond_231
    move v6, v5

    .line 472
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 473
    iget-wide v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v9, v9, v18

    iput-wide v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 474
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 475
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    goto :goto_228

    .line 477
    :cond_249
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x15

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 479
    :pswitch_24f
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_272

    .line 481
    :cond_254
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_259

    .line 482
    return v6

    .line 484
    :cond_259
    move v6, v5

    .line 485
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 486
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 487
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v0, v0, v3

    if-nez v0, :cond_254

    .line 489
    :cond_272
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x16

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 491
    :pswitch_278
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/2addr v0, v14

    if-eqz v0, :cond_29b

    .line 493
    :cond_27d
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_282

    .line 494
    return v6

    .line 496
    :cond_282
    move v6, v5

    .line 497
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 498
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 499
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v0, v0, v3

    if-nez v0, :cond_27d

    .line 501
    :cond_29b
    const/4 v0, 0x2

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 502
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v4, 0x17

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 504
    :goto_2a4
    iget v3, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2ca

    .line 505
    :goto_2a9
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v0, :cond_2ca

    .line 506
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_2b2

    .line 507
    return v6

    .line 509
    :cond_2b2
    move v6, v5

    .line 510
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 511
    iget-wide v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v9, v9, v18

    iput-wide v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 512
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 513
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    goto :goto_2a9

    .line 516
    :cond_2ca
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v3, 0x7

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 517
    goto/16 :goto_551

    .line 463
    :cond_2d1
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x15

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 464
    goto/16 :goto_551

    .line 371
    :pswitch_2d9
    const/4 v0, -0x3

    return v0

    .line 281
    .end local v8    # "old_next_out_index":I
    :pswitch_2db
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 283
    .local v3, "old_next_out_index":I
    :try_start_2dd
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v4, v2, v6}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->proc(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move v6, v4

    .line 284
    const/4 v4, -0x3

    if-ne v6, v4, :cond_308

    .line 285
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 286
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v4, 0x0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I
    :try_end_2f2
    .catchall {:try_start_2dd .. :try_end_2f2} :catchall_466

    .line 298
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int/2addr v0, v3

    .line 299
    .local v0, "decompressedBytes":I
    iget v4, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v4, v0

    iput v4, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    .line 300
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v8, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v4, v8, v3, v0}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v4

    iput v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    .line 301
    .end local v0    # "decompressedBytes":I
    nop

    .line 168
    .end local v3    # "old_next_out_index":I
    .restart local v8    # "old_next_out_index":I
    :goto_305
    move v8, v3

    goto/16 :goto_551

    .line 289
    .end local v8    # "old_next_out_index":I
    .restart local v3    # "old_next_out_index":I
    :cond_308
    if-nez v6, :cond_30b

    .line 290
    move v6, v5

    .line 292
    :cond_30b
    const/4 v4, 0x1

    if-eq v6, v4, :cond_322

    .line 293
    nop

    .line 298
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int/2addr v0, v3

    .line 299
    .restart local v0    # "decompressedBytes":I
    iget v4, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v4, v0

    iput v4, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    .line 300
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v8, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v4, v8, v3, v0}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v4

    iput v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    .line 301
    .end local v0    # "decompressedBytes":I
    return v6

    .line 295
    :cond_322
    move v6, v5

    .line 296
    :try_start_323
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    iget-object v8, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v8, v8, Lorg/jboss/netty/util/internal/jzlib/Inflate;->was:[J

    invoke-virtual {v4, v2, v8}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V
    :try_end_32e
    .catchall {:try_start_323 .. :try_end_32e} :catchall_466

    .line 298
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int/2addr v4, v3

    .line 299
    .local v4, "decompressedBytes":I
    iget v8, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v8, v4

    iput v8, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    .line 300
    iget v8, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v8, v9, v3, v4}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v8

    iput v8, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    .line 301
    .end local v4    # "decompressedBytes":I
    nop

    .line 303
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v8, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v4, v8, :cond_350

    .line 304
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v4, 0xc

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 305
    goto :goto_305

    .line 306
    :cond_350
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v8, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v4, v8, :cond_43f

    .line 307
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v13, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 321
    move v8, v3

    .end local v3    # "old_next_out_index":I
    .restart local v8    # "old_next_out_index":I
    :pswitch_35d
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_362

    .line 322
    return v6

    .line 324
    :cond_362
    move v6, v5

    .line 326
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 327
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 328
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    const/16 v9, 0x18

    shl-int/2addr v4, v9

    int-to-long v9, v4

    const-wide v16, 0xff000000L

    and-long v9, v9, v16

    iput-wide v9, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 329
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v4, 0x9

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 331
    :pswitch_390
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_395

    .line 332
    return v6

    .line 334
    :cond_395
    move v6, v5

    .line 336
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 337
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 338
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v9, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v12, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v15, v12, 0x1

    iput v15, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    int-to-long v14, v4

    const-wide/32 v16, 0xff0000

    and-long v14, v14, v16

    add-long/2addr v9, v14

    iput-wide v9, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 339
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v4, 0xa

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 341
    :pswitch_3c2
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_3c7

    .line 342
    return v6

    .line 344
    :cond_3c7
    move v6, v5

    .line 346
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 347
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 348
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v9, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v12, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v13

    int-to-long v12, v4

    const-wide/32 v14, 0xff00

    and-long/2addr v12, v14

    add-long/2addr v9, v12

    iput-wide v9, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 349
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v4, 0xb

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 351
    :pswitch_3f3
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_3f8

    .line 352
    return v6

    .line 354
    :cond_3f8
    move v6, v5

    .line 356
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 357
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 358
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v9, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v12, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v12

    int-to-long v12, v4

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    add-long/2addr v9, v12

    iput-wide v9, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 360
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->was:[J

    const/4 v4, 0x0

    aget-wide v9, v3, v4

    long-to-int v3, v9

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v9, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    long-to-int v4, v9

    if-eq v3, v4, :cond_437

    .line 361
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 362
    const-string v3, "incorrect data check"

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 363
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 364
    goto/16 :goto_551

    .line 367
    :cond_437
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0xc

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 369
    :pswitch_43d
    const/4 v0, 0x1

    return v0

    .line 308
    .end local v8    # "old_next_out_index":I
    .restart local v3    # "old_next_out_index":I
    :cond_43f
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->GZIP:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v0, v4, :cond_457

    .line 309
    const/4 v0, 0x0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    .line 310
    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    .line 311
    const/4 v0, 0x4

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    .line 312
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v4, 0x18

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 313
    goto/16 :goto_305

    .line 315
    :cond_457
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 316
    const-string v0, "unexpected state"

    iput-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 317
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v4, 0x0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 318
    goto/16 :goto_305

    .line 298
    :catchall_466
    move-exception v0

    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int/2addr v4, v3

    .line 299
    .restart local v4    # "decompressedBytes":I
    iget v8, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v8, v4

    iput v8, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    .line 300
    iget v8, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v8, v9, v3, v4}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v8

    iput v8, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    .line 301
    .end local v4    # "decompressedBytes":I
    throw v0

    .line 276
    .end local v3    # "old_next_out_index":I
    :pswitch_47a
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 277
    const-string v0, "need dictionary"

    iput-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 278
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v3, 0x0

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 279
    const/4 v0, -0x2

    return v0

    .line 209
    .end local v7    # "b":I
    .restart local v8    # "old_next_out_index":I
    :pswitch_489
    const/4 v4, 0x1

    goto/16 :goto_512

    .line 174
    .restart local v7    # "b":I
    :pswitch_48c
    const/4 v3, 0x0

    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_492

    .line 175
    .end local v7    # "b":I
    .end local v8    # "old_next_out_index":I
    return v6

    .line 179
    .restart local v7    # "b":I
    .restart local v8    # "old_next_out_index":I
    :cond_492
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v9, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB_OR_NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v4, v9, :cond_4c7

    .line 180
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v9

    and-int/2addr v4, v10

    if-ne v4, v13, :cond_4ba

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v9

    const/4 v9, 0x4

    shr-int/2addr v4, v9

    add-int/2addr v4, v13

    iget-object v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v9, v9, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    if-le v4, v9, :cond_4b3

    goto :goto_4ba

    .line 186
    :cond_4b3
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    sget-object v9, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    iput-object v9, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    goto :goto_4c7

    .line 182
    :cond_4ba
    :goto_4ba
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .line 183
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v4, 0x7

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 184
    goto/16 :goto_551

    .line 190
    :cond_4c7
    :goto_4c7
    move v6, v5

    .line 192
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    iput v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 193
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 194
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v15, v9, 0x1

    iput v15, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v9

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->method:I

    and-int/lit8 v3, v4, 0xf

    if-eq v3, v13, :cond_4f3

    .line 195
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 196
    const-string v3, "unknown compression method"

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 197
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 198
    goto :goto_551

    .line 200
    :cond_4f3
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->method:I

    const/4 v4, 0x4

    shr-int/2addr v3, v4

    add-int/2addr v3, v13

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    if-le v3, v4, :cond_50d

    .line 201
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 202
    const-string v3, "invalid window size"

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 203
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 204
    goto :goto_551

    .line 206
    .end local v7    # "b":I
    :cond_50d
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v4, 0x1

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 209
    :goto_512
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_517

    .line 210
    .end local v8    # "old_next_out_index":I
    return v6

    .line 212
    .restart local v8    # "old_next_out_index":I
    :cond_517
    move v6, v5

    .line 214
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 215
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 216
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 218
    .local v3, "b":I
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->method:I

    shl-int/2addr v4, v13

    add-int/2addr v4, v3

    rem-int/lit8 v4, v4, 0x1f

    if-eqz v4, :cond_546

    .line 219
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v11, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 220
    const-string v4, "incorrect header check"

    iput-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 221
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 222
    goto :goto_550

    .line 225
    :cond_546
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_554

    .line 226
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v4, 0x7

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 227
    nop

    .line 168
    :goto_550
    move v7, v3

    .end local v3    # "b":I
    .restart local v7    # "b":I
    :goto_551
    const/4 v3, 0x4

    goto/16 :goto_1c

    .line 229
    .end local v7    # "b":I
    .end local v8    # "old_next_out_index":I
    .restart local v3    # "b":I
    :cond_554
    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v7, 0x2

    iput v7, v4, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 232
    move v7, v3

    .end local v3    # "b":I
    .restart local v7    # "b":I
    :pswitch_55a
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_55f

    .line 233
    return v6

    .line 235
    :cond_55f
    move v6, v5

    .line 237
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 238
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 239
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v8, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    const/16 v8, 0x18

    shl-int/2addr v4, v8

    int-to-long v8, v4

    const-wide v10, 0xff000000L

    and-long/2addr v8, v10

    iput-wide v8, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 240
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v12, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 243
    :pswitch_58a
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_58f

    .line 244
    return v6

    .line 246
    :cond_58f
    move v6, v5

    .line 248
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 249
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 250
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v8, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v10, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v10

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    int-to-long v10, v4

    const-wide/32 v14, 0xff0000

    and-long/2addr v10, v14

    add-long/2addr v8, v10

    iput-wide v8, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 251
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v4, 0x4

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 254
    :pswitch_5ba
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_5bf

    .line 255
    return v6

    .line 257
    :cond_5bf
    move v6, v5

    .line 259
    iget v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 260
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 261
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v8, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v10, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v10

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v13

    int-to-long v10, v4

    const-wide/32 v12, 0xff00

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 262
    iget-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 265
    :pswitch_5e9
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_5ee

    .line 266
    return v6

    .line 269
    :cond_5ee
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 270
    iget-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    add-long v3, v3, v18

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 271
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v8, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v9, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v8, v8, v9

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    add-long/2addr v3, v8

    iput-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    .line 272
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iput-wide v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 273
    iget-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v3, 0x6

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 274
    const/4 v0, 0x2

    return v0

    .line 165
    .end local v5    # "f":I
    .end local v6    # "r":I
    .end local v7    # "b":I
    .restart local p2    # "f":I
    :cond_61c
    :goto_61c
    move/from16 v5, p2

    const/4 v0, -0x2

    return v0

    :pswitch_data_620
    .packed-switch 0x0
        :pswitch_48c
        :pswitch_489
        :pswitch_55a
        :pswitch_58a
        :pswitch_5ba
        :pswitch_5e9
        :pswitch_47a
        :pswitch_2db
        :pswitch_35d
        :pswitch_390
        :pswitch_3c2
        :pswitch_3f3
        :pswitch_43d
        :pswitch_2d9
        :pswitch_dd
        :pswitch_111
        :pswitch_145
        :pswitch_179
        :pswitch_1b6
        :pswitch_1e3
        :pswitch_228
        :pswitch_24f
        :pswitch_278
        :pswitch_da
        :pswitch_32
        :pswitch_86
    .end packed-switch
.end method

.method inflateEnd(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .registers 3
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 126
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->free(Lorg/jboss/netty/util/internal/jzlib/ZStream;)V

    .line 129
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method inflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;ILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I
    .registers 9
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "w"    # I
    .param p3, "wrapperType"    # Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    .line 138
    iput-object p3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .line 140
    if-ltz p2, :cond_33

    .line 145
    const/16 v1, 0x8

    if-lt p2, v1, :cond_2e

    const/16 v1, 0xf

    if-le p2, v1, :cond_12

    goto :goto_2e

    .line 149
    :cond_12
    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    .line 151
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v3, v4, :cond_21

    goto :goto_22

    :cond_21
    move-object v0, p0

    :goto_22
    const/4 v3, 0x1

    shl-int/2addr v3, p2

    invoke-direct {v2, p1, v0, v3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;-><init>(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/Object;I)V

    iput-object v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    .line 156
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    .line 157
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateEnd(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    .line 147
    const/4 v0, -0x2

    return v0

    .line 141
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method inflateSync(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .registers 12
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 596
    if-eqz p1, :cond_6d

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_7

    goto :goto_6d

    .line 599
    :cond_7
    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_18

    .line 600
    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 601
    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 603
    :cond_18
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move v2, v0

    .local v2, "n":I
    if-nez v0, :cond_1f

    .line 604
    const/4 v0, -0x5

    return v0

    .line 606
    :cond_1f
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 607
    .local v0, "p":I
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 610
    .local v3, "m":I
    :goto_25
    const/4 v4, 0x4

    if-eqz v2, :cond_46

    if-ge v3, v4, :cond_46

    .line 611
    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    aget-byte v5, v5, v0

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mark:[B

    aget-byte v6, v6, v3

    if-ne v5, v6, :cond_37

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 613
    :cond_37
    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    aget-byte v5, v5, v0

    if-eqz v5, :cond_3f

    .line 614
    const/4 v3, 0x0

    goto :goto_41

    .line 616
    :cond_3f
    sub-int/2addr v4, v3

    .line 618
    move v3, v4

    :goto_41
    add-int/lit8 v0, v0, 0x1

    .line 619
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    .line 623
    :cond_46
    iget-wide v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v7, v0, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 624
    iput v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 625
    iput v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 626
    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v3, v5, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    .line 629
    if-eq v3, v4, :cond_5c

    .line 630
    const/4 v1, -0x3

    return v1

    .line 632
    :cond_5c
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 633
    .local v4, "r":J
    iget-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    .line 634
    .local v6, "w":J
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    .line 635
    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 636
    iput-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    .line 637
    iget-object v8, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v9, 0x7

    iput v9, v8, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    .line 638
    return v1

    .line 597
    .end local v0    # "p":I
    .end local v2    # "n":I
    .end local v3    # "m":I
    .end local v4    # "r":J
    .end local v6    # "w":J
    :cond_6d
    :goto_6d
    const/4 v0, -0x2

    return v0
.end method
