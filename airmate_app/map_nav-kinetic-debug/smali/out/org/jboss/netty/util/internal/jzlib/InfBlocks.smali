.class final Lorg/jboss/netty/util/internal/jzlib/InfBlocks;
.super Ljava/lang/Object;
.source "InfBlocks.java"


# static fields
.field private static final BAD:I = 0x9

.field private static final BTREE:I = 0x4

.field private static final CODES:I = 0x6

.field private static final DONE:I = 0x8

.field private static final DRY:I = 0x7

.field private static final DTREE:I = 0x5

.field private static final LENS:I = 0x1

.field private static final STORED:I = 0x2

.field private static final TABLE:I = 0x3

.field private static final TYPE:I

.field private static final border:[I

.field private static final inflate_mask:[I


# instance fields
.field private final bb:[I

.field bitb:I

.field bitk:I

.field private blens:[I

.field private check:J

.field private final checkfn:Ljava/lang/Object;

.field private final codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

.field final end:I

.field private hufts:[I

.field private index:I

.field private final inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

.field private last:I

.field private left:I

.field private mode:I

.field read:I

.field private table:I

.field private final tb:[I

.field window:[B

.field write:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    .line 59
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->border:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data

    :array_3a
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/Object;I)V
    .registers 6
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "checkfn"    # Ljava/lang/Object;
    .param p3, "w"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    .line 80
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    .line 92
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/InfTree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

    .line 95
    const/16 v0, 0x10e0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    .line 96
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    .line 97
    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    .line 98
    iput-object p2, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    .line 101
    return-void
.end method


# virtual methods
.method free(Lorg/jboss/netty/util/internal/jzlib/ZStream;)V
    .registers 3
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 614
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    .line 615
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    .line 616
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    .line 618
    return-void
.end method

.method inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .registers 11
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "r"    # I

    .line 638
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 639
    .local v0, "p":I
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    .line 642
    .local v1, "q":I
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    if-gt v1, v2, :cond_b

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    goto :goto_d

    :cond_b
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    :goto_d
    sub-int/2addr v2, v1

    .line 643
    .local v2, "n":I
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v2, v3, :cond_14

    .line 644
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 646
    :cond_14
    const/4 v3, -0x5

    if-eqz v2, :cond_1a

    if-ne p2, v3, :cond_1a

    .line 647
    const/4 p2, 0x0

    .line 651
    :cond_1a
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v4, v2

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 652
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    .line 655
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v4, :cond_35

    .line 656
    iget-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v4, v5, v6, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 660
    :cond_35
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v4, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    add-int/2addr v0, v2

    .line 662
    add-int/2addr v1, v2

    .line 665
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v1, v4, :cond_80

    .line 667
    const/4 v1, 0x0

    .line 668
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v4, v5, :cond_4c

    .line 669
    const/4 v4, 0x0

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 673
    :cond_4c
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    sub-int/2addr v4, v1

    .line 674
    .end local v2    # "n":I
    .local v4, "n":I
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v4, v2, :cond_56

    .line 675
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    goto :goto_57

    .line 677
    :cond_56
    move v2, v4

    .end local v4    # "n":I
    .restart local v2    # "n":I
    :goto_57
    if-eqz v2, :cond_5c

    if-ne p2, v3, :cond_5c

    .line 678
    const/4 p2, 0x0

    .line 682
    :cond_5c
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v2

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 683
    iget-wide v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    .line 686
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v3, :cond_77

    .line 687
    iget-wide v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v3, v4, v5, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iput-wide v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 691
    :cond_77
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    add-int/2addr v0, v2

    .line 693
    add-int/2addr v1, v2

    .line 697
    :cond_80
    iput v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 698
    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    .line 701
    return p2
.end method

.method proc(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .registers 41
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "r"    # I

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget v1, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 129
    .local v1, "p":I
    iget v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 130
    .local v2, "n":I
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 131
    .local v3, "b":I
    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 134
    .local v4, "k":I
    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 135
    .local v5, "q":I
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    const/4 v12, 0x1

    if-ge v5, v6, :cond_18

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v12

    goto :goto_1b

    :cond_18
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v5

    :goto_1b
    const/4 v13, 0x0

    move v14, v5

    const/4 v7, 0x0

    move v5, v1

    move/from16 v1, p2

    .end local p2    # "r":I
    .local v1, "r":I
    .local v5, "p":I
    .local v6, "m":I
    .local v7, "t":I
    .local v14, "q":I
    :goto_21
    move v15, v6

    .line 140
    .end local v6    # "m":I
    .local v15, "m":I
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    const/4 v12, 0x7

    const/4 v8, 0x3

    packed-switch v6, :pswitch_data_626

    .line 600
    move v8, v14

    move/from16 v25, v15

    .end local v14    # "q":I
    .end local v15    # "m":I
    .local v8, "q":I
    .local v25, "m":I
    const/4 v1, -0x2

    .line 602
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 603
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 604
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 605
    iget-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v9, v12

    iput-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 606
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 607
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 608
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 589
    .end local v8    # "q":I
    .end local v25    # "m":I
    .restart local v14    # "q":I
    .restart local v15    # "m":I
    :pswitch_46
    const/4 v1, -0x3

    .line 591
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 592
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 593
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 594
    iget-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v8, v12

    iput-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 595
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 596
    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 597
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 540
    :pswitch_60
    move v13, v3

    move v8, v14

    move/from16 v25, v15

    move v15, v2

    goto/16 :goto_254

    .line 415
    :pswitch_67
    move v12, v1

    move v8, v2

    move v13, v3

    move v10, v4

    move v9, v5

    .end local v1    # "r":I
    .end local v2    # "n":I
    .end local v3    # "b":I
    .end local v4    # "k":I
    .end local v5    # "p":I
    .local v8, "n":I
    .local v9, "p":I
    .local v10, "k":I
    .local v12, "r":I
    .local v13, "b":I
    :goto_6c
    const/4 v6, -0x3

    goto/16 :goto_1a4

    .line 363
    .end local v8    # "n":I
    .end local v9    # "p":I
    .end local v12    # "r":I
    .end local v13    # "b":I
    .local v3, "n":I
    .local v4, "p":I
    .local v5, "k":I
    .local v6, "b":I
    .local v10, "r":I
    :goto_6f
    :pswitch_6f
    move v10, v1

    move v6, v3

    move v3, v2

    move/from16 v37, v5

    move v5, v4

    move/from16 v4, v37

    goto/16 :goto_f1

    .line 315
    .end local v6    # "b":I
    .end local v10    # "r":I
    .restart local v1    # "r":I
    .restart local v2    # "n":I
    .local v3, "b":I
    .local v4, "k":I
    .local v5, "p":I
    :goto_79
    :pswitch_79
    const/16 v6, 0xe

    if-ge v4, v6, :cond_aa

    .line 316
    if-eqz v2, :cond_91

    .line 317
    const/4 v1, 0x0

    .line 327
    add-int/lit8 v2, v2, -0x1

    .line 328
    iget-object v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v18, v5, 0x1

    .local v18, "p":I
    aget-byte v5, v6, v5

    .end local v5    # "p":I
    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    .line 329
    add-int/lit8 v4, v4, 0x8

    .line 315
    move/from16 v5, v18

    goto :goto_79

    .line 319
    .end local v18    # "p":I
    .restart local v5    # "p":I
    :cond_91
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 320
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 321
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 322
    iget-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v8, v12

    iput-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 323
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 324
    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 325
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 332
    :cond_aa
    and-int/lit16 v6, v3, 0x3fff

    move v7, v6

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    .line 333
    and-int/lit8 v6, v7, 0x1f

    const/16 v10, 0x1d

    if-gt v6, v10, :cond_427

    shr-int/lit8 v6, v7, 0x5

    and-int/lit8 v6, v6, 0x1f

    const/16 v10, 0x1d

    if-le v6, v10, :cond_c4

    .line 334
    move v8, v14

    move/from16 v25, v15

    const/16 v6, 0x9

    goto/16 :goto_42c

    .line 346
    :cond_c4
    and-int/lit8 v6, v7, 0x1f

    add-int/lit16 v6, v6, 0x102

    shr-int/lit8 v10, v7, 0x5

    and-int/lit8 v10, v10, 0x1f

    add-int v7, v6, v10

    .line 347
    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    if-eqz v6, :cond_e2

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    array-length v6, v6

    if-ge v6, v7, :cond_d8

    goto :goto_e2

    .line 350
    :cond_d8
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d9
    if-ge v6, v7, :cond_e6

    .line 351
    iget-object v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    aput v13, v10, v6

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_d9

    .line 348
    .end local v6    # "i":I
    :cond_e2
    :goto_e2
    new-array v6, v7, [I

    iput-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    .line 356
    :cond_e6
    ushr-int/lit8 v3, v3, 0xe

    .line 357
    add-int/lit8 v4, v4, -0xe

    .line 360
    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    .line 361
    const/4 v6, 0x4

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    goto/16 :goto_6f

    .line 363
    .end local v1    # "r":I
    .end local v2    # "n":I
    .local v3, "n":I
    .local v4, "p":I
    .local v5, "k":I
    .local v6, "b":I
    .restart local v10    # "r":I
    :goto_f1
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    ushr-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_13f

    .line 364
    :goto_fb
    if-ge v5, v8, :cond_129

    .line 365
    if-eqz v3, :cond_110

    .line 366
    const/4 v10, 0x0

    .line 376
    add-int/lit8 v3, v3, -0x1

    .line 377
    iget-object v1, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v2, v4, 0x1

    .local v2, "p":I
    aget-byte v1, v1, v4

    .end local v4    # "p":I
    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v6, v1

    .line 378
    add-int/lit8 v5, v5, 0x8

    .line 364
    move v4, v2

    goto :goto_fb

    .line 368
    .end local v2    # "p":I
    .restart local v4    # "p":I
    :cond_110
    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 369
    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 370
    iput v3, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 371
    iget-wide v1, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v8, v4, v8

    int-to-long v8, v8

    add-long/2addr v1, v8

    iput-wide v1, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 372
    iput v4, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 373
    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 374
    invoke-virtual {v0, v11, v10}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 381
    :cond_129
    iget-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->border:[I

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    aget v2, v2, v8

    and-int/lit8 v8, v6, 0x7

    aput v8, v1, v2

    .line 384
    ushr-int/lit8 v6, v6, 0x3

    .line 385
    add-int/lit8 v5, v5, -0x3

    .line 363
    const/4 v8, 0x3

    goto :goto_f1

    .line 389
    :cond_13f
    :goto_13f
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_154

    .line 390
    iget-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->border:[I

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    aget v2, v2, v8

    aput v13, v1, v2

    goto :goto_13f

    .line 393
    :cond_154
    iget-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    aput v12, v1, v13

    .line 394
    iget-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    iget-object v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    iget-object v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move v13, v3

    .end local v3    # "n":I
    .local v13, "n":I
    move-object v3, v8

    move v8, v4

    .end local v4    # "p":I
    .local v8, "p":I
    move-object v4, v9

    move v9, v5

    .end local v5    # "k":I
    .local v9, "k":I
    move-object v5, v12

    move v12, v6

    .end local v6    # "b":I
    .local v12, "b":I
    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->inflate_trees_bits([I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v7

    .line 395
    if-eqz v7, :cond_195

    .line 396
    move v1, v7

    .line 397
    .end local v10    # "r":I
    .restart local v1    # "r":I
    const/4 v6, -0x3

    if-ne v1, v6, :cond_17c

    .line 398
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    .line 399
    const/16 v2, 0x9

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 402
    :cond_17c
    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 403
    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 404
    iput v13, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 405
    iget-wide v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v8, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 406
    iput v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 407
    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 408
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    return v2

    .line 411
    .end local v1    # "r":I
    .restart local v10    # "r":I
    :cond_195
    const/4 v6, -0x3

    const/4 v1, 0x0

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    .line 412
    const/4 v1, 0x5

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 415
    move/from16 v37, v9

    move v9, v8

    move v8, v13

    move v13, v12

    move v12, v10

    move/from16 v10, v37

    .local v8, "n":I
    .local v9, "p":I
    .local v10, "k":I
    .local v12, "r":I
    .local v13, "b":I
    :goto_1a4
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    .line 416
    .end local v7    # "t":I
    .local v1, "t":I
    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    and-int/lit8 v3, v1, 0x1f

    add-int/lit16 v3, v3, 0x102

    shr-int/lit8 v4, v1, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    const/4 v4, -0x1

    if-lt v2, v3, :cond_2e1

    .line 417
    nop

    .line 507
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v3, 0x0

    aput v4, v2, v3

    .line 509
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 510
    .local v7, "bl":[I
    new-array v5, v2, [I

    .line 511
    .local v5, "bd":[I
    new-array v4, v2, [I

    .line 512
    .local v4, "tl":[I
    move/from16 v22, v12

    .end local v12    # "r":I
    .local v22, "r":I
    new-array v12, v2, [I

    .line 513
    .local v12, "td":[I
    const/16 v17, 0x9

    aput v17, v7, v3

    .line 514
    const/4 v2, 0x6

    aput v2, v5, v3

    .line 516
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    .line 517
    .end local v1    # "t":I
    .local v3, "t":I
    iget-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

    and-int/lit8 v2, v3, 0x1f

    add-int/lit16 v2, v2, 0x101

    shr-int/lit8 v18, v3, 0x5

    and-int/lit8 v18, v18, 0x1f

    const/16 v16, 0x1

    add-int/lit8 v18, v18, 0x1

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    move/from16 v24, v9

    .end local v9    # "p":I
    .local v24, "p":I
    iget-object v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move/from16 v19, v3

    .end local v3    # "t":I
    .local v19, "t":I
    move/from16 v3, v18

    move-object/from16 v18, v4

    .end local v4    # "tl":[I
    .local v18, "tl":[I
    move-object v4, v6

    move-object/from16 v20, v5

    .end local v5    # "bd":[I
    .local v20, "bd":[I
    move-object v5, v7

    const/16 v21, -0x3

    move-object/from16 v6, v20

    move-object/from16 v23, v7

    .end local v7    # "bl":[I
    .local v23, "bl":[I
    move-object/from16 v7, v18

    move/from16 v25, v15

    move v15, v8

    .end local v8    # "n":I
    .local v15, "n":I
    .restart local v25    # "m":I
    move-object v8, v12

    move-object/from16 v26, v12

    move/from16 v27, v14

    move/from16 v12, v24

    const/4 v14, -0x3

    .end local v14    # "q":I
    .end local v24    # "p":I
    .local v12, "p":I
    .local v26, "td":[I
    .local v27, "q":I
    move/from16 v28, v10

    .end local v10    # "k":I
    .local v28, "k":I
    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->inflate_trees_dynamic(II[I[I[I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v1

    .line 521
    .end local v19    # "t":I
    .restart local v1    # "t":I
    if-eqz v1, :cond_230

    .line 522
    if-ne v1, v14, :cond_212

    .line 523
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    .line 524
    const/16 v6, 0x9

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 526
    :cond_212
    move v2, v1

    .line 528
    .end local v22    # "r":I
    .local v2, "r":I
    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 529
    move/from16 v9, v28

    .end local v28    # "k":I
    .local v9, "k":I
    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 530
    iput v15, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 531
    iget-wide v3, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 532
    iput v12, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 533
    move/from16 v8, v27

    .end local v27    # "q":I
    .local v8, "q":I
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 534
    invoke-virtual {v0, v11, v2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    return v3

    .line 536
    .end local v2    # "r":I
    .end local v8    # "q":I
    .end local v9    # "k":I
    .restart local v22    # "r":I
    .restart local v27    # "q":I
    .restart local v28    # "k":I
    :cond_230
    move/from16 v8, v27

    move/from16 v9, v28

    .end local v27    # "q":I
    .end local v28    # "k":I
    .restart local v8    # "q":I
    .restart local v9    # "k":I
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    const/4 v3, 0x0

    aget v28, v23, v3

    aget v29, v20, v3

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    aget v31, v18, v3

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    aget v33, v26, v3

    move-object/from16 v27, v2

    move-object/from16 v30, v4

    move-object/from16 v32, v5

    invoke-virtual/range {v27 .. v33}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->init(II[II[II)V

    .line 538
    .end local v18    # "tl":[I
    .end local v20    # "bd":[I
    .end local v23    # "bl":[I
    .end local v26    # "td":[I
    const/4 v2, 0x6

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 540
    move v7, v1

    move v4, v9

    move v5, v12

    move/from16 v1, v22

    .end local v9    # "k":I
    .end local v12    # "p":I
    .end local v22    # "r":I
    .local v1, "r":I
    .local v4, "k":I
    .local v5, "p":I
    .local v7, "t":I
    :goto_254
    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 541
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 542
    iput v15, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 543
    iget-wide v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v9, v6

    add-long/2addr v2, v9

    iput-wide v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 544
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 545
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 547
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    invoke-virtual {v2, v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->proc(Lorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    move v1, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_277

    .line 548
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    return v2

    .line 550
    :cond_277
    const/4 v1, 0x0

    .line 552
    iget v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 553
    iget v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 554
    .end local v15    # "n":I
    .local v2, "n":I
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 555
    .end local v13    # "b":I
    .local v3, "b":I
    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 556
    iget v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 557
    .end local v8    # "q":I
    .restart local v14    # "q":I
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v14, v6, :cond_28c

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v14

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    goto :goto_28f

    :cond_28c
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v14

    .line 559
    .end local v25    # "m":I
    .local v6, "m":I
    :goto_28f
    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    if-nez v8, :cond_298

    .line 560
    const/4 v8, 0x0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 561
    goto/16 :goto_622

    .line 563
    :cond_298
    const/4 v10, 0x7

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 565
    move v15, v6

    .end local v6    # "m":I
    .local v15, "m":I
    :pswitch_29c
    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 566
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v1

    .line 567
    iget v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 568
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    if-eq v6, v8, :cond_2c3

    .line 569
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 570
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 571
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 572
    iget-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v8, v12

    iput-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 573
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 574
    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 575
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 577
    :cond_2c3
    const/16 v6, 0x8

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 579
    :pswitch_2c7
    const/4 v1, 0x1

    .line 581
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 582
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 583
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 584
    iget-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v8, v12

    iput-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 585
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 586
    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 587
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 422
    .end local v2    # "n":I
    .end local v3    # "b":I
    .end local v4    # "k":I
    .end local v5    # "p":I
    .end local v7    # "t":I
    .local v1, "t":I
    .local v8, "n":I
    .local v9, "p":I
    .restart local v10    # "k":I
    .local v12, "r":I
    .restart local v13    # "b":I
    :cond_2e1
    move/from16 v22, v12

    move/from16 v25, v15

    const/16 v6, 0x9

    move v15, v8

    move v12, v9

    move v9, v10

    move v8, v14

    const/4 v10, 0x7

    const/4 v14, -0x3

    .end local v10    # "k":I
    .end local v14    # "q":I
    .local v8, "q":I
    .local v9, "k":I
    .local v12, "p":I
    .local v15, "n":I
    .restart local v22    # "r":I
    .restart local v25    # "m":I
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 424
    move/from16 v2, v22

    .end local v22    # "r":I
    .local v2, "r":I
    :goto_2f4
    if-ge v9, v1, :cond_322

    .line 425
    if-eqz v15, :cond_309

    .line 426
    const/4 v2, 0x0

    .line 436
    add-int/lit8 v15, v15, -0x1

    .line 437
    iget-object v3, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v5, v12, 0x1

    .restart local v5    # "p":I
    aget-byte v3, v3, v12

    .end local v12    # "p":I
    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v9

    or-int/2addr v13, v3

    .line 438
    add-int/lit8 v9, v9, 0x8

    .line 424
    move v12, v5

    goto :goto_2f4

    .line 428
    .end local v5    # "p":I
    .restart local v12    # "p":I
    :cond_309
    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 429
    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 430
    iput v15, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 431
    iget-wide v3, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 432
    iput v12, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 433
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 434
    invoke-virtual {v0, v11, v2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    return v3

    .line 441
    :cond_322
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    .line 445
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    aget v7, v7, v5

    sget-object v18, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    aget v18, v18, v1

    and-int v18, v13, v18

    add-int v7, v7, v18

    const/16 v18, 0x3

    mul-int/lit8 v7, v7, 0x3

    const/16 v16, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v1, v3, v7

    .line 446
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    aget v7, v7, v5

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    aget v5, v5, v1

    and-int/2addr v5, v13

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    aget v3, v3, v7

    .line 448
    .local v3, "c":I
    const/16 v5, 0x10

    if-ge v3, v5, :cond_369

    .line 449
    ushr-int v4, v13, v1

    .line 450
    .end local v13    # "b":I
    .local v4, "b":I
    sub-int/2addr v9, v1

    .line 451
    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    aput v3, v5, v7

    .line 505
    move v7, v1

    move v13, v4

    move v10, v9

    move v9, v12

    .end local v1    # "t":I
    .end local v2    # "r":I
    .end local v3    # "c":I
    .end local v4    # "b":I
    .restart local v7    # "t":I
    .local v9, "p":I
    .restart local v10    # "k":I
    .local v12, "r":I
    .restart local v13    # "b":I
    :goto_366
    move v12, v2

    goto/16 :goto_3f6

    .line 453
    .end local v7    # "t":I
    .end local v10    # "k":I
    .restart local v1    # "t":I
    .restart local v2    # "r":I
    .restart local v3    # "c":I
    .local v9, "k":I
    .local v12, "p":I
    :cond_369
    const/16 v5, 0x12

    if-ne v3, v5, :cond_36f

    const/4 v5, 0x7

    goto :goto_371

    :cond_36f
    add-int/lit8 v5, v3, -0xe

    .line 454
    .local v5, "i":I
    :goto_371
    const/16 v7, 0x12

    if-ne v3, v7, :cond_378

    const/16 v7, 0xb

    goto :goto_379

    :cond_378
    const/4 v7, 0x3

    .line 456
    .local v7, "j":I
    :goto_379
    add-int v10, v1, v5

    if-ge v9, v10, :cond_3af

    .line 457
    if-eqz v15, :cond_392

    .line 458
    const/4 v2, 0x0

    .line 468
    add-int/lit8 v15, v15, -0x1

    .line 469
    iget-object v10, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v18, v12, 0x1

    .local v18, "p":I
    aget-byte v10, v10, v12

    .end local v12    # "p":I
    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v9

    or-int/2addr v13, v10

    .line 470
    add-int/lit8 v9, v9, 0x8

    .line 454
    move/from16 v12, v18

    const/4 v10, 0x7

    goto :goto_379

    .line 460
    .end local v18    # "p":I
    .restart local v12    # "p":I
    :cond_392
    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 461
    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 462
    iput v15, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 463
    move/from16 v34, v15

    .end local v15    # "n":I
    .local v34, "n":I
    iget-wide v14, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    move/from16 v35, v3

    .end local v3    # "c":I
    .local v35, "c":I
    int-to-long v3, v4

    add-long/2addr v14, v3

    iput-wide v14, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 464
    iput v12, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 465
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 466
    invoke-virtual {v0, v11, v2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    return v3

    .line 473
    .end local v34    # "n":I
    .end local v35    # "c":I
    .restart local v3    # "c":I
    .restart local v15    # "n":I
    :cond_3af
    move/from16 v35, v3

    move/from16 v34, v15

    .end local v3    # "c":I
    .end local v15    # "n":I
    .restart local v34    # "n":I
    .restart local v35    # "c":I
    ushr-int v3, v13, v1

    .line 474
    .end local v13    # "b":I
    .local v3, "b":I
    sub-int/2addr v9, v1

    .line 476
    sget-object v10, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    aget v10, v10, v5

    and-int/2addr v10, v3

    add-int/2addr v7, v10

    .line 478
    ushr-int/2addr v3, v5

    .line 479
    sub-int/2addr v9, v5

    .line 481
    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    .line 482
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    .line 483
    add-int v10, v5, v7

    and-int/lit8 v13, v1, 0x1f

    add-int/lit16 v13, v13, 0x102

    shr-int/lit8 v15, v1, 0x5

    and-int/lit8 v15, v15, 0x1f

    add-int/2addr v13, v15

    if-gt v10, v13, :cond_3fe

    move/from16 v10, v35

    const/16 v13, 0x10

    .end local v35    # "c":I
    .local v10, "c":I
    if-ne v10, v13, :cond_3d9

    const/4 v15, 0x1

    if-ge v5, v15, :cond_3d9

    goto :goto_400

    .line 499
    :cond_3d9
    if-ne v10, v13, :cond_3e2

    iget-object v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v15, v5, -0x1

    aget v13, v13, v15

    goto :goto_3e3

    :cond_3e2
    const/4 v13, 0x0

    .line 501
    .end local v10    # "c":I
    .local v13, "c":I
    :goto_3e3
    iget-object v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v15, v5, 0x1

    .local v15, "i":I
    aput v13, v10, v5

    .line 502
    .end local v5    # "i":I
    add-int/2addr v7, v4

    if-nez v7, :cond_3fc

    .line 503
    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    .line 505
    move v7, v1

    move v13, v3

    move v10, v9

    move v9, v12

    move/from16 v15, v34

    goto/16 :goto_366

    .line 415
    .end local v1    # "t":I
    .end local v2    # "r":I
    .end local v3    # "b":I
    .end local v34    # "n":I
    .local v7, "t":I
    .local v9, "p":I
    .local v10, "k":I
    .local v12, "r":I
    .local v13, "b":I
    .local v15, "n":I
    :goto_3f6
    move v14, v8

    move v8, v15

    move/from16 v15, v25

    goto/16 :goto_6c

    .line 501
    .end local v10    # "k":I
    .restart local v1    # "t":I
    .restart local v2    # "r":I
    .restart local v3    # "b":I
    .local v7, "j":I
    .local v9, "k":I
    .local v12, "p":I
    .local v13, "c":I
    .local v15, "i":I
    .restart local v34    # "n":I
    :cond_3fc
    move v5, v15

    goto :goto_3e3

    .line 485
    .end local v13    # "c":I
    .end local v15    # "i":I
    .restart local v5    # "i":I
    .restart local v35    # "c":I
    :cond_3fe
    move/from16 v10, v35

    .end local v35    # "c":I
    .local v10, "c":I
    :goto_400
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    .line 486
    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 487
    const-string v4, "invalid bit length repeat"

    iput-object v4, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 488
    const/4 v2, -0x3

    .line 490
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 491
    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 492
    move/from16 v15, v34

    .end local v34    # "n":I
    .local v15, "n":I
    iput v15, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 493
    iget-wide v13, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    move/from16 v36, v3

    .end local v3    # "b":I
    .local v36, "b":I
    int-to-long v3, v4

    add-long/2addr v13, v3

    iput-wide v13, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 494
    iput v12, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 495
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 496
    invoke-virtual {v0, v11, v2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    return v3

    .line 334
    .end local v8    # "q":I
    .end local v9    # "k":I
    .end local v10    # "c":I
    .end local v12    # "p":I
    .end local v25    # "m":I
    .end local v36    # "b":I
    .local v1, "r":I
    .local v2, "n":I
    .restart local v3    # "b":I
    .local v4, "k":I
    .local v5, "p":I
    .local v7, "t":I
    .restart local v14    # "q":I
    .local v15, "m":I
    :cond_427
    move v8, v14

    move/from16 v25, v15

    const/16 v6, 0x9

    .end local v14    # "q":I
    .end local v15    # "m":I
    .restart local v8    # "q":I
    .restart local v25    # "m":I
    :goto_42c
    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 335
    const-string v6, "too many length or distance symbols"

    iput-object v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 336
    const/4 v1, -0x3

    .line 338
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 339
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 340
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 341
    iget-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v9, v12

    iput-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 342
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 343
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 344
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 259
    .end local v8    # "q":I
    .end local v25    # "m":I
    .restart local v14    # "q":I
    .restart local v15    # "m":I
    :pswitch_44c
    move v8, v14

    move/from16 v25, v15

    .end local v14    # "q":I
    .end local v15    # "m":I
    .restart local v8    # "q":I
    .restart local v25    # "m":I
    if-nez v2, :cond_46a

    .line 260
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 261
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 262
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 263
    iget-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v9, v12

    iput-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 264
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 265
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 266
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 269
    :cond_46a
    if-nez v25, :cond_4d2

    .line 270
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v8, v6, :cond_484

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v6, :cond_484

    .line 271
    const/4 v14, 0x0

    .line 272
    .end local v8    # "q":I
    .restart local v14    # "q":I
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v14, v6, :cond_47f

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v14

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    goto :goto_482

    :cond_47f
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v14

    :goto_482
    move v15, v6

    goto :goto_487

    .line 274
    .end local v14    # "q":I
    .restart local v8    # "q":I
    :cond_484
    move v14, v8

    move/from16 v15, v25

    .end local v8    # "q":I
    .end local v25    # "m":I
    .restart local v14    # "q":I
    .restart local v15    # "m":I
    :goto_487
    if-nez v15, :cond_4d5

    .line 275
    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 276
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v1

    .line 277
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 278
    .end local v14    # "q":I
    .local v6, "q":I
    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v6, v8, :cond_49b

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v8, v6

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    goto :goto_49e

    :cond_49b
    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v8, v6

    .line 279
    .end local v15    # "m":I
    .local v8, "m":I
    :goto_49e
    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v6, v9, :cond_4b5

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v9, :cond_4b5

    .line 280
    const/4 v6, 0x0

    .line 281
    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v6, v9, :cond_4b1

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v9, v6

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    goto :goto_4b4

    :cond_4b1
    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v9, v6

    :goto_4b4
    move v8, v9

    .line 283
    .end local v6    # "q":I
    .end local v8    # "m":I
    .restart local v14    # "q":I
    .restart local v15    # "m":I
    :cond_4b5
    move v14, v6

    move v15, v8

    if-nez v15, :cond_4d5

    .line 284
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 285
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 286
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 287
    iget-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v8, v12

    iput-wide v8, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 288
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 289
    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 290
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 294
    .end local v14    # "q":I
    .end local v15    # "m":I
    .local v8, "q":I
    .restart local v25    # "m":I
    :cond_4d2
    move v14, v8

    move/from16 v15, v25

    .end local v8    # "q":I
    .end local v25    # "m":I
    .restart local v14    # "q":I
    .restart local v15    # "m":I
    :cond_4d5
    const/4 v1, 0x0

    .line 296
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    .line 297
    .end local v7    # "t":I
    .local v6, "t":I
    if-le v6, v2, :cond_4db

    .line 298
    move v6, v2

    .line 300
    :cond_4db
    if-le v6, v15, :cond_4de

    .line 301
    move v6, v15

    .line 303
    .end local v6    # "t":I
    .restart local v7    # "t":I
    :cond_4de
    move v7, v6

    iget-object v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v6, v5, v8, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    add-int/2addr v5, v7

    .line 305
    sub-int/2addr v2, v7

    .line 306
    add-int/2addr v14, v7

    .line 307
    sub-int v6, v15, v7

    .line 308
    .end local v15    # "m":I
    .local v6, "m":I
    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    sub-int/2addr v8, v7

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    if-eqz v8, :cond_4f4

    .line 309
    goto/16 :goto_622

    .line 311
    :cond_4f4
    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    if-eqz v8, :cond_4fa

    const/4 v8, 0x7

    goto :goto_4fb

    :cond_4fa
    const/4 v8, 0x0

    :goto_4fb
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 312
    goto/16 :goto_622

    .line 224
    .end local v6    # "m":I
    .restart local v15    # "m":I
    :pswitch_4ff
    move v8, v14

    move/from16 v25, v15

    const/16 v6, 0x9

    .end local v14    # "q":I
    .end local v15    # "m":I
    .restart local v8    # "q":I
    .restart local v25    # "m":I
    :goto_504
    const/16 v9, 0x20

    if-ge v4, v9, :cond_534

    .line 225
    if-eqz v2, :cond_51b

    .line 226
    const/4 v1, 0x0

    .line 236
    add-int/lit8 v2, v2, -0x1

    .line 237
    iget-object v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v10, v5, 0x1

    .local v10, "p":I
    aget-byte v5, v9, v5

    .end local v5    # "p":I
    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    .line 238
    add-int/lit8 v4, v4, 0x8

    .line 224
    move v5, v10

    goto :goto_504

    .line 228
    .end local v10    # "p":I
    .restart local v5    # "p":I
    :cond_51b
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 229
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 230
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 231
    iget-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v9, v12

    iput-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 232
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 233
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 234
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 241
    :cond_534
    xor-int/lit8 v9, v3, -0x1

    const/16 v10, 0x10

    ushr-int/2addr v9, v10

    const v10, 0xffff

    and-int/2addr v9, v10

    and-int v12, v3, v10

    if-eq v9, v12, :cond_561

    .line 242
    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 243
    const-string v6, "invalid stored block lengths"

    iput-object v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 244
    const/4 v1, -0x3

    .line 246
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 247
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 248
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 249
    iget-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v9, v12

    iput-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 250
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 251
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 252
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 254
    :cond_561
    and-int v6, v3, v10

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    .line 255
    const/4 v6, 0x0

    move v4, v6

    move v3, v6

    .line 256
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    if-eqz v6, :cond_56e

    const/4 v13, 0x2

    goto :goto_575

    :cond_56e
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    if-eqz v6, :cond_574

    const/4 v13, 0x7

    goto :goto_575

    :cond_574
    const/4 v13, 0x0

    :goto_575
    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 257
    goto/16 :goto_61f

    .line 143
    .end local v7    # "t":I
    .end local v8    # "q":I
    .end local v25    # "m":I
    .restart local v14    # "q":I
    .restart local v15    # "m":I
    :pswitch_579
    move v8, v14

    move/from16 v25, v15

    const/16 v6, 0x9

    const/4 v14, -0x3

    .end local v14    # "q":I
    .end local v15    # "m":I
    .restart local v8    # "q":I
    .restart local v25    # "m":I
    :goto_57f
    const/4 v7, 0x3

    if-ge v4, v7, :cond_5ae

    .line 144
    if-eqz v2, :cond_595

    .line 145
    const/4 v1, 0x0

    .line 155
    add-int/lit8 v2, v2, -0x1

    .line 156
    iget-object v7, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v9, v5, 0x1

    .local v9, "p":I
    aget-byte v5, v7, v5

    .end local v5    # "p":I
    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    .line 157
    add-int/lit8 v4, v4, 0x8

    .line 143
    move v5, v9

    goto :goto_57f

    .line 147
    .end local v9    # "p":I
    .restart local v5    # "p":I
    :cond_595
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 148
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 149
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 150
    iget-wide v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v9, v5, v9

    int-to-long v9, v9

    add-long/2addr v6, v9

    iput-wide v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 151
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 152
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 153
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 159
    :cond_5ae
    and-int/lit8 v7, v3, 0x7

    .line 160
    .restart local v7    # "t":I
    and-int/lit8 v9, v7, 0x1

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    .line 162
    ushr-int/lit8 v9, v7, 0x1

    packed-switch v9, :pswitch_data_63e

    .line 221
    :goto_5b9
    const/4 v9, 0x1

    const/4 v14, 0x0

    goto :goto_61f

    .line 206
    :pswitch_5bc
    const/4 v9, 0x3

    ushr-int/2addr v3, v9

    .line 207
    add-int/2addr v4, v14

    .line 209
    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 210
    const-string v6, "invalid block type"

    iput-object v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 211
    const/4 v1, -0x3

    .line 213
    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 214
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 215
    iput v2, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 216
    iget-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v5, v6

    int-to-long v12, v6

    add-long/2addr v9, v12

    iput-wide v9, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 217
    iput v5, v11, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 218
    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 219
    invoke-virtual {v0, v11, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    return v6

    .line 197
    :pswitch_5df
    ushr-int/lit8 v3, v3, 0x3

    .line 198
    add-int/lit8 v4, v4, -0x3

    .line 201
    const/4 v6, 0x3

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 202
    goto :goto_5b9

    .line 178
    :pswitch_5e7
    const/4 v6, 0x1

    new-array v9, v6, [I

    .line 179
    .local v9, "bl":[I
    new-array v10, v6, [I

    .line 180
    .local v10, "bd":[I
    new-array v12, v6, [[I

    .line 181
    .local v12, "tl":[[I
    new-array v13, v6, [[I

    .line 183
    .local v13, "td":[[I
    invoke-static {v9, v10, v12, v13}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->inflate_trees_fixed([I[I[[I[[I)I

    .line 184
    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    const/4 v14, 0x0

    aget v27, v9, v14

    aget v28, v10, v14

    aget-object v29, v12, v14

    const/16 v30, 0x0

    aget-object v31, v13, v14

    const/16 v32, 0x0

    move-object/from16 v26, v6

    invoke-virtual/range {v26 .. v32}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->init(II[II[II)V

    .line 188
    .end local v9    # "bl":[I
    .end local v10    # "bd":[I
    .end local v12    # "tl":[[I
    .end local v13    # "td":[[I
    ushr-int/lit8 v3, v3, 0x3

    .line 189
    add-int/lit8 v4, v4, -0x3

    .line 192
    const/4 v6, 0x6

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 193
    nop

    .line 221
    const/4 v9, 0x1

    goto :goto_61f

    .line 165
    :pswitch_611
    const/4 v14, 0x0

    ushr-int/lit8 v3, v3, 0x3

    .line 166
    add-int/lit8 v4, v4, -0x3

    .line 168
    and-int/lit8 v6, v4, 0x7

    .line 171
    .end local v7    # "t":I
    .local v6, "t":I
    ushr-int/2addr v3, v6

    .line 172
    sub-int/2addr v4, v6

    .line 174
    const/4 v9, 0x1

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 175
    nop

    .line 221
    move v7, v6

    .line 135
    .end local v8    # "q":I
    .end local v25    # "m":I
    .local v6, "m":I
    .restart local v7    # "t":I
    .restart local v14    # "q":I
    :goto_61f
    move v14, v8

    move/from16 v6, v25

    :goto_622
    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_21

    :pswitch_data_626
    .packed-switch 0x0
        :pswitch_579
        :pswitch_4ff
        :pswitch_44c
        :pswitch_79
        :pswitch_6f
        :pswitch_67
        :pswitch_60
        :pswitch_29c
        :pswitch_2c7
        :pswitch_46
    .end packed-switch

    :pswitch_data_63e
    .packed-switch 0x0
        :pswitch_611
        :pswitch_5e7
        :pswitch_5df
        :pswitch_5bc
    .end packed-switch
.end method

.method reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V
    .registers 7
    .param p1, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "c"    # [J

    .line 104
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 105
    iget-wide v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    aput-wide v1, p2, v0

    .line 107
    :cond_7
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    .line 108
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 109
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 110
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    .line 112
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v1, :cond_20

    .line 113
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, v0}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 115
    :cond_20
    return-void
.end method

.method set_dictionary([BII)V
    .registers 6
    .param p1, "d"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I

    .line 621
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    .line 623
    return-void
.end method

.method sync_point()I
    .registers 3

    .line 628
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
