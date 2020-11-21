.class public final Lorg/apache/commons/net/telnet/TelnetCommand;
.super Ljava/lang/Object;
.source "TelnetCommand.java"


# static fields
.field public static final ABORT:I = 0xee

.field public static final AO:I = 0xf5

.field public static final AYT:I = 0xf6

.field public static final BREAK:I = 0xf3

.field public static final DM:I = 0xf2

.field public static final DO:I = 0xfd

.field public static final DONT:I = 0xfe

.field public static final EC:I = 0xf7

.field public static final EL:I = 0xf8

.field public static final EOF:I = 0xec

.field public static final EOR:I = 0xef

.field public static final GA:I = 0xf9

.field public static final IAC:I = 0xff

.field public static final IP:I = 0xf4

.field public static final MAX_COMMAND_VALUE:I = 0xff

.field public static final NOP:I = 0xf1

.field public static final SB:I = 0xfa

.field public static final SE:I = 0xf0

.field public static final SUSP:I = 0xed

.field public static final SYNCH:I = 0xf2

.field public static final WILL:I = 0xfb

.field public static final WONT:I = 0xfc

.field private static final __FIRST_COMMAND:I = 0xff

.field private static final __LAST_COMMAND:I = 0xec

.field private static final __commandString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 97
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IAC"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DONT"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "DO"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "WONT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "WILL"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "SB"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "GA"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "EL"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "EC"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "AYT"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "AO"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "IP"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "BRK"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "DMARK"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "NOP"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "SE"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "EOR"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "ABORT"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "SUSP"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "EOF"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/net/telnet/TelnetCommand;->__commandString:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .registers 3
    .param p0, "code"    # I

    .line 114
    sget-object v0, Lorg/apache/commons/net/telnet/TelnetCommand;->__commandString:[Ljava/lang/String;

    rsub-int v1, p0, 0xff

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final isValidCommand(I)Z
    .registers 2
    .param p0, "code"    # I

    .line 126
    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    const/16 v0, 0xec

    if-lt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
