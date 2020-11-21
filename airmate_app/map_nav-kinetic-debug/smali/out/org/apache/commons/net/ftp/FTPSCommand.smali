.class public final Lorg/apache/commons/net/ftp/FTPSCommand;
.super Ljava/lang/Object;
.source "FTPSCommand.java"


# static fields
.field public static final ADAT:I = 0x1

.field public static final AUTH:I = 0x0

.field public static final AUTHENTICATION_SECURITY_DATA:I = 0x1

.field public static final AUTHENTICATION_SECURITY_MECHANISM:I = 0x0

.field public static final CCC:I = 0x4

.field public static final CLEAR_COMMAND_CHANNEL:I = 0x4

.field public static final DATA_CHANNEL_PROTECTION_LEVEL:I = 0x3

.field public static final PBSZ:I = 0x2

.field public static final PROT:I = 0x3

.field public static final PROTECTION_BUFFER_SIZE:I = 0x2

.field static final _commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AUTH"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ADAT"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PBSZ"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "PROT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "CCC"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/net/ftp/FTPSCommand;->_commands:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .registers 2
    .param p0, "command"    # I

    .line 48
    sget-object v0, Lorg/apache/commons/net/ftp/FTPSCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
