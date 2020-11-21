.class final Lorg/jboss/netty/util/internal/jzlib/Deflate;
.super Ljava/lang/Object;
.source "Deflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;
    }
.end annotation


# static fields
.field private static final BUSY_STATE:I = 0x71

.field private static final BlockDone:I = 0x1

.field private static final Buf_size:I = 0x10

.field private static final DYN_TREES:I = 0x2

.field private static final END_BLOCK:I = 0x100

.field private static final FAST:I = 0x1

.field private static final FINISH_STATE:I = 0x29a

.field private static final FinishDone:I = 0x3

.field private static final FinishStarted:I = 0x2

.field private static final INIT_STATE:I = 0x2a

.field private static final MAX_MATCH:I = 0x102

.field private static final MIN_LOOKAHEAD:I = 0x106

.field private static final MIN_MATCH:I = 0x3

.field private static final NeedMore:I = 0x0

.field private static final REPZ_11_138:I = 0x12

.field private static final REPZ_3_10:I = 0x11

.field private static final REP_3_6:I = 0x10

.field private static final SLOW:I = 0x2

.field private static final STATIC_TREES:I = 0x1

.field private static final STORED:I = 0x0

.field private static final STORED_BLOCK:I = 0x0

.field private static final Z_ASCII:I = 0x1

.field private static final Z_BINARY:I = 0x0

.field private static final Z_UNKNOWN:I = 0x2

.field private static final config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

