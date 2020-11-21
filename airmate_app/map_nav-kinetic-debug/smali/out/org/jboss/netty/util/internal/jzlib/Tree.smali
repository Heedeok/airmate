.class final Lorg/jboss/netty/util/internal/jzlib/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# static fields
.field static final _dist_code:[B

.field static final _length_code:[B

.field static final base_dist:[I

.field static final base_length:[I

.field static final bl_order:[B

.field static final extra_blbits:[I

.field static final extra_dbits:[I

.field static final extra_lbits:[I


# instance fields
.field dyn_tree:[S

.field max_code:I

.field stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 52
    const/16 v0, 0x1d

    new-array v1, v0, [I

    fill-array-data v1, :array_44

    sput-object v1, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_lbits:[I

    .line 56
    const/16 v1, 0x1e

    new-array v2, v1, [I

    fill-array-data v2, :array_82

    sput-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_dbits:[I

    .line 60
    const/16 v2, 0x13

    new-array v3, v2, [I

    fill-array-data v3, :array_c2

    sput-object v3, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_blbits:[I

    .line 63
    new-array v2, v2, [B

    fill-array-data v2, :array_ec

    sput-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->bl_order:[B

    .line 66
    const/16 v2, 0x200

    new-array v2, v2, [B

    fill-array-data v2, :array_fa

    sput-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->_dist_code:[B

    .line 98
    const/16 v2, 0x100

    new-array v2, v2, [B

    fill-array-data v2, :array_1fe

    sput-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->_length_code:[B

    .line 115
    new-array v0, v0, [I

    fill-array-data v0, :array_282

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_length:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_2c0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_dist:[I

    return-void

    nop

    :array_44
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
    .end array-data

    :array_82
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data

    :array_c2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x7
    .end array-data

    :array_ec
    .array-data 1
        0x10t
        0x11t
        0x12t
        0x0t
        0x8t
        0x7t
        0x9t
        0x6t
        0xat
        0x5t
        0xbt
        0x4t
        0xct
        0x3t
        0xdt
        0x2t
        0xet
        0x1t
        0xft
    .end array-data

    :array_fa
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0x0t
        0x0t
        0x10t
        0x11t
        0x12t
        0x12t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
    .end array-data

    :array_1fe
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
    .end array-data

    :array_282
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x0
    .end array-data

    :array_2c0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bi_reverse(II)I
    .registers 4
    .param p0, "code"    # I
    .param p1, "len"    # I

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "res":I
    :cond_1
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 357
    ushr-int/lit8 p0, p0, 0x1

    .line 358
    shl-int/lit8 v0, v0, 0x1

    .line 359
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_1

    .line 360
    ushr-int/lit8 v1, v0, 0x1

    return v1
.end method

.method static d_code(I)I
    .registers 4
    .param p0, "dist"    # I

    .line 127
    const/16 v0, 0x100

    if-ge p0, v0, :cond_9

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->_dist_code:[B

    aget-byte v0, v0, p0

    goto :goto_10

    :cond_9
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Tree;->_dist_code:[B

    ushr-int/lit8 v2, p0, 0x7

    add-int/2addr v2, v0

    aget-byte v0, v1, v2

    :goto_10
    return v0
.end method

.method private gen_bitlen(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V
    .registers 21
    .param p1, "s"    # Lorg/jboss/netty/util/internal/jzlib/Deflate;

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    .line 144
    .local v2, "tree":[S
    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_tree:[S

    .line 145
    .local v3, "stree":[S
    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget-object v4, v4, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->extra_bits:[I

    .line 146
    .local v4, "extra":[I
    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget v5, v5, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->extra_base:I

    .line 147
    .local v5, "base":I
    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget v6, v6, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->max_length:I

    .line 153
    .local v6, "max_length":I
    const/4 v7, 0x0

    .line 155
    .local v7, "overflow":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    .local v9, "bits":I
    :goto_19
    const/16 v10, 0xf

    if-gt v9, v10, :cond_24

    .line 156
    iget-object v10, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aput-short v8, v10, v9

    .line 155
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 161
    :cond_24
    iget-object v10, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v11, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x1

    aput-short v8, v2, v10

    .line 163
    iget v8, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    .local v8, "h":I
    :goto_32
    add-int/lit8 v8, v8, 0x1

    const/16 v10, 0x23d

    if-ge v8, v10, :cond_8b

    .line 164
    iget-object v10, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v10, v10, v8

    .line 165
    .local v10, "n":I
    mul-int/lit8 v11, v10, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-short v11, v2, v11

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-short v11, v2, v11

    add-int/lit8 v11, v11, 0x1

    .line 166
    .end local v9    # "bits":I
    .local v11, "bits":I
    if-le v11, v6, :cond_50

    .line 167
    move v9, v6

    .line 168
    .end local v11    # "bits":I
    .restart local v9    # "bits":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 170
    .end local v9    # "bits":I
    .restart local v11    # "bits":I
    :cond_50
    move v9, v11

    .end local v11    # "bits":I
    .restart local v9    # "bits":I
    :goto_51
    mul-int/lit8 v11, v10, 0x2

    add-int/lit8 v11, v11, 0x1

    int-to-short v12, v9

    aput-short v12, v2, v11

    .line 173
    iget v11, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    if-le v10, v11, :cond_5d

    .line 174
    goto :goto_8a

    .line 177
    :cond_5d
    iget-object v11, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v12, v11, v9

    add-int/lit8 v12, v12, 0x1

    int-to-short v12, v12

    aput-short v12, v11, v9

    .line 178
    const/4 v11, 0x0

    .line 179
    .local v11, "xbits":I
    if-lt v10, v5, :cond_6d

    .line 180
    sub-int v12, v10, v5

    aget v11, v4, v12

    .line 182
    :cond_6d
    mul-int/lit8 v12, v10, 0x2

    aget-short v12, v2, v12

    .line 183
    .local v12, "f":S
    iget v13, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    add-int v14, v9, v11

    mul-int v14, v14, v12

    add-int/2addr v13, v14

    iput v13, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    .line 184
    if-eqz v3, :cond_8a

    .line 185
    iget v13, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    mul-int/lit8 v14, v10, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-short v14, v3, v14

    add-int/2addr v14, v11

    mul-int v14, v14, v12

    add-int/2addr v13, v14

    iput v13, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    .line 163
    .end local v11    # "xbits":I
    .end local v12    # "f":S
    :cond_8a
    :goto_8a
    goto :goto_32

    .line 188
    .end local v10    # "n":I
    :cond_8b
    if-nez v7, :cond_8e

    .line 189
    return-void

    .line 195
    :cond_8e
    :goto_8e
    add-int/lit8 v9, v6, -0x1

    .line 196
    :goto_90
    iget-object v10, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v10, v10, v9

    if-nez v10, :cond_99

    .line 197
    add-int/lit8 v9, v9, -0x1

    goto :goto_90

    .line 199
    :cond_99
    iget-object v10, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v11, v10, v9

    add-int/lit8 v11, v11, -0x1

    int-to-short v11, v11

    aput-short v11, v10, v9

    .line 200
    iget-object v10, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    add-int/lit8 v11, v9, 0x1

    aget-short v12, v10, v11

    add-int/lit8 v12, v12, 0x2

    int-to-short v12, v12

    aput-short v12, v10, v11

    .line 201
    iget-object v10, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v11, v10, v6

    add-int/lit8 v11, v11, -0x1

    int-to-short v11, v11

    aput-short v11, v10, v6

    .line 204
    add-int/lit8 v7, v7, -0x2

    .line 205
    if-gtz v7, :cond_114

    .line 207
    move v9, v6

    :goto_bb
    if-eqz v9, :cond_10f

    .line 208
    iget-object v10, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v10, v10, v9

    .line 209
    .restart local v10    # "n":I
    :goto_c1
    if-eqz v10, :cond_106

    .line 210
    iget-object v11, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    add-int/lit8 v8, v8, -0x1

    aget v11, v11, v8

    .line 211
    .local v11, "m":I
    iget v12, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    if-le v11, v12, :cond_ce

    .line 212
    goto :goto_c1

    .line 214
    :cond_ce
    mul-int/lit8 v12, v11, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-short v12, v2, v12

    if-eq v12, v9, :cond_f9

    .line 215
    iget v12, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    int-to-long v12, v12

    int-to-long v14, v9

    mul-int/lit8 v16, v11, 0x2

    add-int/lit8 v16, v16, 0x1

    aget-short v0, v2, v16

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "stree":[S
    .end local v4    # "extra":[I
    .local v17, "stree":[S
    .local v18, "extra":[I
    int-to-long v3, v0

    sub-long/2addr v14, v3

    mul-int/lit8 v0, v11, 0x2

    aget-short v0, v2, v0

    int-to-long v3, v0

    mul-long v14, v14, v3

    add-long/2addr v12, v14

    long-to-int v0, v12

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    .line 217
    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-short v3, v9

    aput-short v3, v2, v0

    goto :goto_fd

    .line 219
    .end local v17    # "stree":[S
    .end local v18    # "extra":[I
    .restart local v3    # "stree":[S
    .restart local v4    # "extra":[I
    :cond_f9
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "stree":[S
    .end local v4    # "extra":[I
    .restart local v17    # "stree":[S
    .restart local v18    # "extra":[I
    :goto_fd
    add-int/lit8 v10, v10, -0x1

    .line 208
    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v0, p0

    goto :goto_c1

    .line 207
    .end local v11    # "m":I
    .end local v17    # "stree":[S
    .end local v18    # "extra":[I
    .restart local v3    # "stree":[S
    .restart local v4    # "extra":[I
    :cond_106
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "stree":[S
    .end local v4    # "extra":[I
    .restart local v17    # "stree":[S
    .restart local v18    # "extra":[I
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    goto :goto_bb

    .line 222
    .end local v10    # "n":I
    .end local v17    # "stree":[S
    .end local v18    # "extra":[I
    .restart local v3    # "stree":[S
    .restart local v4    # "extra":[I
    :cond_10f
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "stree":[S
    .end local v4    # "extra":[I
    .restart local v17    # "stree":[S
    .restart local v18    # "extra":[I
    return-void

    .line 195
    .end local v17    # "stree":[S
    .end local v18    # "extra":[I
    .restart local v3    # "stree":[S
    .restart local v4    # "extra":[I
    :cond_114
    move-object/from16 v0, p0

    .end local v3    # "stree":[S
    .end local v4    # "extra":[I
    .restart local v17    # "stree":[S
    .restart local v18    # "extra":[I
    goto/16 :goto_8e
.end method

.method private static gen_codes([SI[S)V
    .registers 12
    .param p0, "tree"    # [S
    .param p1, "max_code"    # I
    .param p2, "bl_count"    # [S

    .line 321
    const/16 v0, 0x10

    new-array v0, v0, [S

    .line 322
    .local v0, "next_code":[S
    const/4 v1, 0x0

    .line 328
    .local v1, "code":S
    const/4 v2, 0x1

    move v3, v1

    const/4 v1, 0x1

    .local v1, "bits":I
    .local v3, "code":S
    :goto_8
    const/16 v4, 0xf

    if-gt v1, v4, :cond_19

    .line 329
    add-int/lit8 v4, v1, -0x1

    aget-short v4, p2, v4

    add-int/2addr v4, v3

    shl-int/2addr v4, v2

    int-to-short v4, v4

    move v3, v4

    aput-short v4, v0, v1

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 338
    :cond_19
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_1a
    if-gt v4, p1, :cond_37

    .line 339
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v2

    aget-short v5, p0, v5

    .line 340
    .local v5, "len":I
    if-nez v5, :cond_24

    .line 341
    goto :goto_34

    .line 344
    :cond_24
    mul-int/lit8 v6, v4, 0x2

    aget-short v7, v0, v5

    add-int/lit8 v8, v7, 0x1

    int-to-short v8, v8

    aput-short v8, v0, v5

    invoke-static {v7, v5}, Lorg/jboss/netty/util/internal/jzlib/Tree;->bi_reverse(II)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, p0, v6

    .line 338
    .end local v5    # "len":I
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 346
    :cond_37
    return-void
.end method


# virtual methods
.method build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V
    .registers 14
    .param p1, "s"    # Lorg/jboss/netty/util/internal/jzlib/Deflate;

    .line 231
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    .line 232
    .local v0, "tree":[S
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_tree:[S

    .line 233
    .local v1, "stree":[S
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->elems:I

    .line 235
    .local v2, "elems":I
    const/4 v3, -0x1

    .line 241
    .local v3, "max_code":I
    const/4 v4, 0x0

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    .line 242
    const/16 v5, 0x23d

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    .line 244
    move v5, v3

    const/4 v3, 0x0

    .local v3, "n":I
    .local v5, "max_code":I
    :goto_14
    const/4 v6, 0x1

    if-ge v3, v2, :cond_34

    .line 245
    mul-int/lit8 v7, v3, 0x2

    aget-short v7, v0, v7

    if-eqz v7, :cond_2c

    .line 246
    iget-object v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    add-int/2addr v8, v6

    iput v8, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    move v5, v3

    aput v3, v7, v8

    .line 247
    iget-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    aput-byte v4, v6, v3

    goto :goto_31

    .line 249
    :cond_2c
    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v6

    aput-short v4, v0, v7

    .line 244
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 257
    :cond_34
    :goto_34
    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    const/4 v8, 0x2

    if-ge v7, v8, :cond_65

    .line 258
    iget-object v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v9, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    add-int/2addr v9, v6

    iput v9, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-ge v5, v8, :cond_46

    add-int/lit8 v5, v5, 0x1

    move v8, v5

    goto :goto_48

    :cond_46
    move v8, v5

    const/4 v5, 0x0

    .end local v5    # "max_code":I
    .local v8, "max_code":I
    :goto_48
    aput v5, v7, v9

    .line 259
    .local v5, "node":I
    mul-int/lit8 v7, v5, 0x2

    aput-short v6, v0, v7

    .line 260
    iget-object v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    aput-byte v4, v7, v5

    .line 261
    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    sub-int/2addr v7, v6

    iput v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    .line 262
    if-eqz v1, :cond_63

    .line 263
    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v6

    aget-short v9, v1, v9

    sub-int/2addr v7, v9

    iput v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    .line 257
    .end local v5    # "node":I
    :cond_63
    move v5, v8

    goto :goto_34

    .line 267
    .end local v8    # "max_code":I
    .local v5, "max_code":I
    :cond_65
    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    .line 272
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    div-int/2addr v4, v8

    .end local v3    # "n":I
    .local v4, "n":I
    :goto_6a
    if-lt v4, v6, :cond_72

    .line 273
    invoke-virtual {p1, v0, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pqdownheap([SI)V

    .line 272
    add-int/lit8 v4, v4, -0x1

    goto :goto_6a

    .line 279
    :cond_72
    move v3, v2

    .line 282
    .local v3, "node":I
    :goto_73
    iget-object v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v4, v7, v6

    .line 283
    iget-object v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget-object v9, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v10, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    add-int/lit8 v11, v10, -0x1

    iput v11, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    aget v9, v9, v10

    aput v9, v7, v6

    .line 284
    invoke-virtual {p1, v0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pqdownheap([SI)V

    .line 285
    iget-object v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v7, v7, v6

    .line 287
    .local v7, "m":I
    iget-object v9, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v10, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    sub-int/2addr v10, v6

    iput v10, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    aput v4, v9, v10

    .line 288
    iget-object v9, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v10, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    sub-int/2addr v10, v6

    iput v10, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    aput v7, v9, v10

    .line 291
    mul-int/lit8 v9, v3, 0x2

    mul-int/lit8 v10, v4, 0x2

    aget-short v10, v0, v10

    mul-int/lit8 v11, v7, 0x2

    aget-short v11, v0, v11

    add-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    .line 292
    iget-object v9, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    iget-object v10, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    aget-byte v10, v10, v4

    iget-object v11, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    aget-byte v11, v11, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v10, v6

    int-to-byte v10, v10

    aput-byte v10, v9, v3

    .line 293
    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v9, v6

    mul-int/lit8 v10, v7, 0x2

    add-int/2addr v10, v6

    int-to-short v11, v3

    aput-short v11, v0, v10

    aput-short v11, v0, v9

    .line 296
    iget-object v9, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    add-int/lit8 v10, v3, 0x1

    .local v10, "node":I
    aput v3, v9, v6

    .line 297
    .end local v3    # "node":I
    invoke-virtual {p1, v0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pqdownheap([SI)V

    .line 298
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-ge v3, v8, :cond_ec

    .line 300
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v8, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    sub-int/2addr v8, v6

    iput v8, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    iget-object v9, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v6, v9, v6

    aput v6, v3, v8

    .line 305
    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Tree;->gen_bitlen(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    .line 308
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    invoke-static {v0, v5, v3}, Lorg/jboss/netty/util/internal/jzlib/Tree;->gen_codes([SI[S)V

    .line 309
    return-void

    .line 279
    .end local v7    # "m":I
    :cond_ec
    move v3, v10

    goto :goto_73
.end method
