.class final Lorg/jboss/netty/util/internal/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field private static final BADCODE:I = 0x9

.field private static final COPY:I = 0x5

.field private static final DIST:I = 0x3

.field private static final DISTEXT:I = 0x4

.field private static final END:I = 0x8

.field private static final LEN:I = 0x1

.field private static final LENEXT:I = 0x2

.field private static final LIT:I = 0x6

.field private static final START:I = 0x0

.field private static final WASH:I = 0x7

.field private static final inflate_mask:[I


# instance fields
.field private dbits:B

.field private dist:I

.field private dtree:[I

.field private dtree_index:I

.field private get:I

.field private lbits:B

.field private len:I

.field private lit:I

.field private ltree:[I

.field private ltree_index:I

.field private mode:I

.field private need:I

.field private tree:[I

.field private tree_index:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    return-void

    :array_a
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
.end method

.method constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static inflate_fast(II[II[IILorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .registers 48
    .param p0, "bl"    # I
    .param p1, "bd"    # I
    .param p2, "tl"    # [I
    .param p3, "tl_index"    # I
    .param p4, "td"    # [I
    .param p5, "td_index"    # I
    .param p6, "s"    # Lorg/jboss/netty/util/internal/jzlib/InfBlocks;
    .param p7, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 484
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    iget v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 485
    .local v2, "p":I
    iget v3, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 486
    .local v3, "n":I
    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 487
    .local v4, "b":I
    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 488
    .local v5, "k":I
    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 489
    .local v6, "q":I
    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_18

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v7, v6

    sub-int/2addr v7, v8

    goto :goto_1b

    :cond_18
    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v7, v6

    .line 492
    .local v7, "m":I
    :goto_1b
    sget-object v9, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v9, v9, p0

    .line 493
    .local v9, "ml":I
    sget-object v11, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v11, v11, p1

    .line 498
    .local v11, "md":I
    :goto_23
    const/16 v12, 0x14

    if-ge v5, v12, :cond_37

    .line 499
    add-int/lit8 v3, v3, -0x1

    .line 500
    iget-object v12, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v13, v2, 0x1

    .local v13, "p":I
    aget-byte v2, v12, v2

    .end local v2    # "p":I
    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    .line 501
    add-int/lit8 v5, v5, 0x8

    .line 493
    move v2, v13

    goto :goto_23

    .line 504
    .end local v13    # "p":I
    .restart local v2    # "p":I
    :cond_37
    and-int v12, v4, v9

    .line 505
    .local v12, "t":I
    move-object/from16 v13, p2

    .line 506
    .local v13, "tp":[I
    move/from16 v14, p3

    .line 507
    .local v14, "tp_index":I
    add-int v15, v14, v12

    mul-int/lit8 v15, v15, 0x3

    .line 508
    .local v15, "tp_index_t_3":I
    aget v16, v13, v15

    move/from16 v17, v16

    .local v17, "e":I
    if-nez v16, :cond_6d

    .line 509
    add-int/lit8 v16, v15, 0x1

    aget v16, v13, v16

    shr-int v4, v4, v16

    .line 510
    add-int/lit8 v16, v15, 0x1

    aget v16, v13, v16

    sub-int v5, v5, v16

    .line 512
    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v16, v6, 0x1

    .local v16, "q":I
    add-int/lit8 v18, v15, 0x2

    move/from16 v19, v4

    .end local v4    # "b":I
    .local v19, "b":I
    aget v4, v13, v18

    int-to-byte v4, v4

    aput-byte v4, v8, v6

    .line 513
    .end local v6    # "q":I
    add-int/lit8 v7, v7, -0x1

    .line 514
    nop

    .line 687
    move/from16 v20, v9

    move/from16 v6, v16

    move/from16 v8, v17

    move/from16 v4, v19

    goto/16 :goto_21d

    .line 518
    .end local v16    # "q":I
    .end local v19    # "b":I
    .restart local v4    # "b":I
    .restart local v6    # "q":I
    :cond_6d
    :goto_6d
    add-int/lit8 v8, v15, 0x1

    aget v8, v13, v8

    shr-int/2addr v4, v8

    .line 519
    add-int/lit8 v8, v15, 0x1

    aget v8, v13, v8

    sub-int/2addr v5, v8

    .line 521
    and-int/lit8 v8, v17, 0x10

    const/16 v16, -0x3

    if-eqz v8, :cond_1e3

    .line 522
    and-int/lit8 v8, v17, 0xf

    .line 523
    .end local v17    # "e":I
    .local v8, "e":I
    add-int/lit8 v17, v15, 0x2

    aget v17, v13, v17

    sget-object v18, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v18, v18, v8

    and-int v18, v4, v18

    move/from16 v20, v9

    .end local v9    # "ml":I
    .local v20, "ml":I
    add-int v9, v17, v18

    .line 525
    .local v9, "c":I
    shr-int/2addr v4, v8

    .line 526
    sub-int/2addr v5, v8

    .line 529
    :goto_8f
    move/from16 v21, v8

    .end local v8    # "e":I
    .local v21, "e":I
    const/16 v8, 0xf

    if-ge v5, v8, :cond_a8

    .line 530
    add-int/lit8 v3, v3, -0x1

    .line 531
    iget-object v8, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v17, v2, 0x1

    .local v17, "p":I
    aget-byte v2, v8, v2

    .end local v2    # "p":I
    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    .line 532
    add-int/lit8 v5, v5, 0x8

    .line 529
    move/from16 v2, v17

    move/from16 v8, v21

    goto :goto_8f

    .line 535
    .end local v17    # "p":I
    .restart local v2    # "p":I
    :cond_a8
    and-int v8, v4, v11

    .line 536
    .end local v12    # "t":I
    .local v8, "t":I
    move-object/from16 v13, p4

    .line 537
    move/from16 v14, p5

    .line 538
    add-int v12, v14, v8

    mul-int/lit8 v12, v12, 0x3

    .line 539
    .end local v15    # "tp_index_t_3":I
    .local v12, "tp_index_t_3":I
    aget v15, v13, v12

    .line 543
    move/from16 v39, v12

    move v12, v8

    move v8, v15

    move/from16 v15, v39

    .end local v21    # "e":I
    .local v8, "e":I
    .local v12, "t":I
    .restart local v15    # "tp_index_t_3":I
    :goto_ba
    add-int/lit8 v17, v15, 0x1

    aget v17, v13, v17

    shr-int v4, v4, v17

    .line 544
    add-int/lit8 v17, v15, 0x1

    aget v17, v13, v17

    sub-int v5, v5, v17

    .line 546
    and-int/lit8 v17, v8, 0x10

    if-eqz v17, :cond_197

    .line 548
    and-int/lit8 v8, v8, 0xf

    .line 549
    move/from16 v18, v2

    move/from16 v17, v3

    .end local v2    # "p":I
    .end local v3    # "n":I
    .local v17, "n":I
    .local v18, "p":I
    :goto_d0
    if-ge v5, v8, :cond_e3

    .line 550
    add-int/lit8 v17, v17, -0x1

    .line 551
    iget-object v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v3, v18, 0x1

    .local v3, "p":I
    aget-byte v2, v2, v18

    .end local v18    # "p":I
    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    .line 552
    add-int/lit8 v5, v5, 0x8

    .line 549
    move/from16 v18, v3

    goto :goto_d0

    .line 555
    .end local v3    # "p":I
    .restart local v18    # "p":I
    :cond_e3
    add-int/lit8 v2, v15, 0x2

    aget v2, v13, v2

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v8

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 557
    .local v2, "d":I
    shr-int v19, v4, v8

    .line 558
    .end local v4    # "b":I
    .restart local v19    # "b":I
    sub-int v21, v5, v8

    .line 561
    .end local v5    # "k":I
    .local v21, "k":I
    sub-int v22, v7, v9

    .line 562
    .end local v7    # "m":I
    .local v22, "m":I
    if-lt v6, v2, :cond_129

    .line 564
    sub-int v3, v6, v2

    .line 565
    .local v3, "r":I
    sub-int v4, v6, v3

    const/4 v5, 0x2

    if-lez v4, :cond_11b

    sub-int v4, v6, v3

    if-le v5, v4, :cond_11b

    .line 566
    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v5, v6, 0x1

    .local v5, "q":I
    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v16, v3, 0x1

    .local v16, "r":I
    aget-byte v3, v7, v3

    .end local v3    # "r":I
    aput-byte v3, v4, v6

    .line 567
    .end local v6    # "q":I
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v6, v5, 0x1

    .restart local v6    # "q":I
    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v16, 0x1

    .local v7, "r":I
    aget-byte v4, v4, v16

    .end local v16    # "r":I
    aput-byte v4, v3, v5

    .line 568
    .end local v5    # "q":I
    add-int/lit8 v9, v9, -0x2

    goto :goto_163

    .line 570
    .end local v7    # "r":I
    .restart local v3    # "r":I
    :cond_11b
    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v4, v3, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    add-int/lit8 v6, v6, 0x2

    .line 573
    add-int/lit8 v7, v3, 0x2

    .line 574
    .end local v3    # "r":I
    .restart local v7    # "r":I
    add-int/lit8 v9, v9, -0x2

    goto :goto_163

    .line 577
    .end local v7    # "r":I
    :cond_129
    sub-int v3, v6, v2

    .line 579
    .restart local v3    # "r":I
    :cond_12b
    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    add-int/2addr v3, v4

    .line 580
    if-ltz v3, :cond_12b

    .line 581
    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v4, v3

    .line 582
    .end local v8    # "e":I
    .local v4, "e":I
    if-le v9, v4, :cond_161

    .line 583
    sub-int/2addr v9, v4

    .line 584
    sub-int v5, v6, v3

    if-lez v5, :cond_154

    sub-int v5, v6, v3

    if-le v4, v5, :cond_154

    .line 586
    :goto_13e
    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v6, 0x1

    .local v7, "q":I
    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v16, v3, 0x1

    .restart local v16    # "r":I
    aget-byte v3, v8, v3

    .end local v3    # "r":I
    aput-byte v3, v5, v6

    .line 587
    .end local v6    # "q":I
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_150

    .line 595
    move v6, v7

    goto :goto_15f

    .line 586
    :cond_150
    move v6, v7

    move/from16 v3, v16

    goto :goto_13e

    .line 589
    .end local v7    # "q":I
    .end local v16    # "r":I
    .restart local v3    # "r":I
    .restart local v6    # "q":I
    :cond_154
    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v5, v3, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    add-int/2addr v6, v4

    .line 592
    add-int v16, v3, v4

    .line 593
    .end local v3    # "r":I
    .restart local v16    # "r":I
    const/4 v4, 0x0

    .line 595
    :goto_15f
    const/4 v7, 0x0

    goto :goto_162

    .line 601
    .end local v16    # "r":I
    .restart local v3    # "r":I
    :cond_161
    move v7, v3

    .end local v3    # "r":I
    .end local v4    # "e":I
    .local v7, "r":I
    .restart local v8    # "e":I
    :goto_162
    move v8, v4

    :goto_163
    sub-int v3, v6, v7

    if-lez v3, :cond_180

    sub-int v3, v6, v7

    if-le v9, v3, :cond_180

    .line 603
    .end local v2    # "d":I
    :goto_16b
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v3, v6, 0x1

    .local v3, "q":I
    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v5, v7, 0x1

    .local v5, "r":I
    aget-byte v4, v4, v7

    .end local v7    # "r":I
    aput-byte v4, v2, v6

    .line 604
    .end local v6    # "q":I
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_17d

    .line 687
    .end local v5    # "r":I
    .end local v9    # "c":I
    move v6, v3

    goto :goto_18b

    .line 603
    .restart local v5    # "r":I
    .restart local v9    # "c":I
    :cond_17d
    move v6, v3

    move v7, v5

    goto :goto_16b

    .line 606
    .end local v3    # "q":I
    .end local v5    # "r":I
    .restart local v2    # "d":I
    .restart local v6    # "q":I
    .restart local v7    # "r":I
    :cond_180
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v3, v7, v4, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    add-int/2addr v6, v9

    .line 608
    add-int/2addr v7, v9

    .line 609
    const/4 v3, 0x0

    .line 611
    .end local v9    # "c":I
    .local v3, "c":I
    nop

    .line 687
    .end local v17    # "n":I
    .end local v18    # "p":I
    .end local v19    # "b":I
    .end local v21    # "k":I
    .end local v22    # "m":I
    .local v2, "p":I
    .local v3, "n":I
    .local v4, "b":I
    .local v5, "k":I
    .local v7, "m":I
    :goto_18b
    move/from16 v3, v17

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v5, v21

    move/from16 v7, v22

    goto/16 :goto_21d

    .line 612
    .restart local v9    # "c":I
    :cond_197
    and-int/lit8 v17, v8, 0x40

    if-nez v17, :cond_1b1

    .line 613
    add-int/lit8 v17, v15, 0x2

    aget v17, v13, v17

    add-int v12, v12, v17

    .line 614
    sget-object v17, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v17, v17, v8

    and-int v17, v4, v17

    add-int v12, v12, v17

    .line 615
    add-int v17, v14, v12

    mul-int/lit8 v15, v17, 0x3

    .line 616
    aget v8, v13, v15

    goto/16 :goto_ba

    .line 618
    :cond_1b1
    move/from16 v25, v8

    .end local v8    # "e":I
    .local v25, "e":I
    const-string v8, "invalid distance code"

    iput-object v8, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 620
    iget v8, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v8, v3

    .line 621
    .end local v9    # "c":I
    .local v8, "c":I
    shr-int/lit8 v9, v5, 0x3

    if-ge v9, v8, :cond_1c1

    shr-int/lit8 v9, v5, 0x3

    goto :goto_1c2

    :cond_1c1
    move v9, v8

    :goto_1c2
    move v8, v9

    .line 622
    add-int/2addr v3, v8

    .line 623
    sub-int/2addr v2, v8

    .line 624
    shl-int/lit8 v9, v8, 0x3

    sub-int/2addr v5, v9

    .line 626
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 627
    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 628
    iput v3, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 629
    move/from16 v27, v3

    move/from16 v26, v4

    .end local v3    # "n":I
    .end local v4    # "b":I
    .local v26, "b":I
    .local v27, "n":I
    iget-wide v3, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v9, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v9, v2, v9

    move/from16 v28, v8

    .end local v8    # "c":I
    .local v28, "c":I
    int-to-long v8, v9

    add-long/2addr v3, v8

    iput-wide v3, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 630
    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 631
    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 633
    return v16

    .line 639
    .end local v20    # "ml":I
    .end local v25    # "e":I
    .end local v26    # "b":I
    .end local v27    # "n":I
    .end local v28    # "c":I
    .restart local v3    # "n":I
    .restart local v4    # "b":I
    .local v9, "ml":I
    .local v17, "e":I
    :cond_1e3
    move/from16 v20, v9

    .end local v9    # "ml":I
    .restart local v20    # "ml":I
    and-int/lit8 v8, v17, 0x40

    if-nez v8, :cond_25f

    .line 640
    add-int/lit8 v8, v15, 0x2

    aget v8, v13, v8

    add-int/2addr v12, v8

    .line 641
    sget-object v8, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v8, v8, v17

    and-int/2addr v8, v4

    add-int/2addr v12, v8

    .line 642
    add-int v8, v14, v12

    mul-int/lit8 v15, v8, 0x3

    .line 643
    aget v8, v13, v15

    move/from16 v17, v8

    if-nez v8, :cond_25b

    .line 645
    add-int/lit8 v8, v15, 0x1

    aget v8, v13, v8

    shr-int/2addr v4, v8

    .line 646
    add-int/lit8 v8, v15, 0x1

    aget v8, v13, v8

    sub-int/2addr v5, v8

    .line 648
    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v9, v6, 0x1

    .local v9, "q":I
    add-int/lit8 v16, v15, 0x2

    move/from16 v29, v4

    .end local v4    # "b":I
    .local v29, "b":I
    aget v4, v13, v16

    int-to-byte v4, v4

    aput-byte v4, v8, v6

    .line 649
    .end local v6    # "q":I
    add-int/lit8 v7, v7, -0x1

    .line 650
    nop

    .line 687
    move v6, v9

    move/from16 v8, v17

    move/from16 v4, v29

    .end local v9    # "q":I
    .end local v17    # "e":I
    .end local v29    # "b":I
    .restart local v4    # "b":I
    .restart local v6    # "q":I
    .local v8, "e":I
    :goto_21d
    const/16 v9, 0x102

    if-lt v7, v9, :cond_22b

    const/16 v9, 0xa

    if-ge v3, v9, :cond_226

    goto :goto_22b

    .line 493
    .end local v8    # "e":I
    .end local v12    # "t":I
    .end local v13    # "tp":[I
    .end local v14    # "tp_index":I
    .end local v15    # "tp_index_t_3":I
    :cond_226
    move/from16 v9, v20

    const/4 v8, 0x1

    goto/16 :goto_23

    .line 690
    .restart local v8    # "e":I
    .restart local v12    # "t":I
    .restart local v13    # "tp":[I
    .restart local v14    # "tp_index":I
    .restart local v15    # "tp_index_t_3":I
    :cond_22b
    :goto_22b
    iget v9, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v9, v3

    .line 691
    .local v9, "c":I
    move/from16 v30, v7

    .end local v7    # "m":I
    .local v30, "m":I
    shr-int/lit8 v7, v5, 0x3

    if-ge v7, v9, :cond_237

    shr-int/lit8 v7, v5, 0x3

    goto :goto_238

    :cond_237
    move v7, v9

    .line 692
    .end local v9    # "c":I
    .local v7, "c":I
    :goto_238
    add-int/2addr v3, v7

    .line 693
    sub-int/2addr v2, v7

    .line 694
    shl-int/lit8 v9, v7, 0x3

    sub-int/2addr v5, v9

    .line 696
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 697
    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 698
    iput v3, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 699
    move/from16 v32, v3

    move/from16 v31, v4

    .end local v3    # "n":I
    .end local v4    # "b":I
    .local v31, "b":I
    .local v32, "n":I
    iget-wide v3, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v9, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v9, v2, v9

    move/from16 v34, v7

    move/from16 v33, v8

    .end local v7    # "c":I
    .end local v8    # "e":I
    .local v33, "e":I
    .local v34, "c":I
    int-to-long v7, v9

    add-long/2addr v3, v7

    iput-wide v3, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 700
    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 701
    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 703
    const/4 v3, 0x0

    return v3

    .line 518
    .end local v30    # "m":I
    .end local v31    # "b":I
    .end local v32    # "n":I
    .end local v33    # "e":I
    .end local v34    # "c":I
    .restart local v3    # "n":I
    .restart local v4    # "b":I
    .local v7, "m":I
    .restart local v17    # "e":I
    :cond_25b
    move/from16 v9, v20

    goto/16 :goto_6d

    .line 652
    :cond_25f
    and-int/lit8 v8, v17, 0x20

    if-eqz v8, :cond_28e

    .line 654
    iget v8, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v8, v3

    .line 655
    .local v8, "c":I
    shr-int/lit8 v9, v5, 0x3

    if-ge v9, v8, :cond_26d

    shr-int/lit8 v9, v5, 0x3

    goto :goto_26e

    :cond_26d
    move v9, v8

    :goto_26e
    move v8, v9

    .line 656
    add-int/2addr v3, v8

    .line 657
    sub-int/2addr v2, v8

    .line 658
    shl-int/lit8 v9, v8, 0x3

    sub-int/2addr v5, v9

    .line 660
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 661
    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 662
    iput v3, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 663
    move/from16 v35, v7

    move/from16 v36, v8

    .end local v7    # "m":I
    .end local v8    # "c":I
    .local v35, "m":I
    .local v36, "c":I
    iget-wide v7, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v9, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v9, v2, v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 664
    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 665
    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 667
    const/4 v7, 0x1

    return v7

    .line 669
    .end local v35    # "m":I
    .end local v36    # "c":I
    .restart local v7    # "m":I
    :cond_28e
    move/from16 v35, v7

    .end local v7    # "m":I
    .restart local v35    # "m":I
    const-string v7, "invalid literal/length code"

    iput-object v7, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 671
    iget v7, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v7, v3

    .line 672
    .local v7, "c":I
    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v7, :cond_29e

    shr-int/lit8 v8, v5, 0x3

    goto :goto_29f

    :cond_29e
    move v8, v7

    :goto_29f
    move v7, v8

    .line 673
    add-int/2addr v3, v7

    .line 674
    sub-int/2addr v2, v7

    .line 675
    shl-int/lit8 v8, v7, 0x3

    sub-int/2addr v5, v8

    .line 677
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 678
    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 679
    iput v3, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 680
    iget-wide v8, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v10, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v10, v2, v10

    move/from16 v38, v3

    move/from16 v37, v4

    .end local v3    # "n":I
    .end local v4    # "b":I
    .local v37, "b":I
    .local v38, "n":I
    int-to-long v3, v10

    add-long/2addr v8, v3

    iput-wide v8, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 681
    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 682
    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 684
    return v16
.end method


# virtual methods
.method init(II[II[II)V
    .registers 8
    .param p1, "bl"    # I
    .param p2, "bd"    # I
    .param p3, "tl"    # [I
    .param p4, "tl_index"    # I
    .param p5, "td"    # [I
    .param p6, "td_index"    # I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 93
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lbits:B

    .line 94
    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dbits:B

    .line 95
    iput-object p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree:[I

    .line 96
    iput p4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree_index:I

    .line 97
    iput-object p5, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree:[I

    .line 98
    iput p6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree_index:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    .line 100
    return-void
.end method

.method proc(Lorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .registers 32
    .param p1, "s"    # Lorg/jboss/netty/util/internal/jzlib/InfBlocks;
    .param p2, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p3, "r"    # I

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v1, 0x0

    .line 107
    .local v1, "b":I
    const/4 v2, 0x0

    .line 108
    .local v2, "k":I
    const/4 v3, 0x0

    .line 115
    .local v3, "p":I
    iget v3, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 116
    iget v4, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 117
    .local v4, "n":I
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 118
    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 119
    iget v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 120
    .local v5, "q":I
    iget v6, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    const/4 v11, 0x1

    if-ge v5, v6, :cond_1d

    iget v6, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v11

    goto :goto_20

    :cond_1d
    iget v6, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v5

    :goto_20
    const/4 v12, 0x0

    move/from16 v13, p3

    move v14, v1

    move v15, v2

    move v7, v3

    move v8, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 124
    .end local v1    # "b":I
    .end local v2    # "k":I
    .end local v3    # "p":I
    .end local v4    # "n":I
    .end local p3    # "r":I
    .local v6, "m":I
    .local v7, "p":I
    .local v8, "n":I
    .local v13, "r":I
    .local v14, "b":I
    .local v15, "k":I
    .local v16, "j":I
    .local v17, "tindex":I
    .local v18, "e":I
    .local v19, "f":I
    :goto_2f
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    const/16 v4, 0x9

    const/4 v3, 0x7

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_44c

    .line 445
    move v12, v5

    move v11, v7

    move/from16 v24, v8

    move/from16 v22, v13

    move/from16 v23, v15

    move v13, v6

    .end local v5    # "q":I
    .end local v6    # "m":I
    .end local v7    # "p":I
    .end local v8    # "n":I
    .end local v15    # "k":I
    .local v11, "p":I
    .local v12, "q":I
    .local v13, "m":I
    .local v22, "r":I
    .local v23, "k":I
    .local v24, "n":I
    const/4 v1, -0x2

    .line 447
    .end local v22    # "r":I
    .local v1, "r":I
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 448
    nop

    .end local v23    # "k":I
    .restart local v15    # "k":I
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 449
    nop

    .end local v24    # "n":I
    .restart local v8    # "n":I
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 450
    iget-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v7, v11, v4

    int-to-long v4, v7

    add-long/2addr v2, v4

    iput-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 451
    iput v11, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 452
    iput v12, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 453
    invoke-virtual {v9, v10, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    return v2

    .line 434
    .end local v1    # "r":I
    .end local v11    # "p":I
    .end local v12    # "q":I
    .restart local v5    # "q":I
    .restart local v6    # "m":I
    .restart local v7    # "p":I
    .local v13, "r":I
    :pswitch_5d
    const/4 v1, -0x3

    .line 436
    .end local v13    # "r":I
    .restart local v1    # "r":I
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 437
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 438
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 439
    iget-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v7, v4

    int-to-long v11, v4

    add-long/2addr v2, v11

    iput-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 440
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 441
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 442
    invoke-virtual {v9, v10, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    return v2

    .line 402
    .end local v1    # "r":I
    .restart local v13    # "r":I
    :pswitch_77
    if-le v15, v3, :cond_7f

    .line 403
    add-int/lit8 v15, v15, -0x8

    .line 404
    add-int/lit8 v8, v8, 0x1

    .line 405
    add-int/lit8 v7, v7, -0x1

    .line 408
    :cond_7f
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 409
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v13

    .line 410
    iget v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 412
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    if-eq v1, v2, :cond_a6

    .line 413
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 414
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 415
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 416
    iget-wide v1, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v3, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v7, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 417
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 418
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 419
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 421
    :cond_a6
    const/16 v1, 0x8

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 423
    :pswitch_aa
    const/4 v1, 0x1

    .line 424
    .end local v13    # "r":I
    .restart local v1    # "r":I
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 425
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 426
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 427
    iget-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v7, v4

    int-to-long v11, v4

    add-long/2addr v2, v11

    iput-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 428
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 429
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 430
    invoke-virtual {v9, v10, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    return v2

    .line 368
    .end local v1    # "r":I
    .restart local v13    # "r":I
    :pswitch_c4
    if-nez v6, :cond_125

    .line 369
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v5, v1, :cond_dc

    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v1, :cond_dc

    .line 370
    const/4 v5, 0x0

    .line 371
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v5, v1, :cond_d8

    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v1, v5

    sub-int/2addr v1, v11

    goto :goto_db

    :cond_d8
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v1, v5

    :goto_db
    move v6, v1

    .line 373
    :cond_dc
    if-nez v6, :cond_125

    .line 374
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 375
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v13

    .line 376
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 377
    .end local v5    # "q":I
    .local v1, "q":I
    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v2, :cond_ef

    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, v11

    goto :goto_f2

    :cond_ef
    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v2, v1

    .line 379
    .end local v6    # "m":I
    .local v2, "m":I
    :goto_f2
    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v1, v3, :cond_108

    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v3, :cond_108

    .line 380
    const/4 v1, 0x0

    .line 381
    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v3, :cond_104

    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v11

    goto :goto_107

    :cond_104
    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v3, v1

    :goto_107
    move v2, v3

    .line 383
    .end local v1    # "q":I
    .end local v2    # "m":I
    .restart local v5    # "q":I
    .restart local v6    # "m":I
    :cond_108
    move v5, v1

    move v6, v2

    if-nez v6, :cond_125

    .line 384
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 385
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 386
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 387
    iget-wide v1, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v3, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v7, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 388
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 389
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 390
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 394
    :cond_125
    const/4 v13, 0x0

    .line 396
    iget-object v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v2, v5, 0x1

    .local v2, "q":I
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lit:I

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    .line 397
    .end local v5    # "q":I
    add-int/lit8 v6, v6, -0x1

    .line 399
    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 400
    nop

    .line 120
    move v5, v2

    goto/16 :goto_2f

    .line 296
    .end local v2    # "q":I
    .end local v19    # "f":I
    .restart local v5    # "q":I
    :pswitch_137
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    .line 298
    .end local v16    # "j":I
    .local v1, "j":I
    :goto_139
    if-ge v15, v1, :cond_167

    .line 299
    if-eqz v8, :cond_14e

    .line 300
    const/4 v13, 0x0

    .line 311
    add-int/lit8 v8, v8, -0x1

    .line 312
    iget-object v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "p":I
    aget-byte v2, v2, v7

    .end local v7    # "p":I
    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v15

    or-int/2addr v14, v2

    .line 313
    add-int/lit8 v15, v15, 0x8

    .line 298
    move v7, v3

    goto :goto_139

    .line 303
    .end local v3    # "p":I
    .restart local v7    # "p":I
    :cond_14e
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 304
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 305
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 306
    iget-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v7, v4

    int-to-long v11, v4

    add-long/2addr v2, v11

    iput-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 307
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 308
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 309
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    return v2

    .line 316
    :cond_167
    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v1

    and-int/2addr v3, v14

    add-int/2addr v2, v3

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    .line 318
    shr-int v2, v14, v1

    .line 319
    .end local v14    # "b":I
    .local v2, "b":I
    sub-int/2addr v15, v1

    .line 321
    const/4 v3, 0x5

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 323
    move/from16 v16, v1

    move v14, v2

    .end local v1    # "j":I
    .end local v2    # "b":I
    .restart local v14    # "b":I
    .restart local v16    # "j":I
    :pswitch_17a
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    sub-int v1, v5, v1

    .line 324
    .local v1, "f":I
    :goto_17e
    if-gez v1, :cond_184

    .line 325
    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    add-int/2addr v1, v2

    goto :goto_17e

    .line 327
    :cond_184
    move/from16 v19, v1

    .end local v1    # "f":I
    .restart local v19    # "f":I
    :goto_186
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    if-eqz v1, :cond_20b

    .line 329
    if-nez v6, :cond_1eb

    .line 330
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v5, v1, :cond_1a2

    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v1, :cond_1a2

    .line 331
    const/4 v5, 0x0

    .line 332
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v5, v1, :cond_19e

    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v1, v5

    sub-int/2addr v1, v11

    goto :goto_1a1

    :cond_19e
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v1, v5

    :goto_1a1
    move v6, v1

    .line 334
    :cond_1a2
    if-nez v6, :cond_1eb

    .line 335
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 336
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v13

    .line 337
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 338
    .end local v5    # "q":I
    .local v1, "q":I
    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v2, :cond_1b5

    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, v11

    goto :goto_1b8

    :cond_1b5
    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v2, v1

    .line 340
    .end local v6    # "m":I
    .local v2, "m":I
    :goto_1b8
    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v1, v3, :cond_1ce

    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v3, :cond_1ce

    .line 341
    const/4 v1, 0x0

    .line 342
    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v3, :cond_1ca

    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v11

    goto :goto_1cd

    :cond_1ca
    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v3, v1

    :goto_1cd
    move v2, v3

    .line 345
    .end local v1    # "q":I
    .end local v2    # "m":I
    .restart local v5    # "q":I
    .restart local v6    # "m":I
    :cond_1ce
    move v5, v1

    move v6, v2

    if-nez v6, :cond_1eb

    .line 346
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 347
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 348
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 349
    iget-wide v1, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v3, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v7, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 350
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 351
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 352
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 357
    :cond_1eb
    iget-object v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v2, v5, 0x1

    .local v2, "q":I
    iget-object v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v4, v19, 0x1

    .local v4, "f":I
    aget-byte v3, v3, v19

    .end local v19    # "f":I
    aput-byte v3, v1, v5

    .line 358
    .end local v5    # "q":I
    add-int/lit8 v6, v6, -0x1

    .line 360
    iget v1, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v4, v1, :cond_201

    .line 361
    const/4 v1, 0x0

    .line 363
    move/from16 v19, v1

    goto :goto_203

    :cond_201
    move/from16 v19, v4

    .end local v4    # "f":I
    .restart local v19    # "f":I
    :goto_203
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    sub-int/2addr v1, v11

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    .line 327
    move v5, v2

    goto/16 :goto_186

    .line 365
    .end local v2    # "q":I
    .restart local v5    # "q":I
    :cond_20b
    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 366
    goto/16 :goto_2f

    .line 216
    :pswitch_20f
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    .line 218
    .end local v16    # "j":I
    .local v1, "j":I
    :goto_211
    if-ge v15, v1, :cond_240

    .line 219
    if-eqz v8, :cond_227

    .line 220
    const/4 v13, 0x0

    .line 231
    add-int/lit8 v8, v8, -0x1

    .line 232
    iget-object v3, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v16, v7, 0x1

    .local v16, "p":I
    aget-byte v3, v3, v7

    .end local v7    # "p":I
    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v15

    or-int/2addr v14, v3

    .line 233
    add-int/lit8 v15, v15, 0x8

    .line 218
    move/from16 v7, v16

    goto :goto_211

    .line 223
    .end local v16    # "p":I
    .end local v19    # "f":I
    .restart local v7    # "p":I
    :cond_227
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 224
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 225
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 226
    iget-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v7, v4

    int-to-long v11, v4

    add-long/2addr v2, v11

    iput-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 227
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 228
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 229
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    return v2

    .line 236
    .restart local v19    # "f":I
    :cond_240
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    sget-object v16, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v16, v16, v1

    and-int v16, v14, v16

    add-int v3, v3, v16

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    .line 238
    shr-int/2addr v14, v1

    .line 239
    sub-int/2addr v15, v1

    .line 241
    iget-byte v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dbits:B

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 242
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree:[I

    iput-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    .line 243
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree_index:I

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    .line 244
    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 246
    move/from16 v16, v1

    .end local v1    # "j":I
    .local v16, "j":I
    :pswitch_25e
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 248
    .end local v16    # "j":I
    .restart local v1    # "j":I
    :goto_260
    if-ge v15, v1, :cond_28f

    .line 249
    if-eqz v8, :cond_276

    .line 250
    const/4 v13, 0x0

    .line 261
    add-int/lit8 v8, v8, -0x1

    .line 262
    iget-object v3, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v16, v7, 0x1

    .local v16, "p":I
    aget-byte v3, v3, v7

    .end local v7    # "p":I
    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v15

    or-int/2addr v14, v3

    .line 263
    add-int/lit8 v15, v15, 0x8

    .line 248
    move/from16 v7, v16

    goto :goto_260

    .line 253
    .end local v16    # "p":I
    .end local v19    # "f":I
    .restart local v7    # "p":I
    :cond_276
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 254
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 255
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 256
    iget-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v7, v4

    int-to-long v11, v4

    add-long/2addr v2, v11

    iput-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 257
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 258
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 259
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    return v2

    .line 266
    .restart local v19    # "f":I
    :cond_28f
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    sget-object v16, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v16, v16, v1

    and-int v16, v14, v16

    add-int v3, v3, v16

    mul-int/lit8 v17, v3, 0x3

    .line 268
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v17, 0x1

    aget v2, v2, v3

    shr-int/2addr v14, v2

    .line 269
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v3, v17, 0x1

    aget v2, v2, v3

    sub-int/2addr v15, v2

    .line 271
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    aget v2, v2, v17

    .line 272
    .end local v18    # "e":I
    .local v2, "e":I
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2c1

    .line 273
    and-int/lit8 v3, v2, 0xf

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    .line 274
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v4, v17, 0x2

    aget v3, v3, v4

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    .line 275
    const/4 v3, 0x4

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 276
    goto :goto_2d3

    .line 278
    :cond_2c1
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_2d9

    .line 279
    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 280
    div-int/lit8 v3, v17, 0x3

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v16, v17, 0x2

    aget v4, v4, v16

    add-int/2addr v3, v4

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    .line 281
    nop

    .line 120
    :goto_2d3
    move/from16 v16, v1

    move/from16 v18, v2

    goto/16 :goto_2f

    .line 283
    .end local v19    # "f":I
    :cond_2d9
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 284
    const-string v3, "invalid distance code"

    iput-object v3, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 285
    const/4 v3, -0x3

    .line 287
    .end local v13    # "r":I
    .local v3, "r":I
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 288
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 289
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 290
    iget-wide v11, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v4, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v7, v4

    move/from16 v20, v1

    move/from16 v21, v2

    .end local v1    # "j":I
    .end local v2    # "e":I
    .local v20, "j":I
    .local v21, "e":I
    int-to-long v1, v4

    add-long/2addr v11, v1

    iput-wide v11, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 291
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 292
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 293
    invoke-virtual {v9, v10, v3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 156
    .end local v3    # "r":I
    .end local v17    # "tindex":I
    .end local v20    # "j":I
    .end local v21    # "e":I
    .restart local v13    # "r":I
    .restart local v19    # "f":I
    :pswitch_2fd
    move v2, v15

    const/4 v1, 0x1

    const/4 v15, 0x7

    const/16 v20, 0x3

    goto/16 :goto_391

    .line 127
    .local v16, "j":I
    .restart local v17    # "tindex":I
    .restart local v18    # "e":I
    :pswitch_304
    const/16 v1, 0x102

    if-lt v6, v1, :cond_36d

    const/16 v1, 0xa

    if-lt v8, v1, :cond_36d

    .line 129
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 130
    iput v15, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 131
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 132
    iget-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v1, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v1, v7, v1

    move/from16 v22, v13

    .end local v13    # "r":I
    .restart local v22    # "r":I
    int-to-long v12, v1

    add-long/2addr v2, v12

    iput-wide v2, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 133
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 134
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 135
    iget-byte v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lbits:B

    iget-byte v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dbits:B

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree:[I

    iget v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree_index:I

    iget-object v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree:[I

    iget v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree_index:I

    const/16 v20, 0x3

    move/from16 v23, v15

    const/4 v15, 0x7

    .end local v15    # "k":I
    .restart local v23    # "k":I
    move v4, v12

    move v12, v5

    .end local v5    # "q":I
    .restart local v12    # "q":I
    move-object v5, v13

    move v13, v6

    .end local v6    # "m":I
    .local v13, "m":I
    move v6, v11

    move v11, v7

    .end local v7    # "p":I
    .restart local v11    # "p":I
    move-object/from16 v7, p1

    move/from16 v24, v8

    .end local v8    # "n":I
    .restart local v24    # "n":I
    move-object/from16 v8, p2

    invoke-static/range {v1 .. v8}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_fast(II[II[IILorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v1

    .line 138
    .end local v22    # "r":I
    .local v1, "r":I
    iget v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 139
    .end local v11    # "p":I
    .restart local v7    # "p":I
    iget v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 140
    .end local v24    # "n":I
    .restart local v8    # "n":I
    iget v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 141
    iget v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 142
    .end local v23    # "k":I
    .local v2, "k":I
    iget v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 143
    .end local v12    # "q":I
    .restart local v5    # "q":I
    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v5, v3, :cond_357

    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v3, v5

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    goto :goto_35b

    :cond_357
    const/4 v4, 0x1

    iget v3, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v3, v5

    :goto_35b
    move v6, v3

    .line 145
    .end local v13    # "m":I
    .restart local v6    # "m":I
    if-eqz v1, :cond_36a

    .line 146
    if-ne v1, v4, :cond_361

    goto :goto_363

    :cond_361
    const/16 v15, 0x9

    :goto_363
    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 147
    nop

    .line 120
    move v13, v1

    move v15, v2

    goto/16 :goto_422

    .line 150
    .end local v16    # "j":I
    .end local v17    # "tindex":I
    .end local v18    # "e":I
    :cond_36a
    move v13, v1

    move v12, v5

    goto :goto_381

    .end local v1    # "r":I
    .end local v2    # "k":I
    .local v13, "r":I
    .restart local v15    # "k":I
    :cond_36d
    move v12, v5

    move v11, v7

    move/from16 v24, v8

    move/from16 v22, v13

    move/from16 v23, v15

    const/4 v15, 0x7

    const/16 v20, 0x3

    move v13, v6

    .end local v5    # "q":I
    .end local v6    # "m":I
    .end local v7    # "p":I
    .end local v8    # "n":I
    .end local v15    # "k":I
    .restart local v11    # "p":I
    .restart local v12    # "q":I
    .local v13, "m":I
    .restart local v22    # "r":I
    .restart local v23    # "k":I
    .restart local v24    # "n":I
    move v7, v11

    move v6, v13

    move/from16 v13, v22

    move/from16 v2, v23

    move/from16 v8, v24

    .end local v11    # "p":I
    .end local v22    # "r":I
    .end local v23    # "k":I
    .end local v24    # "n":I
    .restart local v2    # "k":I
    .restart local v6    # "m":I
    .restart local v7    # "p":I
    .restart local v8    # "n":I
    .local v13, "r":I
    :goto_381
    iget-byte v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lbits:B

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 151
    iget-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree:[I

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    .line 152
    iget v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree_index:I

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    .line 154
    const/4 v1, 0x1

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 156
    move v5, v12

    .end local v12    # "q":I
    .restart local v5    # "q":I
    :goto_391
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 158
    .local v3, "j":I
    :goto_393
    if-ge v2, v3, :cond_3c3

    .line 159
    if-eqz v8, :cond_3a8

    .line 160
    const/4 v13, 0x0

    .line 171
    add-int/lit8 v8, v8, -0x1

    .line 172
    iget-object v4, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v11, v7, 0x1

    .restart local v11    # "p":I
    aget-byte v4, v4, v7

    .end local v7    # "p":I
    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v2

    or-int/2addr v14, v4

    .line 173
    add-int/lit8 v2, v2, 0x8

    .line 156
    move v7, v11

    goto :goto_393

    .line 163
    .end local v11    # "p":I
    .end local v19    # "f":I
    .restart local v7    # "p":I
    :cond_3a8
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 164
    iput v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 165
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 166
    iget-wide v11, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v1, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v1, v7, v1

    move/from16 v25, v2

    .end local v2    # "k":I
    .local v25, "k":I
    int-to-long v1, v1

    add-long/2addr v11, v1

    iput-wide v11, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 167
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 168
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 169
    invoke-virtual {v9, v10, v13}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 176
    .end local v25    # "k":I
    .restart local v2    # "k":I
    .restart local v19    # "f":I
    :cond_3c3
    move/from16 v25, v2

    .end local v2    # "k":I
    .restart local v25    # "k":I
    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v4, v4, v3

    and-int/2addr v4, v14

    add-int/2addr v2, v4

    mul-int/lit8 v17, v2, 0x3

    .line 178
    .restart local v17    # "tindex":I
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v4, v17, 0x1

    aget v2, v2, v4

    ushr-int/2addr v14, v2

    .line 179
    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v4, v17, 0x1

    aget v2, v2, v4

    sub-int v2, v25, v2

    .line 181
    .end local v25    # "k":I
    .restart local v2    # "k":I
    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    aget v4, v4, v17

    .line 183
    .local v4, "e":I
    if-nez v4, :cond_3f0

    .line 184
    iget-object v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v12, v17, 0x2

    aget v11, v11, v12

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lit:I

    .line 185
    const/4 v11, 0x6

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 186
    goto :goto_41d

    .line 188
    :cond_3f0
    and-int/lit8 v11, v4, 0x10

    if-eqz v11, :cond_404

    .line 189
    and-int/lit8 v11, v4, 0xf

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    .line 190
    iget-object v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v12, v17, 0x2

    aget v11, v11, v12

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    .line 191
    const/4 v11, 0x2

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 192
    goto :goto_41d

    .line 194
    :cond_404
    and-int/lit8 v11, v4, 0x40

    if-nez v11, :cond_416

    .line 195
    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    .line 196
    div-int/lit8 v11, v17, 0x3

    iget-object v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v15, v17, 0x2

    aget v12, v12, v15

    add-int/2addr v11, v12

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    .line 197
    goto :goto_41d

    .line 199
    :cond_416
    and-int/lit8 v11, v4, 0x20

    if-eqz v11, :cond_426

    .line 200
    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 201
    nop

    .line 120
    :goto_41d
    move v15, v2

    move/from16 v16, v3

    move/from16 v18, v4

    .end local v2    # "k":I
    .end local v3    # "j":I
    .end local v4    # "e":I
    .restart local v15    # "k":I
    .restart local v16    # "j":I
    .restart local v18    # "e":I
    :goto_422
    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2f

    .line 203
    .end local v15    # "k":I
    .end local v16    # "j":I
    .end local v18    # "e":I
    .end local v19    # "f":I
    .restart local v2    # "k":I
    .restart local v3    # "j":I
    .restart local v4    # "e":I
    :cond_426
    const/16 v1, 0x9

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    .line 204
    const-string v1, "invalid literal/length code"

    iput-object v1, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 205
    const/4 v1, -0x3

    .line 207
    .end local v13    # "r":I
    .restart local v1    # "r":I
    iput v14, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    .line 208
    iput v2, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    .line 209
    iput v8, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 210
    iget-wide v11, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v13, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v13, v7, v13

    move/from16 v27, v2

    move/from16 v26, v3

    .end local v2    # "k":I
    .end local v3    # "j":I
    .local v26, "j":I
    .local v27, "k":I
    int-to-long v2, v13

    add-long/2addr v11, v2

    iput-wide v11, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 211
    iput v7, v10, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 212
    iput v5, v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    .line 213
    invoke-virtual {v9, v10, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v2

    return v2

    :pswitch_data_44c
    .packed-switch 0x0
        :pswitch_304
        :pswitch_2fd
        :pswitch_20f
        :pswitch_25e
        :pswitch_137
        :pswitch_17a
        :pswitch_c4
        :pswitch_77
        :pswitch_aa
        :pswitch_5d
    .end packed-switch
.end method