.field private static final z_errmsg:[Ljava/lang/String;


# instance fields
.field bi_buf:S

.field bi_valid:I

.field bl_count:[S

.field bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

.field bl_tree:[S

.field block_start:I

.field d_buf:I

.field d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

.field data_type:B

.field depth:[B

.field dyn_dtree:[S

.field dyn_ltree:[S

.field good_match:I

.field private gzipUncompressedBytes:I

.field hash_bits:I

.field hash_mask:I

.field hash_shift:I

.field hash_size:I

.field head:[S

.field heap:[I

.field heap_len:I

.field heap_max:I

.field ins_h:I

.field l_buf:I

.field l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

.field last_eob_len:I

.field last_flush:I

.field last_lit:I

.field level:I

.field lit_bufsize:I

.field lookahead:I

.field match_available:I

.field match_length:I

.field match_start:I

.field matches:I

.field max_chain_length:I

.field max_lazy_match:I

.field nice_match:I

.field opt_len:I

.field pending:I

.field pending_buf:[B

.field pending_buf_size:I

.field pending_out:I

.field prev:[S

.field prev_length:I

.field prev_match:I

.field static_len:I

.field status:I

.field strategy:I

.field strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

.field strstart:I

.field w_bits:I

.field w_mask:I

.field w_size:I

.field window:[B

.field window_size:I

.field wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

.field private wroteTrailer:Z


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 77
    const/16 v0, 0xa

    new-array v1, v0, [Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    sput-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    .line 78
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v8, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    .line 79
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v9, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v3, 0x1

    aput-object v9, v1, v3

    .line 80
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v10, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v6, 0x5

    const/16 v7, 0x10

    const/16 v8, 0x8

    const/4 v9, 0x1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v4, 0x2

    aput-object v10, v1, v4

    .line 81
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v11, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/16 v8, 0x20

    const/16 v9, 0x20

    const/4 v10, 0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v5, 0x3

    aput-object v11, v1, v5

    .line 83
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v12, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/16 v9, 0x10

    const/16 v10, 0x10

    const/4 v11, 0x2

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v6, 0x4

    aput-object v12, v1, v6

    .line 84
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v13, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v8, 0x8

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/4 v12, 0x2

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v7, 0x5

    aput-object v13, v1, v7

    .line 85
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v14, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v9, 0x8

    const/16 v10, 0x10

    const/16 v11, 0x80

    const/16 v12, 0x80

    const/4 v13, 0x2

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v8, 0x6

    aput-object v14, v1, v8

    .line 86
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v15, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v10, 0x8

    const/16 v11, 0x20

    const/16 v13, 0x100

    const/4 v14, 0x2

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v9, 0x7

    aput-object v15, v1, v9

    .line 87
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v16, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v13, 0x102

    const/16 v14, 0x400

    const/4 v15, 0x2

    move-object/from16 v10, v16

    invoke-direct/range {v10 .. v15}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/16 v10, 0x8

    aput-object v16, v1, v10

    .line 88
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v17, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v12, 0x20

    const/16 v14, 0x102

    const/16 v15, 0x1000

    const/16 v16, 0x2

    move-object/from16 v11, v17

    invoke-direct/range {v11 .. v16}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    const/16 v11, 0x9

    aput-object v17, v1, v11

    .line 91
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "need dictionary"

    aput-object v1, v0, v2

    const-string v1, "stream end"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "file error"

    aput-object v1, v0, v5

    const-string v1, "stream error"

    aput-object v1, v0, v6

    const-string v1, "data error"

    aput-object v1, v0, v7

    const-string v1, "insufficient memory"

    aput-object v1, v0, v8

    const-string v1, "buffer error"

    aput-object v1, v0, v9

    const-string v1, "incompatible version"

    aput-object v1, v0, v10

    const-string v1, ""

    aput-object v1, v0, v11

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    .line 201
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    .line 202
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    .line 204
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    .line 206
    const/16 v0, 0x23d

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    .line 212
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    .line 250
    const/16 v0, 0x47a

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    .line 251
    const/16 v0, 0x7a

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    .line 252
    const/16 v0, 0x4e

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    .line 253
    return-void
.end method

.method private _tr_align()V
    .registers 6

    .line 546
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 547
    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_ltree:[S

    const/16 v3, 0x100

    invoke-direct {p0, v3, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 549
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_flush()V

    .line 555
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0xa

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v2, v4

    const/16 v4, 0x9

    if-ge v2, v4, :cond_27

    .line 556
    invoke-direct {p0, v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 557
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_ltree:[S

    invoke-direct {p0, v3, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 558
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_flush()V

    .line 560
    :cond_27
    const/4 v0, 0x7

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    .line 561
    return-void
.end method

.method private _tr_flush_block(IIZ)V
    .registers 10
    .param p1, "buf"    # I
    .param p2, "stored_len"    # I
    .param p3, "eof"    # Z

    .line 810
    const/4 v0, 0x0

    .line 813
    .local v0, "max_blindex":I
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    const/4 v2, 0x3

    if-lez v1, :cond_2c

    .line 815
    iget-byte v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->data_type:B

    const/4 v3, 0x2

    if-ne v1, v3, :cond_e

    .line 816
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->set_data_type()V

    .line 820
    :cond_e
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-virtual {v1, p0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    .line 822
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-virtual {v1, p0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    .line 829
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->build_bl_tree()I

    move-result v0

    .line 832
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    ushr-int/2addr v1, v2

    .line 833
    .local v1, "opt_lenb":I
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x7

    ushr-int/2addr v3, v2

    .line 835
    .local v3, "static_lenb":I
    if-gt v3, v1, :cond_2f

    .line 836
    move v1, v3

    goto :goto_2f

    .line 839
    .end local v1    # "opt_lenb":I
    .end local v3    # "static_lenb":I
    :cond_2c
    add-int/lit8 v1, p2, 0x5

    move v3, v1

    .line 842
    .restart local v1    # "opt_lenb":I
    .restart local v3    # "static_lenb":I
    :cond_2f
    :goto_2f
    add-int/lit8 v4, p2, 0x4

    if-gt v4, v1, :cond_3a

    const/4 v4, -0x1

    if-eq p1, v4, :cond_3a

    .line 849
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_stored_block(IIZ)V

    goto :goto_66

    .line 850
    :cond_3a
    if-ne v3, v1, :cond_49

    .line 851
    add-int/lit8 v4, p3, 0x2

    invoke-direct {p0, v4, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 852
    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_ltree:[S

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_dtree:[S

    invoke-direct {p0, v2, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_66

    .line 854
    :cond_49
    add-int/lit8 v4, p3, 0x4

    invoke-direct {p0, v4, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 855
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, v2, v4, v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_all_trees(III)V

    .line 857
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    invoke-direct {p0, v2, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->compress_block([S[S)V

    .line 863
    :goto_66
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->init_block()V

    .line 865
    if-eqz p3, :cond_6e

    .line 866
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_windup()V

    .line 868
    :cond_6e
    return-void
.end method

.method private _tr_stored_block(IIZ)V
    .registers 6
    .param p1, "buf"    # I
    .param p2, "stored_len"    # I
    .param p3, "eof"    # Z

    .line 799
    add-int/lit8 v0, p3, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 800
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->copy_block(IIZ)V

    .line 801
    return-void
.end method

.method private _tr_tally(II)Z
    .registers 20
    .param p1, "dist"    # I
    .param p2, "lc"    # I

    .line 569
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    ushr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 570
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/2addr v4, v5

    int-to-byte v7, v1

    aput-byte v7, v3, v4

    .line 572
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_buf:I

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    add-int/2addr v4, v7

    int-to-byte v7, v2

    aput-byte v7, v3, v4

    .line 573
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    add-int/2addr v3, v5

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    .line 575
    if-nez v1, :cond_3f

    .line 577
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v2, 0x2

    aget-short v7, v3, v4

    add-int/2addr v7, v5

    int-to-short v7, v7

    aput-short v7, v3, v4

    goto :goto_65

    .line 579
    :cond_3f
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    add-int/2addr v3, v5

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    .line 581
    add-int/lit8 v1, v1, -0x1

    .line 582
    .end local p1    # "dist":I
    .local v1, "dist":I
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/Tree;->_length_code:[B

    aget-byte v4, v4, v2

    add-int/lit16 v4, v4, 0x100

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    aget-short v7, v3, v4

    add-int/2addr v7, v5

    int-to-short v7, v7

    aput-short v7, v3, v4

    .line 583
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    invoke-static {v1}, Lorg/jboss/netty/util/internal/jzlib/Tree;->d_code(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    aget-short v7, v3, v4

    add-int/2addr v7, v5

    int-to-short v7, v7

    aput-short v7, v3, v4

    .line 586
    :goto_65
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    and-int/lit16 v3, v3, 0x1fff

    if-nez v3, :cond_a6

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    if-le v3, v6, :cond_a6

    .line 588
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v3, v3, 0x8

    .line 589
    .local v3, "out_length":I
    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    sub-int/2addr v7, v8

    .line 591
    .local v7, "in_length":I
    move v8, v3

    const/4 v3, 0x0

    .local v3, "dcode":I
    .local v8, "out_length":I
    :goto_7a
    const/16 v9, 0x1e

    if-ge v3, v9, :cond_96

    .line 592
    int-to-long v9, v8

    iget-object v11, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v12, v3, 0x2

    aget-short v11, v11, v12

    int-to-long v11, v11

    const-wide/16 v13, 0x5

    sget-object v15, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_dbits:[I

    aget v15, v15, v3

    int-to-long v4, v15

    add-long/2addr v4, v13

    mul-long v11, v11, v4

    add-long/2addr v9, v11

    long-to-int v8, v9

    .line 591
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    goto :goto_7a

    .line 595
    :cond_96
    ushr-int/lit8 v4, v8, 0x3

    .line 596
    .end local v8    # "out_length":I
    .local v4, "out_length":I
    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    div-int/2addr v8, v6

    if-ge v5, v8, :cond_a5

    div-int/lit8 v5, v7, 0x2

    if-ge v4, v5, :cond_a5

    .line 597
    const/4 v5, 0x1

    return v5

    .line 601
    .end local v3    # "dcode":I
    .end local v4    # "out_length":I
    .end local v7    # "in_length":I
    :cond_a5
    const/4 v5, 0x1

    :cond_a6
    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_b0

    const/16 v16, 0x1

    goto :goto_b2

    :cond_b0
    const/16 v16, 0x0

    :goto_b2
    return v16
.end method

.method private bi_flush()V
    .registers 3

    .line 678
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_11

    .line 679
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    .line 680
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 681
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    goto :goto_28

    .line 682
    :cond_11
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_28

    .line 683
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 684
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    ushr-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 685
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    .line 687
    :cond_28
    :goto_28
    return-void
.end method

.method private bi_windup()V
    .registers 3

    .line 691
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_c

    .line 692
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    goto :goto_16

    .line 693
    :cond_c
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    if-lez v0, :cond_16

    .line 694
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 696
    :cond_16
    :goto_16
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 697
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    .line 698
    return-void
.end method

.method private build_bl_tree()I
    .registers 5

    .line 400
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->scan_tree([SI)V

    .line 401
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->scan_tree([SI)V

    .line 404
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-virtual {v0, p0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    .line 411
    const/16 v0, 0x12

    .local v0, "max_blindex":I
    :goto_19
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2e

    .line 412
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/Tree;->bl_order:[B

    aget-byte v3, v3, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-short v2, v2, v3

    if-eqz v2, :cond_2b

    .line 413
    goto :goto_2e

    .line 411
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 417
    :cond_2e
    :goto_2e
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    .line 419
    return v0
.end method

.method private compress_block([S[S)V
    .registers 9
    .param p1, "ltree"    # [S
    .param p2, "dtree"    # [S

    .line 611
    const/4 v0, 0x0

    .line 615
    .local v0, "lx":I
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    if-eqz v1, :cond_67

    .line 617
    :cond_5
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 619
    .local v1, "dist":I
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_buf:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 620
    .local v2, "lc":I
    add-int/lit8 v0, v0, 0x1

    .line 622
    if-nez v1, :cond_33

    .line 623
    invoke-direct {p0, v2, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    goto :goto_63

    .line 626
    :cond_33
    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/Tree;->_length_code:[B

    aget-byte v3, v3, v2

    .line 628
    .local v3, "code":I
    add-int/lit16 v4, v3, 0x100

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 629
    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_lbits:[I

    aget v4, v4, v3

    .line 630
    .local v4, "extra":I
    if-eqz v4, :cond_4c

    .line 631
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_length:[I

    aget v5, v5, v3

    sub-int/2addr v2, v5

    .line 632
    invoke-direct {p0, v2, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 634
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    .line 635
    invoke-static {v1}, Lorg/jboss/netty/util/internal/jzlib/Tree;->d_code(I)I

    move-result v3

    .line 637
    invoke-direct {p0, v3, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 638
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_dbits:[I

    aget v4, v5, v3

    .line 639
    if-eqz v4, :cond_63

    .line 640
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_dist:[I

    aget v5, v5, v3

    sub-int/2addr v1, v5

    .line 641
    invoke-direct {p0, v1, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 646
    .end local v3    # "code":I
    .end local v4    # "extra":I
    :cond_63
    :goto_63
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    if-lt v0, v3, :cond_5

    .line 649
    .end local v1    # "dist":I
    .end local v2    # "lc":I
    :cond_67
    const/16 v1, 0x100

    invoke-direct {p0, v1, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 650
    const/16 v1, 0x201

    aget-short v1, p1, v1

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    .line 651
    return-void
.end method

.method private copy_block(IIZ)V
    .registers 5
    .param p1, "buf"    # I
    .param p2, "len"    # I
    .param p3, "header"    # Z

    .line 706
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_windup()V

    .line 707
    const/16 v0, 0x8

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    .line 709
    if-eqz p3, :cond_13

    .line 710
    int-to-short v0, p2

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    .line 711
    xor-int/lit8 v0, p2, -0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    .line 718
    :cond_13
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte([BII)V

    .line 719
    return-void
.end method

.method private deflateInit2(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIIIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I
    .registers 11
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "level"    # I
    .param p3, "method"    # I
    .param p4, "windowBits"    # I
    .param p5, "memLevel"    # I
    .param p6, "strategy"    # I
    .param p7, "wrapperType"    # Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .line 1309
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB_OR_NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-eq p7, v0, :cond_a5

    .line 1321
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1323
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    .line 1324
    const/4 p2, 0x6

    .line 1327
    :cond_b
    if-ltz p4, :cond_8e

    .line 1331
    const/4 v0, 0x1

    if-lt p5, v0, :cond_8c

    const/16 v1, 0x9

    if-gt p5, v1, :cond_8c

    const/16 v2, 0x8

    if-ne p3, v2, :cond_8c

    if-lt p4, v1, :cond_8c

    const/16 v2, 0xf

    if-gt p4, v2, :cond_8c

    if-ltz p2, :cond_8c

    if-gt p2, v1, :cond_8c

    if-ltz p6, :cond_8c

    const/4 v1, 0x2

    if-le p6, v1, :cond_28

    goto :goto_8c

    .line 1338
    :cond_28
    iput-object p0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    .line 1340
    iput-object p7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .line 1341
    iput p4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_bits:I

    .line 1342
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_bits:I

    shl-int v2, v0, v2

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    .line 1343
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    .line 1345
    add-int/lit8 v2, p5, 0x7

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_bits:I

    .line 1346
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_bits:I

    shl-int v2, v0, v2

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    .line 1347
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    .line 1348
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_bits:I

    add-int/lit8 v2, v2, 0x3

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    .line 1350
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    .line 1351
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    new-array v2, v2, [S

    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    .line 1352
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    new-array v2, v2, [S

    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    .line 1354
    add-int/lit8 v2, p5, 0x6

    shl-int/2addr v0, v2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    .line 1358
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    .line 1359
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf_size:I

    .line 1361
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    .line 1362
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_buf:I

    .line 1364
    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    .line 1368
    iput p6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    .line 1370
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v0

    return v0

    .line 1335
    :cond_8c
    :goto_8c
    const/4 v0, -0x2

    return v0

    .line 1328
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZLIB_OR_NONE allowed only for inflate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .registers 8
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 1374
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    .line 1375
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1377
    const/4 v3, 0x0

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    .line 1378
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    .line 1380
    iput-boolean v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wroteTrailer:Z

    .line 1381
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v4, v5, :cond_19

    const/16 v4, 0x71

    goto :goto_1b

    :cond_19
    const/16 v4, 0x2a

    :goto_1b
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    .line 1382
    invoke-static {v0, v1, v2, v3, v3}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 1383
    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    .line 1384
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    .line 1386
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    .line 1388
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->tr_init()V

    .line 1389
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lm_init()V

    .line 1390
    return v3
.end method

.method private deflate_fast(I)I
    .registers 14
    .param p1, "flush"    # I

    .line 962
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 970
    .local v1, "hash_head":I
    :cond_2
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/4 v3, 0x2

    const/16 v4, 0x106

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v2, v4, :cond_32

    .line 971
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->fill_window()V

    .line 972
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-ge v2, v4, :cond_15

    if-nez p1, :cond_15

    .line 973
    return v0

    .line 975
    :cond_15
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_32

    .line 976
    nop

    .line 1058
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    invoke-direct {p0, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1059
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v4, :cond_2d

    .line 1060
    if-ne p1, v2, :cond_2c

    .line 1061
    return v3

    .line 1063
    :cond_2c
    return v0

    .line 1066
    :cond_2d
    if-ne p1, v2, :cond_30

    goto :goto_31

    :cond_30
    const/4 v5, 0x1

    :goto_31
    return v5

    .line 982
    :cond_32
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const v7, 0xffff

    if-lt v2, v5, :cond_6e

    .line 983
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v8

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v9, v5

    sub-int/2addr v9, v6

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v2, v8

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v8

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 987
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v2, v2, v8

    and-int v1, v2, v7

    .line 988
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v2, v8

    .line 989
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v2, v8

    .line 995
    :cond_6e
    int-to-long v8, v1

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_88

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    and-int/2addr v2, v7

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v8, v4

    if-gt v2, v8, :cond_88

    .line 1000
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    if-eq v2, v3, :cond_88

    .line 1001
    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->longest_match(I)I

    move-result v2

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1005
    :cond_88
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-lt v2, v5, :cond_11d

    .line 1008
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    sub-int/2addr v3, v5

    invoke-direct {p0, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    .line 1011
    .local v2, "bflush":Z
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1015
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    if-gt v3, v4, :cond_f5

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-lt v3, v5, :cond_f5

    .line 1016
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1018
    :cond_ae
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1020
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v3, v4

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v8, v5

    sub-int/2addr v8, v6

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v4

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1024
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v3, v3, v4

    and-int v1, v3, v7

    .line 1025
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v4, v8

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v8, v8, v9

    aput-short v8, v3, v4

    .line 1026
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v8, v8

    aput-short v8, v3, v4

    .line 1030
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-nez v3, :cond_ae

    .line 1031
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    goto :goto_133

    .line 1033
    :cond_f5
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1034
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1035
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1037
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v3, v4

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v5, v6

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v4

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    goto :goto_133

    .line 1045
    .end local v2    # "bflush":Z
    :cond_11d
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    .line 1046
    .restart local v2    # "bflush":Z
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1047
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1049
    :goto_133
    if-eqz v2, :cond_2

    .line 1051
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1052
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_2

    .line 1053
    return v0
.end method

.method private deflate_slow(I)I
    .registers 14
    .param p1, "flush"    # I

    .line 1074
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1084
    .local v1, "hash_head":I
    :cond_2
    :goto_2
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v3, 0x106

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v2, v3, :cond_44

    .line 1085
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->fill_window()V

    .line 1086
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-ge v2, v3, :cond_15

    if-nez p1, :cond_15

    .line 1087
    return v0

    .line 1089
    :cond_15
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_44

    .line 1090
    nop

    .line 1196
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    if-eqz v2, :cond_2c

    .line 1197
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v3, v6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    .line 1198
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    .line 1200
    :cond_2c
    const/4 v2, 0x4

    if-ne p1, v2, :cond_31

    const/4 v3, 0x1

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    invoke-direct {p0, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1202
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_3f

    .line 1203
    if-ne p1, v2, :cond_3e

    .line 1204
    return v4

    .line 1206
    :cond_3e
    return v0

    .line 1210
    :cond_3f
    if-ne p1, v2, :cond_42

    goto :goto_43

    :cond_42
    const/4 v5, 0x1

    :goto_43
    return v5

    .line 1097
    :cond_44
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const v7, 0xffff

    if-lt v2, v5, :cond_80

    .line 1098
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v8

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v9, v5

    sub-int/2addr v9, v6

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v2, v8

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v8

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1101
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v2, v2, v8

    and-int v1, v2, v7

    .line 1102
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v2, v8

    .line 1103
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v2, v8

    .line 1107
    :cond_80
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    .line 1108
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_match:I

    .line 1109
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1111
    if-eqz v1, :cond_bd

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    if-ge v2, v8, :cond_bd

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    and-int/2addr v2, v7

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v8, v3

    if-gt v2, v8, :cond_bd

    .line 1117
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    if-eq v2, v4, :cond_a5

    .line 1118
    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->longest_match(I)I

    move-result v2

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1122
    :cond_a5
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_bd

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    if-eq v2, v6, :cond_bb

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-ne v2, v5, :cond_bd

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    sub-int/2addr v2, v3

    const/16 v3, 0x1000

    if-le v2, v3, :cond_bd

    .line 1128
    :cond_bb
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1134
    :cond_bd
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    if-lt v2, v5, :cond_141

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    if-gt v2, v3, :cond_141

    .line 1135
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    .line 1140
    .local v2, "max_insert":I
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v3, v6

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_match:I

    sub-int/2addr v3, v8

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    sub-int/2addr v8, v5

    invoke-direct {p0, v3, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v3

    .line 1147
    .local v3, "bflush":Z
    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    sub-int/2addr v9, v6

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1148
    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    sub-int/2addr v8, v4

    iput v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    .line 1150
    :cond_e7
    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v8, v6

    iput v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-gt v8, v2, :cond_123

    .line 1151
    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v8, v9

    iget-object v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v10, v5

    sub-int/2addr v10, v6

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v8, v9

    iput v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1155
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v8, v8, v9

    and-int v1, v8, v7

    .line 1156
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v9, v10

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v10, v10, v11

    aput-short v10, v8, v9

    .line 1157
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v10, v10

    aput-short v10, v8, v9

    .line 1159
    :cond_123
    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    sub-int/2addr v8, v6

    iput v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    if-nez v8, :cond_e7

    .line 1160
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    .line 1161
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 1162
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v4, v6

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1164
    if-eqz v3, :cond_13f

    .line 1165
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1166
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v4, :cond_13f

    .line 1167
    return v0

    .line 1170
    .end local v2    # "max_insert":I
    :cond_13f
    goto/16 :goto_2

    .end local v3    # "bflush":Z
    :cond_141
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    if-eqz v2, :cond_168

    .line 1176
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v3, v6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    .line 1178
    .local v2, "bflush":Z
    if-eqz v2, :cond_157

    .line 1179
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 1181
    :cond_157
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1182
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1183
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_2

    .line 1184
    return v0

    .line 1190
    .end local v2    # "bflush":Z
    :cond_168
    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    .line 1191
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/2addr v2, v6

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1192
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    sub-int/2addr v2, v6

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    goto/16 :goto_2
.end method

.method private deflate_stored(I)I
    .registers 7
    .param p1, "flush"    # I

    .line 739
    const v0, 0xffff

    .line 742
    .local v0, "max_block_size":I
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v1, v1, -0x5

    if-le v0, v1, :cond_d

    .line 743
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v0, v1, -0x5

    .line 749
    :cond_d
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_3b

    .line 750
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->fill_window()V

    .line 751
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v1, :cond_1d

    if-nez p1, :cond_1d

    .line 752
    return v3

    .line 754
    :cond_1d
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v1, :cond_3b

    .line 755
    nop

    .line 786
    const/4 v1, 0x4

    if-ne p1, v1, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    invoke-direct {p0, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 787
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v4, :cond_36

    .line 788
    if-ne p1, v1, :cond_35

    const/4 v3, 0x2

    nop

    :cond_35
    return v3

    .line 791
    :cond_36
    if-ne p1, v1, :cond_3a

    const/4 v2, 0x3

    nop

    :cond_3a
    return v2

    .line 759
    :cond_3b
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 760
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 763
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    add-int/2addr v1, v0

    .line 764
    .local v1, "max_start":I
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v2, :cond_4f

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-lt v2, v1, :cond_60

    .line 766
    :cond_4f
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 767
    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 769
    invoke-direct {p0, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 770
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_60

    .line 771
    return v3

    .line 778
    :cond_60
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v4, v4, -0x106

    if-lt v2, v4, :cond_d

    .line 779
    invoke-direct {p0, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    .line 780
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_d

    .line 781
    return v3
.end method

.method private fill_window()V
    .registers 11

    .line 884
    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window_size:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v0, v1

    .line 887
    .local v0, "more":I
    const/16 v1, 0x106

    if-nez v0, :cond_18

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-nez v2, :cond_18

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_18

    .line 888
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    goto/16 :goto_86

    .line 889
    :cond_18
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1e

    .line 892
    add-int/lit8 v0, v0, -0x1

    goto :goto_86

    .line 896
    :cond_1e
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_86

    .line 897
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 898
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    .line 899
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 900
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    .line 908
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    .line 909
    .local v3, "n":I
    move v4, v3

    .line 911
    .local v3, "p":I
    .local v4, "n":I
    :cond_4c
    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    add-int/2addr v3, v2

    aget-short v5, v5, v3

    const v6, 0xffff

    and-int/2addr v5, v6

    .line 912
    .local v5, "m":I
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    if-lt v5, v9, :cond_61

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int v9, v5, v9

    int-to-short v9, v9

    goto :goto_62

    :cond_61
    const/4 v9, 0x0

    :goto_62
    aput-short v9, v8, v3

    .line 913
    add-int/2addr v4, v2

    if-nez v4, :cond_4c

    .line 915
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    .line 916
    move v3, v4

    .line 918
    :cond_6a
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    add-int/2addr v3, v2

    aget-short v8, v8, v3

    and-int v5, v8, v6

    .line 919
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    if-lt v5, v9, :cond_7d

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int v9, v5, v9

    int-to-short v9, v9

    goto :goto_7e

    :cond_7d
    const/4 v9, 0x0

    :goto_7e
    aput-short v9, v8, v3

    .line 922
    add-int/2addr v4, v2

    if-nez v4, :cond_6a

    .line 923
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/2addr v0, v2

    .line 926
    .end local v3    # "p":I
    .end local v4    # "n":I
    .end local v5    # "m":I
    :cond_86
    :goto_86
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v2, :cond_8d

    .line 927
    return-void

    .line 941
    :cond_8d
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->read_buf([BII)I

    move-result v2

    .line 942
    .local v2, "n":I
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 945
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_c3

    .line 946
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 947
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v3, v4

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v4

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 952
    :cond_c3
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-ge v3, v1, :cond_cd

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v1, :cond_0

    .line 953
    :cond_cd
    return-void
.end method

.method private flush_block_only(Z)V
    .registers 5
    .param p1, "eof"    # Z

    .line 722
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    if-ltz v0, :cond_7

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_flush_block(IIZ)V

    .line 724
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    .line 725
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    .line 726
    return-void
.end method

.method private init_block()V
    .registers 5

    .line 294
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x11e

    if-ge v1, v2, :cond_f

    .line 295
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v3, v1, 0x2

    aput-short v0, v2, v3

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 297
    .end local v1    # "i":I
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_10
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1d

    .line 298
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v3, v1, 0x2

    aput-short v0, v2, v3

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 300
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1e
    const/16 v2, 0x13

    if-ge v1, v2, :cond_2b

    .line 301
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v3, v1, 0x2

    aput-short v0, v2, v3

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 304
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    const/16 v2, 0x200

    const/4 v3, 0x1

    aput-short v3, v1, v2

    .line 305
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    .line 306
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    .line 307
    return-void
.end method

.method private lm_init()V
    .registers 4

    .line 256
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window_size:I

    .line 259
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_lazy:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    .line 260
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->good_length:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->good_match:I

    .line 261
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->nice_length:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->nice_match:I

    .line 262
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_chain:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_chain_length:I

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 265
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    .line 266
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 267
    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    .line 268
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    .line 269
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 270
    return-void
.end method

.method private longest_match(I)I
    .registers 15
    .param p1, "cur_match"    # I

    .line 1214
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_chain_length:I

    .line 1215
    .local v0, "chain_length":I
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1218
    .local v1, "scan":I
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    .line 1219
    .local v2, "best_len":I
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v4, v4, -0x106

    if-le v3, v4, :cond_16

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v4, v4, -0x106

    sub-int/2addr v3, v4

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    .line 1221
    .local v3, "limit":I
    :goto_17
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->nice_match:I

    .line 1226
    .local v4, "nice_match":I
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    .line 1228
    .local v5, "wmask":I
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit16 v6, v6, 0x102

    .line 1229
    .local v6, "strend":I
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v8, v1, v2

    add-int/lit8 v8, v8, -0x1

    aget-byte v7, v7, v8

    .line 1230
    .local v7, "scan_end1":B
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v9, v1, v2

    aget-byte v8, v8, v9

    .line 1236
    .local v8, "scan_end":B
    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->good_match:I

    if-lt v9, v10, :cond_35

    .line 1237
    shr-int/lit8 v0, v0, 0x2

    .line 1242
    :cond_35
    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-le v4, v9, :cond_3b

    .line 1243
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    .line 1247
    :cond_3b
    move v9, p1

    .line 1251
    .local v9, "match":I
    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v11, v9, v2

    aget-byte v10, v10, v11

    if-ne v10, v8, :cond_fb

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v11, v9, v2

    add-int/lit8 v11, v11, -0x1

    aget-byte v10, v10, v11

    if-ne v10, v7, :cond_fb

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    aget-byte v10, v10, v9

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    aget-byte v11, v11, v1

    if-ne v10, v11, :cond_fb

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v10, v10, v9

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v12, v1, 0x1

    aget-byte v11, v11, v12

    if-eq v10, v11, :cond_68

    .line 1255
    goto/16 :goto_fb

    .line 1263
    :cond_68
    add-int/lit8 v1, v1, 0x2

    .line 1264
    add-int/lit8 v9, v9, 0x1

    .line 1275
    :goto_6c
    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_df

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_df

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_df

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_df

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_df

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_df

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_df

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_df

    if-ge v1, v6, :cond_df

    .line 1276
    goto :goto_6c

    .line 1279
    :cond_df
    sub-int v10, v6, v1

    rsub-int v10, v10, 0x102

    .line 1280
    .local v10, "len":I
    add-int/lit16 v1, v6, -0x102

    .line 1282
    if-le v10, v2, :cond_fb

    .line 1283
    iput p1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    .line 1284
    move v2, v10

    .line 1285
    if-lt v10, v4, :cond_ed

    .line 1286
    goto :goto_10c

    .line 1288
    :cond_ed
    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v12, v1, v2

    add-int/lit8 v12, v12, -0x1

    aget-byte v7, v11, v12

    .line 1289
    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v12, v1, v2

    aget-byte v8, v11, v12

    .line 1292
    .end local v10    # "len":I
    :cond_fb
    :goto_fb
    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    and-int v11, p1, v5

    aget-short v10, v10, v11

    const v11, 0xffff

    and-int/2addr v10, v11

    move p1, v10

    if-le v10, v3, :cond_10c

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_3b

    .line 1295
    :cond_10c
    :goto_10c
    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-gt v2, v10, :cond_111

    .line 1296
    return v2

    .line 1298
    :cond_111
    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    return v10
.end method

.method private putShortMSB(I)V
    .registers 3
    .param p1, "b"    # I

    .line 511
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 512
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 513
    return-void
.end method

.method private put_byte(B)V
    .registers 5
    .param p1, "c"    # B

    .line 502
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    aput-byte p1, v0, v1

    .line 503
    return-void
.end method

.method private put_byte([BII)V
    .registers 6
    .param p1, "p"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 497
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    .line 499
    return-void
.end method

.method private put_short(I)V
    .registers 3
    .param p1, "w"    # I

    .line 506
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 507
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 508
    return-void
.end method

.method private scan_tree([SI)V
    .registers 14
    .param p1, "tree"    # [S
    .param p2, "max_code"    # I

    .line 349
    const/4 v0, -0x1

    .line 351
    .local v0, "prevlen":I
    const/4 v1, 0x1

    aget-short v2, p1, v1

    .line 352
    .local v2, "nextlen":I
    const/4 v3, 0x0

    .line 353
    .local v3, "count":I
    const/4 v4, 0x7

    .line 354
    .local v4, "max_count":I
    const/4 v5, 0x4

    .line 356
    .local v5, "min_count":I
    if-nez v2, :cond_c

    .line 357
    const/16 v4, 0x8a

    .line 358
    const/4 v5, 0x3

    .line 360
    :cond_c
    add-int/lit8 v6, p2, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    const/4 v7, -0x1

    aput-short v7, p1, v6

    .line 362
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_15
    if-gt v6, p2, :cond_77

    .line 363
    move v7, v2

    .line 364
    .local v7, "curlen":I
    add-int/lit8 v8, v6, 0x1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    aget-short v2, p1, v8

    .line 365
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v4, :cond_26

    if-ne v7, v2, :cond_26

    .line 366
    goto :goto_74

    .line 367
    :cond_26
    if-ge v3, v5, :cond_33

    .line 368
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v9, v7, 0x2

    aget-short v10, v8, v9

    add-int/2addr v10, v3

    int-to-short v10, v10

    aput-short v10, v8, v9

    goto :goto_65

    .line 369
    :cond_33
    if-eqz v7, :cond_4c

    .line 370
    if-eq v7, v0, :cond_41

    .line 371
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v9, v7, 0x2

    aget-short v10, v8, v9

    add-int/2addr v10, v1

    int-to-short v10, v10

    aput-short v10, v8, v9

    .line 373
    :cond_41
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    const/16 v9, 0x20

    aget-short v10, v8, v9

    add-int/2addr v10, v1

    int-to-short v10, v10

    aput-short v10, v8, v9

    goto :goto_65

    .line 374
    :cond_4c
    const/16 v8, 0xa

    if-gt v3, v8, :cond_5b

    .line 375
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    const/16 v9, 0x22

    aget-short v10, v8, v9

    add-int/2addr v10, v1

    int-to-short v10, v10

    aput-short v10, v8, v9

    goto :goto_65

    .line 377
    :cond_5b
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    const/16 v9, 0x24

    aget-short v10, v8, v9

    add-int/2addr v10, v1

    int-to-short v10, v10

    aput-short v10, v8, v9

    .line 379
    :goto_65
    const/4 v3, 0x0

    .line 380
    move v0, v7

    .line 381
    if-nez v2, :cond_6d

    .line 382
    const/16 v4, 0x8a

    .line 383
    const/4 v5, 0x3

    goto :goto_74

    .line 384
    :cond_6d
    if-ne v7, v2, :cond_72

    .line 385
    const/4 v4, 0x6

    .line 386
    const/4 v5, 0x3

    goto :goto_74

    .line 388
    :cond_72
    const/4 v4, 0x7

    .line 389
    const/4 v5, 0x4

    .line 362
    :goto_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 392
    .end local v7    # "curlen":I
    :cond_77
    return-void
.end method

.method private send_all_trees(III)V
    .registers 7
    .param p1, "lcodes"    # I
    .param p2, "dcodes"    # I
    .param p3, "blcodes"    # I

    .line 428
    add-int/lit16 v0, p1, -0x101

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 429
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 430
    add-int/lit8 v0, p3, -0x4

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 431
    const/4 v0, 0x0

    .local v0, "rank":I
    :goto_12
    if-ge v0, p3, :cond_27

    .line 432
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->bl_order:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 434
    :cond_27
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_tree([SI)V

    .line 435
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_tree([SI)V

    .line 436
    return-void
.end method

.method private send_bits(II)V
    .registers 8
    .param p1, "value"    # I
    .param p2, "length"    # I

    .line 521
    move v0, p2

    .line 522
    .local v0, "len":I
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v2, v0, 0x10

    const v3, 0xffff

    if-le v1, v2, :cond_2c

    .line 523
    move v1, p1

    .line 525
    .local v1, "val":I
    iget-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    shl-int v4, v1, v4

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 526
    iget-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    .line 527
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v2, v2, 0x10

    ushr-int v2, v1, v2

    int-to-short v2, v2

    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 528
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    add-int/lit8 v3, v0, -0x10

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    .line 529
    .end local v1    # "val":I
    goto :goto_3c

    .line 531
    :cond_2c
    iget-short v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    shl-int v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 532
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    .line 534
    :goto_3c
    return-void
.end method

.method private send_code(I[S)V
    .registers 7
    .param p1, "c"    # I
    .param p2, "tree"    # [S

    .line 516
    mul-int/lit8 v0, p1, 0x2

    .line 517
    .local v0, "c2":I
    aget-short v1, p2, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    add-int/lit8 v3, v0, 0x1

    aget-short v3, p2, v3

    and-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 518
    return-void
.end method

.method private send_tree([SI)V
    .registers 14
    .param p1, "tree"    # [S
    .param p2, "max_code"    # I

    .line 444
    const/4 v0, -0x1

    .line 446
    .local v0, "prevlen":I
    const/4 v1, 0x1

    aget-short v2, p1, v1

    .line 447
    .local v2, "nextlen":I
    const/4 v3, 0x0

    .line 448
    .local v3, "count":I
    const/4 v4, 0x7

    .line 449
    .local v4, "max_count":I
    const/4 v5, 0x4

    .line 451
    .local v5, "min_count":I
    if-nez v2, :cond_c

    .line 452
    const/16 v4, 0x8a

    .line 453
    const/4 v5, 0x3

    .line 456
    :cond_c
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_d
    if-gt v6, p2, :cond_74

    .line 457
    move v7, v2

    .line 458
    .local v7, "curlen":I
    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    aget-short v2, p1, v8

    .line 459
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v4, :cond_1f

    if-ne v7, v2, :cond_1f

    .line 460
    goto :goto_71

    .line 461
    :cond_1f
    if-ge v3, v5, :cond_2b

    .line 463
    :cond_21
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v7, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 464
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_21

    goto :goto_62

    .line 465
    :cond_2b
    if-eqz v7, :cond_43

    .line 466
    if-eq v7, v0, :cond_36

    .line 467
    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v7, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 468
    add-int/lit8 v3, v3, -0x1

    .line 470
    :cond_36
    const/16 v8, 0x10

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v8, v10}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 471
    add-int/lit8 v8, v3, -0x3

    invoke-direct {p0, v8, v9}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_62

    .line 472
    :cond_43
    const/16 v8, 0xa

    if-gt v3, v8, :cond_55

    .line 473
    const/16 v8, 0x11

    iget-object v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v8, v9}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 474
    add-int/lit8 v8, v3, -0x3

    const/4 v9, 0x3

    invoke-direct {p0, v8, v9}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_62

    .line 476
    :cond_55
    const/16 v8, 0x12

    iget-object v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v8, v9}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    .line 477
    add-int/lit8 v8, v3, -0xb

    const/4 v9, 0x7

    invoke-direct {p0, v8, v9}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    .line 479
    :goto_62
    const/4 v3, 0x0

    .line 480
    move v0, v7

    .line 481
    if-nez v2, :cond_6a

    .line 482
    const/16 v4, 0x8a

    .line 483
    const/4 v5, 0x3

    goto :goto_71

    .line 484
    :cond_6a
    if-ne v7, v2, :cond_6f

    .line 485
    const/4 v4, 0x6

    .line 486
    const/4 v5, 0x3

    goto :goto_71

    .line 488
    :cond_6f
    const/4 v4, 0x7

    .line 489
    const/4 v5, 0x4

    .line 456
    :goto_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 492
    .end local v7    # "curlen":I
    :cond_74
    return-void
.end method

.method private set_data_type()V
    .registers 7

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "n":I
    const/4 v1, 0x0

    .line 660
    .local v1, "ascii_freq":I
    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    .line 661
    .local v0, "bin_freq":I
    .local v3, "n":I
    :goto_5
    const/4 v4, 0x7

    if-ge v3, v4, :cond_12

    .line 662
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, v3, 0x2

    aget-short v4, v4, v5

    add-int/2addr v0, v4

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 665
    :cond_12
    :goto_12
    const/16 v4, 0x80

    if-ge v3, v4, :cond_20

    .line 666
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, v3, 0x2

    aget-short v4, v4, v5

    add-int/2addr v1, v4

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 669
    :cond_20
    :goto_20
    const/16 v4, 0x100

    if-ge v3, v4, :cond_2e

    .line 670
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, v3, 0x2

    aget-short v4, v4, v5

    add-int/2addr v0, v4

    .line 671
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 673
    :cond_2e
    ushr-int/lit8 v4, v1, 0x2

    if-le v0, v4, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x1

    :goto_34
    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->data_type:B

    .line 674
    return-void
.end method

.method private static smaller([SII[B)Z
    .registers 8
    .param p0, "tree"    # [S
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "depth"    # [B

    .line 338
    mul-int/lit8 v0, p1, 0x2

    aget-short v0, p0, v0

    .line 339
    .local v0, "tn2":S
    mul-int/lit8 v1, p2, 0x2

    aget-short v1, p0, v1

    .line 340
    .local v1, "tm2":S
    if-lt v0, v1, :cond_15

    if-ne v0, v1, :cond_13

    aget-byte v2, p3, p1

    aget-byte v3, p3, p2

    if-gt v2, v3, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v2, 0x1

    :goto_16
    return v2
.end method

.method private tr_init()V
    .registers 3

    .line 275
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    .line 276
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_l_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    .line 278
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    .line 279
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_d_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    .line 281
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    .line 282
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_bl_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    .line 284
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    .line 285
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    .line 286
    const/16 v0, 0x8

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    .line 289
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->init_block()V

    .line 290
    return-void
.end method


# virtual methods
.method deflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .registers 21
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "flush"    # I

    .line 1476
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, -0x2

    const/4 v4, 0x4

    if-gt v3, v4, :cond_220

    if-gez v3, :cond_e

    goto/16 :goto_220

    .line 1480
    :cond_e
    iget-object v5, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    if-eqz v5, :cond_219

    iget-object v5, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    if-nez v5, :cond_1a

    iget v5, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v5, :cond_219

    :cond_1a
    iget v5, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v6, 0x29a

    if-ne v5, v6, :cond_24

    if-eq v3, v4, :cond_24

    goto/16 :goto_219

    .line 1486
    :cond_24
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    const/4 v5, -0x5

    const/4 v7, 0x7

    if-nez v0, :cond_31

    .line 1487
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v0, v0, v7

    iput-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1488
    return v5

    .line 1491
    :cond_31
    iput-object v2, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 1492
    iget v8, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    .line 1493
    .local v8, "old_flush":I
    iput v3, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    .line 1496
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v9, 0x2a

    const-wide/32 v10, 0xffff

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/16 v14, 0x10

    const/4 v15, -0x1

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-ne v0, v9, :cond_d0

    .line 1497
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v9, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v9}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v9

    aget v0, v0, v9

    const/16 v9, 0x1f

    packed-switch v0, :pswitch_data_222

    goto :goto_cc

    .line 1522
    :pswitch_59
    invoke-direct {v1, v9}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1523
    const/16 v0, -0x75

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1525
    invoke-direct {v1, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1527
    invoke-direct {v1, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1529
    invoke-direct {v1, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1530
    invoke-direct {v1, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1531
    invoke-direct {v1, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1532
    invoke-direct {v1, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1534
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v9, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v9

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    packed-switch v0, :pswitch_data_22a

    .line 1542
    invoke-direct {v1, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_8a

    .line 1539
    :pswitch_82
    invoke-direct {v1, v12}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1540
    goto :goto_8a

    .line 1536
    :pswitch_86
    invoke-direct {v1, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1537
    nop

    .line 1546
    :goto_8a
    invoke-direct {v1, v15}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1548
    iput v7, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    goto :goto_cc

    .line 1499
    :pswitch_90
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_bits:I

    sub-int/2addr v0, v6

    shl-int/2addr v0, v4

    add-int/2addr v0, v6

    shl-int/2addr v0, v6

    .line 1500
    .local v0, "header":I
    iget v6, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    sub-int/2addr v6, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v5

    .line 1502
    .local v6, "level_flags":I
    if-le v6, v13, :cond_9f

    .line 1503
    const/4 v6, 0x3

    .line 1505
    :cond_9f
    shl-int/lit8 v16, v6, 0x6

    or-int v0, v0, v16

    .line 1506
    iget v5, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v5, :cond_a9

    .line 1507
    or-int/lit8 v0, v0, 0x20

    .line 1509
    :cond_a9
    rem-int/lit8 v5, v0, 0x1f

    sub-int/2addr v9, v5

    add-int/2addr v0, v9

    .line 1511
    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    .line 1514
    iget v5, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v5, :cond_c2

    .line 1515
    iget-wide v12, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    ushr-long/2addr v12, v14

    long-to-int v5, v12

    invoke-direct {v1, v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    .line 1516
    iget-wide v12, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    and-long/2addr v12, v10

    long-to-int v5, v12

    invoke-direct {v1, v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    .line 1518
    :cond_c2
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    invoke-static {v12, v13, v5, v7, v7}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v12

    iput-wide v12, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 1519
    nop

    .line 1552
    .end local v0    # "header":I
    .end local v6    # "level_flags":I
    :goto_cc
    const/16 v0, 0x71

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    .line 1556
    :cond_d0
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    if-eqz v0, :cond_de

    .line 1557
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    .line 1558
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_ef

    .line 1565
    iput v15, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    .line 1566
    return v7

    .line 1572
    :cond_de
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_ef

    if-gt v3, v8, :cond_ef

    if-eq v3, v4, :cond_ef

    .line 1574
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v0, v0, v4

    iput-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1575
    const/4 v0, -0x5

    return v0

    .line 1579
    :cond_ef
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v5, 0x29a

    if-ne v0, v5, :cond_102

    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v0, :cond_102

    .line 1580
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v0, v0, v4

    iput-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1581
    const/4 v0, -0x5

    return v0

    .line 1585
    :cond_102
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move v5, v0

    .line 1587
    .local v5, "old_next_in_index":I
    :try_start_105
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_115

    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v0, :cond_115

    if-eqz v3, :cond_173

    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v6, 0x29a

    if-eq v0, v6, :cond_173

    .line 1589
    :cond_115
    const/4 v0, -0x1

    .line 1590
    .local v0, "bstate":I
    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v9, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v6, v6, v9

    iget v6, v6, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    packed-switch v6, :pswitch_data_232

    goto :goto_134

    .line 1598
    :pswitch_122
    invoke-direct {v1, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate_slow(I)I

    move-result v6

    move v0, v6

    .line 1599
    goto :goto_134

    .line 1595
    :pswitch_128
    invoke-direct {v1, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate_fast(I)I

    move-result v6

    move v0, v6

    .line 1596
    goto :goto_134

    .line 1592
    :pswitch_12e
    invoke-direct {v1, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate_stored(I)I

    move-result v6

    move v0, v6

    .line 1593
    nop

    .line 1603
    :goto_134
    const/4 v6, 0x2

    if-eq v0, v6, :cond_13a

    const/4 v6, 0x3

    if-ne v0, v6, :cond_13e

    .line 1604
    :cond_13a
    const/16 v6, 0x29a

    iput v6, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    .line 1606
    :cond_13e
    if-eqz v0, :cond_207

    const/4 v6, 0x2

    if-ne v0, v6, :cond_145

    goto/16 :goto_207

    .line 1619
    :cond_145
    const/4 v6, 0x1

    if-ne v0, v6, :cond_173

    .line 1620
    if-ne v3, v6, :cond_14e

    .line 1621
    invoke-direct/range {p0 .. p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_align()V

    goto :goto_160

    .line 1623
    :cond_14e
    invoke-direct {v1, v7, v7, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 1626
    const/4 v6, 0x3

    if-ne v3, v6, :cond_160

    .line 1628
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_155
    iget v9, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    if-ge v6, v9, :cond_160

    .line 1629
    iget-object v9, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    aput-short v7, v9, v6

    .line 1628
    add-int/lit8 v6, v6, 0x1

    goto :goto_155

    .line 1633
    .end local v6    # "i":I
    :cond_160
    :goto_160
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    .line 1634
    iget v6, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_173

    .line 1635
    iput v15, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I
    :try_end_169
    .catchall {:try_start_105 .. :try_end_169} :catchall_20f

    .line 1636
    nop

    .line 1641
    .end local v0    # "bstate":I
    .end local v5    # "old_next_in_index":I
    .end local v8    # "old_flush":I
    .end local p0    # "this":Lorg/jboss/netty/util/internal/jzlib/Deflate;
    .end local p1    # "strm":Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .end local p2    # "flush":I
    :goto_16a
    iget v4, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v6, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    iput v4, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    return v7

    .restart local v5    # "old_next_in_index":I
    .restart local v8    # "old_flush":I
    .restart local p0    # "this":Lorg/jboss/netty/util/internal/jzlib/Deflate;
    .restart local p1    # "strm":Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .restart local p2    # "flush":I
    :cond_173
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v6, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v6, v5

    add-int/2addr v0, v6

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    .line 1642
    nop

    .line 1644
    if-eq v3, v4, :cond_17f

    .line 1645
    return v7

    .line 1648
    :cond_17f
    iget-object v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-eq v0, v4, :cond_205

    iget-boolean v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wroteTrailer:Z

    if-eqz v0, :cond_18b

    goto/16 :goto_205

    .line 1652
    :cond_18b
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v4, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_23c

    goto :goto_1f5

    .line 1660
    :pswitch_199
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1661
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    const/16 v4, 0x8

    ushr-int/2addr v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1662
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    ushr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1663
    iget v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1664
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1665
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    const/16 v4, 0x8

    ushr-int/2addr v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1666
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    ushr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    .line 1667
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_1f5

    .line 1655
    :pswitch_1e6
    iget-wide v12, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    ushr-long/2addr v12, v14

    long-to-int v0, v12

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    .line 1656
    iget-wide v12, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    and-long/2addr v10, v12

    long-to-int v0, v10

    invoke-direct {v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    .line 1657
    nop

    .line 1671
    :goto_1f5
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    .line 1674
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wroteTrailer:Z

    .line 1675
    iget v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    if-eqz v0, :cond_202

    const/16 v17, 0x0

    goto :goto_204

    :cond_202
    const/16 v17, 0x1

    :goto_204
    return v17

    .line 1649
    :cond_205
    :goto_205
    const/4 v0, 0x1

    return v0

    .line 1607
    .restart local v0    # "bstate":I
    :cond_207
    :goto_207
    :try_start_207
    iget v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v4, :cond_20d

    .line 1608
    iput v15, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I
    :try_end_20d
    .catchall {:try_start_207 .. :try_end_20d} :catchall_20f

    .line 1610
    :cond_20d
    goto/16 :goto_16a

    .line 1641
    .end local v0    # "bstate":I
    :catchall_20f
    move-exception v0

    iget v4, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v6, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    iput v4, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    throw v0

    .line 1483
    .end local v5    # "old_next_in_index":I
    .end local v8    # "old_flush":I
    :cond_219
    :goto_219
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v4, v5, v4

    iput-object v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1484
    return v0

    .line 1477
    :cond_220
    :goto_220
    return v0

    nop

    :pswitch_data_222
    .packed-switch 0x1
        :pswitch_90
        :pswitch_59
    .end packed-switch

    :pswitch_data_22a
    .packed-switch 0x1
        :pswitch_86
        :pswitch_82
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_128
        :pswitch_122
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x1
        :pswitch_1e6
        :pswitch_199
    .end packed-switch
.end method

.method deflateEnd()I
    .registers 4

    .line 1394
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v1, 0x71

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_14

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    if-eq v0, v1, :cond_14

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v2, 0x29a

    if-eq v0, v2, :cond_14

    .line 1396
    const/4 v0, -0x2

    return v0

    .line 1399
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    .line 1400
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    .line 1401
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    .line 1402
    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    .line 1405
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    if-ne v0, v1, :cond_23

    const/4 v0, -0x3

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method deflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I
    .registers 14
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "level"    # I
    .param p3, "bits"    # I
    .param p4, "memLevel"    # I
    .param p5, "wrapperType"    # Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    .line 1302
    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateInit2(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIIIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I

    move-result v0

    return v0
.end method

.method deflateParams(Lorg/jboss/netty/util/internal/jzlib/ZStream;II)I
    .registers 10
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "_level"    # I
    .param p3, "_strategy"    # I

    .line 1409
    const/4 v0, 0x0

    .line 1411
    .local v0, "err":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    .line 1412
    const/4 p2, 0x6

    .line 1414
    :cond_5
    if-ltz p2, :cond_5f

    const/16 v1, 0x9

    if-gt p2, v1, :cond_5f

    if-ltz p3, :cond_5f

    const/4 v1, 0x2

    if-le p3, v1, :cond_11

    goto :goto_5f

    .line 1419
    :cond_11
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    aget-object v2, v2, p2

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    if-eq v1, v2, :cond_2e

    iget-wide v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2e

    .line 1422
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflate(I)I

    move-result v0

    .line 1425
    :cond_2e
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    if-eq v1, p2, :cond_5c

    .line 1426
    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    .line 1427
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_lazy:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    .line 1428
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->good_length:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->good_match:I

    .line 1429
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->nice_length:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->nice_match:I

    .line 1430
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_chain:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_chain_length:I

    .line 1432
    :cond_5c
    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    .line 1433
    return v0

    .line 1416
    :cond_5f
    :goto_5f
    const/4 v1, -0x2

    return v1
.end method

.method deflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I
    .registers 13
    .param p1, "strm"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p2, "dictionary"    # [B
    .param p3, "dictLength"    # I

    .line 1437
    move v0, p3

    .line 1438
    .local v0, "length":I
    const/4 v1, 0x0

    .line 1440
    .local v1, "index":I
    if-eqz p2, :cond_78

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_b

    goto :goto_78

    .line 1444
    :cond_b
    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const/4 v4, 0x0

    invoke-static {v2, v3, p2, v4, p3}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v2

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    .line 1446
    const/4 v2, 0x3

    if-ge v0, v2, :cond_18

    .line 1447
    return v4

    .line 1449
    :cond_18
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v2, v2, -0x106

    if-le v0, v2, :cond_24

    .line 1450
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v0, v2, -0x106

    .line 1451
    sub-int v1, p3, v0

    .line 1453
    :cond_24
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    invoke-static {p2, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1454
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    .line 1455
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    .line 1461
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1462
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v3

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v3

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1464
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_48
    add-int/lit8 v3, v0, -0x3

    if-gt v2, v3, :cond_77

    .line 1465
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v3, v6

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v7, v2, 0x3

    sub-int/2addr v7, v5

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v3, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v6

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    .line 1467
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v6, v2

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v7, v7, v8

    aput-short v7, v3, v6

    .line 1468
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    int-to-short v7, v2

    aput-short v7, v3, v6

    .line 1464
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 1470
    .end local v2    # "n":I
    :cond_77
    return v4

    .line 1441
    :cond_78
    :goto_78
    const/4 v2, -0x2

    return v2
.end method

.method pqdownheap([SI)V
    .registers 8
    .param p1, "tree"    # [S
    .param p2, "k"    # I

    .line 316
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v0, v0, p2

    .line 317
    .local v0, "v":I
    shl-int/lit8 v1, p2, 0x1

    .line 318
    .local v1, "j":I
    :goto_6
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-gt v1, v2, :cond_3b

    .line 320
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    invoke-static {p1, v2, v3, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 321
    add-int/lit8 v1, v1, 0x1

    .line 324
    :cond_22
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    invoke-static {p1, v0, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 325
    goto :goto_3b

    .line 329
    :cond_2f
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v3, v3, v1

    aput v3, v2, p2

    .line 330
    move p2, v1

    .line 332
    shl-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 334
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aput v0, v2, p2

    .line 335
    return-void
.end method
