.class public Lorg/xbill/DNS/WKSRecord$Protocol;
.super Ljava/lang/Object;
.source "WKSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/WKSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final ARGUS:I = 0xd

.field public static final BBN_RCC_MON:I = 0xa

.field public static final BR_SAT_MON:I = 0x4c

.field public static final CFTP:I = 0x3e

.field public static final CHAOS:I = 0x10

.field public static final DCN_MEAS:I = 0x13

.field public static final EGP:I = 0x8

.field public static final EMCON:I = 0xe

.field public static final GGP:I = 0x3

.field public static final HMP:I = 0x14

.field public static final ICMP:I = 0x1

.field public static final IGMP:I = 0x2

.field public static final IGP:I = 0x9

.field public static final IPCV:I = 0x47

.field public static final IPPC:I = 0x43

.field public static final IRTP:I = 0x1c

.field public static final ISO_TP4:I = 0x1d

.field public static final LEAF_1:I = 0x19

.field public static final LEAF_2:I = 0x1a

.field public static final MERIT_INP:I = 0x20

.field public static final MFE_NSP:I = 0x1f

.field public static final MIT_SUBNET:I = 0x41

.field public static final MUX:I = 0x12

.field public static final NETBLT:I = 0x1e

.field public static final NVP_II:I = 0xb

.field public static final PRM:I = 0x15

.field public static final PUP:I = 0xc

.field public static final RDP:I = 0x1b

.field public static final RVD:I = 0x42

.field public static final SAT_EXPAK:I = 0x40

.field public static final SAT_MON:I = 0x45

.field public static final SEP:I = 0x21

.field public static final ST:I = 0x5

.field public static final TCP:I = 0x6

.field public static final TRUNK_1:I = 0x17

.field public static final TRUNK_2:I = 0x18

.field public static final UCL:I = 0x7

.field public static final UDP:I = 0x11

.field public static final WB_EXPAK:I = 0x4f

.field public static final WB_MON:I = 0x4e

.field public static final XNET:I = 0xf

.field public static final XNS_IDP:I = 0x16

.field private static protocols:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 152
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "IP protocol"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 156
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 157
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 159
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "icmp"

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 160
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "igmp"

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 161
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ggp"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 162
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "st"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 163
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "tcp"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 164
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ucl"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 165
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "egp"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 166
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "igp"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 167
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "bbn-rcc-mon"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 168
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "nvp-ii"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 169
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "pup"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 170
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "argus"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 171
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "emcon"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 172
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "xnet"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 173
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "chaos"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 174
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "udp"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 175
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "mux"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 176
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "dcn-meas"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 177
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "hmp"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 178
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "prm"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 179
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "xns-idp"

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 180
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "trunk-1"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 181
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "trunk-2"

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 182
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "leaf-1"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 183
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "leaf-2"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 184
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "rdp"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 185
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "irtp"

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 186
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "iso-tp4"

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 187
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "netblt"

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 188
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "mfe-nsp"

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 189
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "merit-inp"

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 190
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "sep"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 191
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "cftp"

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 192
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "sat-expak"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 193
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "mit-subnet"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 194
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "rvd"

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 195
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ippc"

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 196
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "sat-mon"

    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 197
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ipcv"

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 198
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "br-sat-mon"

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 199
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "wb-mon"

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 200
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "wb-expak"

    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 201
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 208
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 219
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
