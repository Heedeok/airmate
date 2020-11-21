.class public final Lorg/xbill/DNS/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field public static final AA:B = 0x5t

.field public static final AD:B = 0xat

.field public static final CD:B = 0xbt

.field public static final DO:I = 0x8000

.field public static final QR:B = 0x0t

.field public static final RA:B = 0x8t

.field public static final RD:B = 0x7t

.field public static final TC:B = 0x6t

.field private static flags:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 13
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DNS Header Flag"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 41
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 42
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "FLAG"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 45
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "qr"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 46
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "aa"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 47
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "tc"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 48
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "rd"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 49
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ra"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 50
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ad"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 51
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "cd"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFlag(I)Z
    .registers 3
    .param p0, "index"    # I

    .line 75
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    .line 76
    const/4 v0, 0x1

    if-lt p0, v0, :cond_b

    const/4 v1, 0x4

    if-le p0, v1, :cond_f

    :cond_b
    const/16 v1, 0xc

    if-lt p0, v1, :cond_11

    .line 77
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_11
    return v0
.end method

.method public static string(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 60
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/xbill/DNS/Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
