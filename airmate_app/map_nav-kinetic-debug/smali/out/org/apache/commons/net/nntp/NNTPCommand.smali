.class public final Lorg/apache/commons/net/nntp/NNTPCommand;
.super Ljava/lang/Object;
.source "NNTPCommand.java"


# static fields
.field public static final ARTICLE:I = 0x0

.field public static final AUTHINFO:I = 0xf

.field public static final BODY:I = 0x1

.field public static final GROUP:I = 0x2

.field public static final HEAD:I = 0x3

.field public static final HELP:I = 0x4

.field public static final IHAVE:I = 0x5

.field public static final LAST:I = 0x6

.field public static final LIST:I = 0x7

.field public static final NEWGROUPS:I = 0x8

.field public static final NEWNEWS:I = 0x9

.field public static final NEXT:I = 0xa

.field public static final POST:I = 0xb

.field public static final QUIT:I = 0xc

.field public static final SLAVE:I = 0xd

.field public static final STAT:I = 0xe

.field public static final XHDR:I = 0x11

.field public static final XOVER:I = 0x10

.field static final _commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 55
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ARTICLE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BODY"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "GROUP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "HEAD"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "HELP"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "IHAVE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "LAST"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "LIST"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "NEWGROUPS"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "NEWNEWS"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "NEXT"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "POST"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "QUIT"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "SLAVE"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "STAT"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "AUTHINFO"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "XOVER"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "XHDR"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/net/nntp/NNTPCommand;->_commands:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCommand(I)Ljava/lang/String;
    .registers 2
    .param p0, "command"    # I

    .line 72
    sget-object v0, Lorg/apache/commons/net/nntp/NNTPCommand;->_commands:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
