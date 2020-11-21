.class public Lorg/xbill/DNS/WKSRecord$Service;
.super Ljava/lang/Object;
.source "WKSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/WKSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field public static final AUTH:I = 0x71

.field public static final BL_IDM:I = 0x8e

.field public static final BOOTPC:I = 0x44

.field public static final BOOTPS:I = 0x43

.field public static final CHARGEN:I = 0x13

.field public static final CISCO_FNA:I = 0x82

.field public static final CISCO_SYS:I = 0x84

.field public static final CISCO_TNA:I = 0x83

.field public static final CSNET_NS:I = 0x69

.field public static final DAYTIME:I = 0xd

.field public static final DCP:I = 0x5d

.field public static final DISCARD:I = 0x9

.field public static final DOMAIN:I = 0x35

.field public static final DSP:I = 0x21

.field public static final ECHO:I = 0x7

.field public static final EMFIS_CNTL:I = 0x8d

.field public static final EMFIS_DATA:I = 0x8c

.field public static final ERPC:I = 0x79

.field public static final FINGER:I = 0x4f

.field public static final FTP:I = 0x15

.field public static final FTP_DATA:I = 0x14

.field public static final GRAPHICS:I = 0x29

.field public static final HOSTNAME:I = 0x65

.field public static final HOSTS2_NS:I = 0x51

.field public static final INGRES_NET:I = 0x86

.field public static final ISI_GL:I = 0x37

.field public static final ISO_TSAP:I = 0x66

.field public static final LA_MAINT:I = 0x33

.field public static final LINK:I = 0xf5

.field public static final LOCUS_CON:I = 0x7f

.field public static final LOCUS_MAP:I = 0x7d

.field public static final LOC_SRV:I = 0x87

.field public static final LOGIN:I = 0x31

.field public static final METAGRAM:I = 0x63

.field public static final MIT_DOV:I = 0x5b

.field public static final MPM:I = 0x2d

.field public static final MPM_FLAGS:I = 0x2c

.field public static final MPM_SND:I = 0x2e

.field public static final MSG_AUTH:I = 0x1f

.field public static final MSG_ICP:I = 0x1d

.field public static final NAMESERVER:I = 0x2a

.field public static final NETBIOS_DGM:I = 0x8a

.field public static final NETBIOS_NS:I = 0x89

.field public static final NETBIOS_SSN:I = 0x8b

.field public static final NETRJS_1:I = 0x47

.field public static final NETRJS_2:I = 0x48

.field public static final NETRJS_3:I = 0x49

.field public static final NETRJS_4:I = 0x4a

.field public static final NICNAME:I = 0x2b

.field public static final NI_FTP:I = 0x2f

.field public static final NI_MAIL:I = 0x3d

.field public static final NNTP:I = 0x77

.field public static final NSW_FE:I = 0x1b

.field public static final NTP:I = 0x7b

.field public static final POP_2:I = 0x6d

.field public static final PROFILE:I = 0x88

.field public static final PWDGEN:I = 0x81

.field public static final QUOTE:I = 0x11

.field public static final RJE:I = 0x5

.field public static final RLP:I = 0x27

.field public static final RTELNET:I = 0x6b

.field public static final SFTP:I = 0x73

.field public static final SMTP:I = 0x19

.field public static final STATSRV:I = 0x85

.field public static final SUNRPC:I = 0x6f

.field public static final SUPDUP:I = 0x5f

.field public static final SUR_MEAS:I = 0xf3

.field public static final SU_MIT_TG:I = 0x59

.field public static final SWIFT_RVF:I = 0x61

.field public static final TACACS_DS:I = 0x41

.field public static final TACNEWS:I = 0x62

.field public static final TELNET:I = 0x17

.field public static final TFTP:I = 0x45

.field public static final TIME:I = 0x25

.field public static final USERS:I = 0xb

.field public static final UUCP_PATH:I = 0x75

.field public static final VIA_FTP:I = 0x3f

.field public static final X400:I = 0x67

.field public static final X400_SND:I = 0x68

.field private static services:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 469
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "TCP/UDP service"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    .line 473
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 474
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 476
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "rje"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 477
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "echo"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 478
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "discard"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 479
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "users"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 480
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "daytime"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 481
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "quote"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 482
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "chargen"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 483
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ftp-data"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 484
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ftp"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 485
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "telnet"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 486
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "smtp"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 487
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "nsw-fe"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 488
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "msg-icp"

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 489
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "msg-auth"

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 490
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "dsp"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 491
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "time"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 492
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "rlp"

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 493
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "graphics"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 494
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "nameserver"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 495
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "nicname"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 496
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "mpm-flags"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 497
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "mpm"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 498
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "mpm-snd"

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 499
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ni-ftp"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 500
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "login"

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 501
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "la-maint"

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 502
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "domain"

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 503
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "isi-gl"

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 504
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ni-mail"

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 505
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "via-ftp"

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 506
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "tacacs-ds"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 507
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "bootps"

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 508
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "bootpc"

    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 509
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "tftp"

    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 510
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "netrjs-1"

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 511
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "netrjs-2"

    const/16 v2, 0x48

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 512
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "netrjs-3"

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 513
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "netrjs-4"

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 514
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "finger"

    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 515
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "hosts2-ns"

    const/16 v2, 0x51

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 516
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "su-mit-tg"

    const/16 v2, 0x59

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 517
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "mit-dov"

    const/16 v2, 0x5b

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 518
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "dcp"

    const/16 v2, 0x5d

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 519
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "supdup"

    const/16 v2, 0x5f

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 520
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "swift-rvf"

    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 521
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "tacnews"

    const/16 v2, 0x62

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 522
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "metagram"

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 523
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "hostname"

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 524
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "iso-tsap"

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 525
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "x400"

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 526
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "x400-snd"

    const/16 v2, 0x68

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 527
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "csnet-ns"

    const/16 v2, 0x69

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 528
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "rtelnet"

    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 529
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "pop-2"

    const/16 v2, 0x6d

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 530
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "sunrpc"

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 531
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "auth"

    const/16 v2, 0x71

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 532
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "sftp"

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 533
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "uucp-path"

    const/16 v2, 0x75

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 534
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "nntp"

    const/16 v2, 0x77

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 535
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "erpc"

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 536
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ntp"

    const/16 v2, 0x7b

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 537
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "locus-map"

    const/16 v2, 0x7d

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 538
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "locus-con"

    const/16 v2, 0x7f

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 539
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "pwdgen"

    const/16 v2, 0x81

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 540
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "cisco-fna"

    const/16 v2, 0x82

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 541
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "cisco-tna"

    const/16 v2, 0x83

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 542
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "cisco-sys"

    const/16 v2, 0x84

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 543
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "statsrv"

    const/16 v2, 0x85

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 544
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "ingres-net"

    const/16 v2, 0x86

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 545
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "loc-srv"

    const/16 v2, 0x87

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 546
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "profile"

    const/16 v2, 0x88

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 547
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "netbios-ns"

    const/16 v2, 0x89

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 548
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "netbios-dgm"

    const/16 v2, 0x8a

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 549
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "netbios-ssn"

    const/16 v2, 0x8b

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 550
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "emfis-data"

    const/16 v2, 0x8c

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 551
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "emfis-cntl"

    const/16 v2, 0x8d

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 552
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "bl-idm"

    const/16 v2, 0x8e

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 553
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "sur-meas"

    const/16 v2, 0xf3

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 554
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "link"

    const/16 v2, 0xf5

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 555
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 563
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 574
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Service;->services:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
