.class public final Lorg/apache/commons/net/pop3/POP3Command;
.super Ljava/lang/Object;
.source "POP3Command.java"


# static fields
.field public static final APOP:I = 0x9

.field public static final DELE:I = 0x6

.field public static final LIST:I = 0x4

.field public static final NOOP:I = 0x7

.field public static final PASS:I = 0x1

.field public static final QUIT:I = 0x2

.field public static final RETR:I = 0x5

.field public static final RSET:I = 0x8

.field public static final STAT:I = 0x3

.field public static final TOP:I = 0xa

.field public static final UIDL:I = 0xb

.field public static final USER:I

.field static final _commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 54
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "USER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PASS"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "QUIT"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "STAT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "LIST"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "RETR"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "DELE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "NOOP"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "RSET"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "APOP"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "TOP"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "UIDL"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/net/pop3/POP3Command;->_commands:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .registers 2
    .param p0, "command"    # I

    .line 70
    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
