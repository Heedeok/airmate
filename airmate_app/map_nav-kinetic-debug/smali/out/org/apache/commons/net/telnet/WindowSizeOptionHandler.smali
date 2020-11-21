.class public Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "WindowSizeOptionHandler.java"


# static fields
.field protected static final WINDOW_SIZE:I = 0x1f


# instance fields
.field private m_nHeight:I

.field private m_nWidth:I


# direct methods
.method public constructor <init>(II)V
    .registers 9
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I

    .line 88
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 32
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 37
    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 96
    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 97
    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 98
    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .registers 13
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I
    .param p3, "initlocal"    # Z
    .param p4, "initremote"    # Z
    .param p5, "acceptlocal"    # Z
    .param p6, "acceptremote"    # Z

    .line 65
    const/16 v1, 0x1f

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 32
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 37
    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 73
    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 74
    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 75
    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .registers 4
    .param p1, "suboptionData"    # [I
    .param p2, "suboptionLength"    # I

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationLocal()[I
    .registers 9

    .line 123
    iget v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    const/high16 v1, 0x10000

    mul-int v0, v0, v1

    iget v1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    add-int/2addr v0, v1

    .line 124
    .local v0, "nCompoundWindowSize":I
    const/4 v1, 0x5

    .line 129
    .local v1, "nResponseSize":I
    iget v2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    rem-int/lit16 v2, v2, 0x100

    const/16 v3, 0xff

    if-ne v2, v3, :cond_14

    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 133
    :cond_14
    iget v2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    div-int/lit16 v2, v2, 0x100

    if-ne v2, v3, :cond_1c

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 137
    :cond_1c
    iget v2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    rem-int/lit16 v2, v2, 0x100

    if-ne v2, v3, :cond_24

    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 141
    :cond_24
    iget v2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    div-int/lit16 v2, v2, 0x100

    if-ne v2, v3, :cond_2c

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 148
    :cond_2c
    new-array v2, v1, [I

    .line 158
    .local v2, "response":[I
    const/4 v4, 0x0

    const/16 v5, 0x1f

    aput v5, v2, v4

    .line 161
    const/4 v4, 0x1

    .local v4, "nIndex":I
    const/16 v5, 0x18

    .line 162
    .local v5, "nShift":I
    :goto_36
    if-ge v4, v1, :cond_4d

    .line 165
    const/16 v6, 0xff

    .line 166
    .local v6, "nTurnedOnBits":I
    shl-int/2addr v6, v5

    .line 167
    and-int v7, v0, v6

    ushr-int/2addr v7, v5

    aput v7, v2, v4

    .line 169
    aget v7, v2, v4

    if-ne v7, v3, :cond_48

    .line 170
    add-int/lit8 v4, v4, 0x1

    .line 171
    aput v3, v2, v4

    .line 163
    :cond_48
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x8

    goto :goto_36

    .line 175
    .end local v6    # "nTurnedOnBits":I
    :cond_4d
    return-object v2
.end method

.method public startSubnegotiationRemote()[I
    .registers 2

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method
