.class final Lorg/jboss/netty/util/internal/jzlib/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"


# static fields
.field private static final BASE:I = 0xfff1

.field private static final NMAX:I = 0x15b0


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method static adler32(J[BII)J
    .registers 14
    .param p0, "adler"    # J
    .param p2, "buf"    # [B
    .param p3, "index"    # I
    .param p4, "len"    # I

    .line 59
    if-nez p2, :cond_5

    .line 60
    const-wide/16 v0, 0x1

    return-wide v0

    .line 63
    :cond_5
    const-wide/32 v0, 0xffff

    and-long v2, p0, v0

    .line 64
    .local v2, "s1":J
    const/16 v4, 0x10

    shr-long v5, p0, v4

    and-long/2addr v0, v5

    .line 67
    .local v0, "s2":J
    :goto_f
    if-lez p4, :cond_c8

    .line 68
    const/16 v5, 0x15b0

    if-ge p4, v5, :cond_17

    move v5, p4

    nop

    .line 69
    .local v5, "k":I
    :cond_17
    sub-int/2addr p4, v5

    .line 70
    :goto_18
    if-lt v5, v4, :cond_ae

    .line 71
    add-int/lit8 v6, p3, 0x1

    .local v6, "index":I
    aget-byte p3, p2, p3

    .end local p3    # "index":I
    and-int/lit16 p3, p3, 0xff

    int-to-long v7, p3

    add-long/2addr v2, v7

    .line 72
    add-long/2addr v0, v2

    .line 73
    add-int/lit8 p3, v6, 0x1

    .restart local p3    # "index":I
    aget-byte v6, p2, v6

    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 74
    add-long/2addr v0, v2

    .line 75
    add-int/lit8 v6, p3, 0x1

    .restart local v6    # "index":I
    aget-byte p3, p2, p3

    .end local p3    # "index":I
    and-int/lit16 p3, p3, 0xff

    int-to-long v7, p3

    add-long/2addr v2, v7

    .line 76
    add-long/2addr v0, v2

    .line 77
    add-int/lit8 p3, v6, 0x1

    .restart local p3    # "index":I
    aget-byte v6, p2, v6

    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 78
    add-long/2addr v0, v2

    .line 79
    add-int/lit8 v6, p3, 0x1

    .restart local v6    # "index":I
    aget-byte p3, p2, p3

    .end local p3    # "index":I
    and-int/lit16 p3, p3, 0xff

    int-to-long v7, p3

    add-long/2addr v2, v7

    .line 80
    add-long/2addr v0, v2

    .line 81
    add-int/lit8 p3, v6, 0x1

    .restart local p3    # "index":I
    aget-byte v6, p2, v6

    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 82
    add-long/2addr v0, v2

    .line 83
    add-int/lit8 v6, p3, 0x1

    .restart local v6    # "index":I
    aget-byte p3, p2, p3

    .end local p3    # "index":I
    and-int/lit16 p3, p3, 0xff

    int-to-long v7, p3

    add-long/2addr v2, v7

    .line 84
    add-long/2addr v0, v2

    .line 85
    add-int/lit8 p3, v6, 0x1

    .restart local p3    # "index":I
    aget-byte v6, p2, v6

    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 86
    add-long/2addr v0, v2

    .line 87
    add-int/lit8 v6, p3, 0x1

    .restart local v6    # "index":I
    aget-byte p3, p2, p3

    .end local p3    # "index":I
    and-int/lit16 p3, p3, 0xff

    int-to-long v7, p3

    add-long/2addr v2, v7

    .line 88
    add-long/2addr v0, v2

    .line 89
    add-int/lit8 p3, v6, 0x1

    .restart local p3    # "index":I
    aget-byte v6, p2, v6

    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 90
    add-long/2addr v0, v2

    .line 91
    add-int/lit8 v6, p3, 0x1

    .restart local v6    # "index":I
    aget-byte p3, p2, p3

    .end local p3    # "index":I
    and-int/lit16 p3, p3, 0xff

    int-to-long v7, p3

    add-long/2addr v2, v7

    .line 92
    add-long/2addr v0, v2

    .line 93
    add-int/lit8 p3, v6, 0x1

    .restart local p3    # "index":I
    aget-byte v6, p2, v6

    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 94
    add-long/2addr v0, v2

    .line 95
    add-int/lit8 v6, p3, 0x1

    .restart local v6    # "index":I
    aget-byte p3, p2, p3

    .end local p3    # "index":I
    and-int/lit16 p3, p3, 0xff

    int-to-long v7, p3

    add-long/2addr v2, v7

    .line 96
    add-long/2addr v0, v2

    .line 97
    add-int/lit8 p3, v6, 0x1

    .restart local p3    # "index":I
    aget-byte v6, p2, v6

    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 98
    add-long/2addr v0, v2

    .line 99
    add-int/lit8 v6, p3, 0x1

    .restart local v6    # "index":I
    aget-byte p3, p2, p3

    .end local p3    # "index":I
    and-int/lit16 p3, p3, 0xff

    int-to-long v7, p3

    add-long/2addr v2, v7

    .line 100
    add-long/2addr v0, v2

    .line 101
    add-int/lit8 p3, v6, 0x1

    .restart local p3    # "index":I
    aget-byte v6, p2, v6

    .end local v6    # "index":I
    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 102
    add-long/2addr v0, v2

    .line 103
    add-int/lit8 v5, v5, -0x10

    goto/16 :goto_18

    .line 105
    :cond_ae
    if-eqz v5, :cond_c1

    .line 107
    :goto_b0
    add-int/lit8 v6, p3, 0x1

    .restart local v6    # "index":I
    aget-byte p3, p2, p3

    .end local p3    # "index":I
    and-int/lit16 p3, p3, 0xff

    int-to-long v7, p3

    add-long/2addr v2, v7

    .line 108
    add-long/2addr v0, v2

    .line 109
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_bf

    .line 111
    move p3, v6

    goto :goto_c1

    .line 107
    :cond_bf
    move p3, v6

    goto :goto_b0

    .line 111
    .end local v6    # "index":I
    .restart local p3    # "index":I
    :cond_c1
    :goto_c1
    const-wide/32 v6, 0xfff1

    rem-long/2addr v2, v6

    .line 112
    rem-long/2addr v0, v6

    goto/16 :goto_f

    .line 114
    .end local v5    # "k":I
    :cond_c8
    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method
