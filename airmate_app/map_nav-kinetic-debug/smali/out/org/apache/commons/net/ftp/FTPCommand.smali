.class public final Lorg/apache/commons/net/ftp/FTPCommand;
.super Ljava/lang/Object;
.source "FTPCommand.java"


# static fields
.field public static final ABOR:I = 0x15

.field public static final ABORT:I = 0x15

.field public static final ACCOUNT:I = 0x2

.field public static final ACCT:I = 0x2

.field public static final ALLO:I = 0x11

.field public static final ALLOCATE:I = 0x11

.field public static final APPE:I = 0x10

.field public static final APPEND:I = 0x10

.field public static final CDUP:I = 0x4

.field public static final CHANGE_TO_PARENT_DIRECTORY:I = 0x4

.field public static final CHANGE_WORKING_DIRECTORY:I = 0x3

.field public static final CWD:I = 0x3

.field public static final DATA_PORT:I = 0x8

.field public static final DELE:I = 0x16

.field public static final DELETE:I = 0x16

.field public static final FILE_STRUCTURE:I = 0xb

.field public static final HELP:I = 0x1f

.field public static final LIST:I = 0x1a

.field public static final LOGOUT:I = 0x7

.field public static final MAKE_DIRECTORY:I = 0x18

.field public static final MDTM:I = 0x21

.field public static final MKD:I = 0x18

.field public static final MODE:I = 0xc

.field public static final MOD_TIME:I = 0x21

.field public static final NAME_LIST:I = 0x1b

.field public static final NLST:I = 0x1b

.field public static final NOOP:I = 0x20

.field public static final PASS:I = 0x1

.field public static final PASSIVE:I = 0x9

.field public static final PASSWORD:I = 0x1

.field public static final PASV:I = 0x9

.field public static final PORT:I = 0x8

.field public static final PRINT_WORKING_DIRECTORY:I = 0x19

.field public static final PWD:I = 0x19

.field public static final QUIT:I = 0x7

.field public static final REIN:I = 0x6

.field public static final REINITIALIZE:I = 0x6

.field public static final REMOVE_DIRECTORY:I = 0x17

.field public static final RENAME_FROM:I = 0x13

.field public static final RENAME_TO:I = 0x14

.field public static final REPRESENTATION_TYPE:I = 0xa

.field public static final REST:I = 0x12

.field public static final RESTART:I = 0x12

.field public static final RETR:I = 0xd

.field public static final RETRIEVE:I = 0xd

.field public static final RMD:I = 0x17

.field public static final RNFR:I = 0x13

.field public static final RNTO:I = 0x14

.field public static final SITE:I = 0x1c

.field public static final SITE_PARAMETERS:I = 0x1c

.field public static final SMNT:I = 0x5

.field public static final STAT:I = 0x1e

.field public static final STATUS:I = 0x1e

.field public static final STOR:I = 0xe

.field public static final STORE:I = 0xe

.field public static final STORE_UNIQUE:I = 0xf

.field public static final STOU:I = 0xf

.field public static final STRU:I = 0xb

.field public static final STRUCTURE_MOUNT:I = 0x5

.field public static final SYST:I = 0x1d

.field public static final SYSTEM:I = 0x1d

.field public static final TRANSFER_MODE:I = 0xc

.field public static final TYPE:I = 0xa

.field public static final USER:I

.field public static final USERNAME:I

.field static final _commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 112
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "USER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PASS"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ACCT"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "CWD"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "CDUP"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "SMNT"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "REIN"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "QUIT"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "PORT"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "PASV"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "TYPE"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "STRU"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "MODE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "RETR"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "STOR"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "STOU"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "APPE"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "ALLO"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "REST"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "RNFR"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "RNTO"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "ABOR"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "DELE"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "RMD"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "MKD"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "PWD"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "LIST"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "NLST"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "SITE"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "SYST"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "STAT"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "HELP"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "NOOP"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/net/ftp/FTPCommand;->_commands:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .registers 2
    .param p0, "command"    # I

    .line 129
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
