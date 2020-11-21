.class public final Lorg/xbill/DNS/Rcode;
.super Ljava/lang/Object;
.source "Rcode.java"


# static fields
.field public static final BADKEY:I = 0x11

.field public static final BADMODE:I = 0x13

.field public static final BADSIG:I = 0x10

.field public static final BADTIME:I = 0x12

.field public static final BADVERS:I = 0x10

.field public static final FORMERR:I = 0x1

.field public static final NOERROR:I = 0x0

.field public static final NOTAUTH:I = 0x9

.field public static final NOTIMP:I = 0x4

.field public static final NOTIMPL:I = 0x4

.field public static final NOTZONE:I = 0xa

.field public static final NXDOMAIN:I = 0x3

.field public static final NXRRSET:I = 0x8

.field public static final REFUSED:I = 0x5

.field public static final SERVFAIL:I = 0x2

.field public static final YXDOMAIN:I = 0x6

.field public static final YXRRSET:I = 0x7

.field private static rcodes:Lorg/xbill/DNS/Mnemonic;

.field private static tsigrcodes:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 13
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DNS Rcode"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    .line 16
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "TSIG rcode"

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    .line 73
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 74
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 77
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "NOERROR"

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 78
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "FORMERR"

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 79
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "SERVFAIL"

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 80
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "NXDOMAIN"

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 81
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "NOTIMP"

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 82
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "NOTIMPL"

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 83
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "REFUSED"

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 84
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "YXDOMAIN"

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 85
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "YXRRSET"

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 86
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "NXRRSET"

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 87
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "NOTAUTH"

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 88
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "NOTZONE"

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 89
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "BADVERS"

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 91
    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const v2, 0xffff

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 92
    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "RESERVED"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 94
    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    sget-object v1, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->addAll(Lorg/xbill/DNS/Mnemonic;)V

    .line 96
    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "BADSIG"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 97
    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "BADKEY"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 98
    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "BADTIME"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 99
    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "BADMODE"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TSIGstring(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 114
    sget-object v0, Lorg/xbill/DNS/Rcode;->tsigrcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 108
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 120
    sget-object v0, Lorg/xbill/DNS/Rcode;->rcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
