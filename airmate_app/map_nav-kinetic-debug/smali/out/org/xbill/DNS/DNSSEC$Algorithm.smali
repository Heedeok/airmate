.class public Lorg/xbill/DNS/DNSSEC$Algorithm;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Algorithm"
.end annotation


# static fields
.field public static final DH:I = 0x2

.field public static final DSA:I = 0x3

.field public static final DSA_NSEC3_SHA1:I = 0x6

.field public static final ECC:I = 0x4

.field public static final INDIRECT:I = 0xfc

.field public static final PRIVATEDNS:I = 0xfd

.field public static final PRIVATEOID:I = 0xfe

.field public static final RSAMD5:I = 0x1

.field public static final RSASHA1:I = 0x5

.field public static final RSASHA256:I = 0x8

.field public static final RSASHA512:I = 0xa

.field public static final RSA_NSEC3_SHA1:I = 0x7

.field private static algs:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 64
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DNSSEC algorithm"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    .line 68
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 69
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 71
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "RSAMD5"

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 72
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DH"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 73
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DSA"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 74
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ECC"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 75
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "RSASHA1"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 76
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DSA-NSEC3-SHA1"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 77
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "RSA-NSEC3-SHA1"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 78
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "RSASHA256"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 79
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "RSASHA512"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 80
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "INDIRECT"

    const/16 v2, 0xfc

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 81
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "PRIVATEDNS"

    const/16 v2, 0xfd

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 82
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "PRIVATEOID"

    const/16 v2, 0xfe

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .registers 2
    .param p0, "alg"    # I

    .line 90
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 101
    sget-object v0, Lorg/xbill/DNS/DNSSEC$Algorithm;->algs:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
