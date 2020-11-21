.class public final Lorg/apache/commons/net/ftp/FTPReply;
.super Ljava/lang/Object;
.source "FTPReply.java"


# static fields
.field public static final ACTION_ABORTED:I = 0x1c3

.field public static final BAD_COMMAND_SEQUENCE:I = 0x1f7

.field public static final CANNOT_OPEN_DATA_CONNECTION:I = 0x1a9

.field public static final CLOSING_DATA_CONNECTION:I = 0xe2

.field public static final CODE_110:I = 0x6e

.field public static final CODE_120:I = 0x78

.field public static final CODE_125:I = 0x7d

.field public static final CODE_150:I = 0x96

.field public static final CODE_200:I = 0xc8

.field public static final CODE_202:I = 0xca

.field public static final CODE_211:I = 0xd3

.field public static final CODE_212:I = 0xd4

.field public static final CODE_213:I = 0xd5

.field public static final CODE_214:I = 0xd6

.field public static final CODE_215:I = 0xd7

.field public static final CODE_220:I = 0xdc

.field public static final CODE_221:I = 0xdd

.field public static final CODE_225:I = 0xe1

.field public static final CODE_226:I = 0xe2

.field public static final CODE_227:I = 0xe3

.field public static final CODE_230:I = 0xe6

.field public static final CODE_234:I = 0xea

.field public static final CODE_235:I = 0xeb

.field public static final CODE_250:I = 0xfa

.field public static final CODE_257:I = 0x101

.field public static final CODE_331:I = 0x14b

.field public static final CODE_332:I = 0x14c

.field public static final CODE_334:I = 0x14e

.field public static final CODE_335:I = 0x14f

.field public static final CODE_350:I = 0x15e

.field public static final CODE_421:I = 0x1a5

.field public static final CODE_425:I = 0x1a9

.field public static final CODE_426:I = 0x1aa

.field public static final CODE_431:I = 0x1af

.field public static final CODE_450:I = 0x1c2

.field public static final CODE_451:I = 0x1c3

.field public static final CODE_452:I = 0x1c4

.field public static final CODE_500:I = 0x1f4

.field public static final CODE_501:I = 0x1f5

.field public static final CODE_502:I = 0x1f6

.field public static final CODE_503:I = 0x1f7

.field public static final CODE_504:I = 0x1f8

.field public static final CODE_521:I = 0x209

.field public static final CODE_530:I = 0x212

.field public static final CODE_532:I = 0x214

.field public static final CODE_533:I = 0x215

.field public static final CODE_534:I = 0x216

.field public static final CODE_535:I = 0x217

.field public static final CODE_536:I = 0x218

.field public static final CODE_550:I = 0x226

.field public static final CODE_551:I = 0x227

.field public static final CODE_552:I = 0x228

.field public static final CODE_553:I = 0x229

.field public static final COMMAND_IS_SUPERFLUOUS:I = 0xca

.field public static final COMMAND_NOT_IMPLEMENTED:I = 0x1f6

.field public static final COMMAND_NOT_IMPLEMENTED_FOR_PARAMETER:I = 0x1f8

.field public static final COMMAND_OK:I = 0xc8

.field public static final DATA_CONNECTION_ALREADY_OPEN:I = 0x7d

.field public static final DATA_CONNECTION_OPEN:I = 0xe1

.field public static final DENIED_FOR_POLICY_REASONS:I = 0x215

.field public static final DIRECTORY_STATUS:I = 0xd4

.field public static final ENTERING_PASSIVE_MODE:I = 0xe3

.field public static final FAILED_SECURITY_CHECK:I = 0x217

.field public static final FILE_ACTION_NOT_TAKEN:I = 0x1c2

.field public static final FILE_ACTION_OK:I = 0xfa

.field public static final FILE_ACTION_PENDING:I = 0x15e

.field public static final FILE_NAME_NOT_ALLOWED:I = 0x229

.field public static final FILE_STATUS:I = 0xd5

.field public static final FILE_STATUS_OK:I = 0x96

.field public static final FILE_UNAVAILABLE:I = 0x226

.field public static final HELP_MESSAGE:I = 0xd6

.field public static final INSUFFICIENT_STORAGE:I = 0x1c4

.field public static final NAME_SYSTEM_TYPE:I = 0xd7

.field public static final NEED_ACCOUNT:I = 0x14c

.field public static final NEED_ACCOUNT_FOR_STORING_FILES:I = 0x214

.field public static final NEED_PASSWORD:I = 0x14b

.field public static final NOT_LOGGED_IN:I = 0x212

.field public static final PAGE_TYPE_UNKNOWN:I = 0x227

.field public static final PATHNAME_CREATED:I = 0x101

.field public static final REQUESTED_PROT_LEVEL_NOT_SUPPORTED:I = 0x218

.field public static final REQUEST_DENIED:I = 0x216

.field public static final RESTART_MARKER:I = 0x6e

.field public static final SECURITY_DATA_EXCHANGE_COMPLETE:I = 0xea

.field public static final SECURITY_DATA_EXCHANGE_SUCCESSFULLY:I = 0xeb

.field public static final SECURITY_DATA_IS_ACCEPTABLE:I = 0x14f

.field public static final SECURITY_MECHANISM_IS_OK:I = 0x14e

.field public static final SERVICE_CLOSING_CONTROL_CONNECTION:I = 0xdd

.field public static final SERVICE_NOT_AVAILABLE:I = 0x1a5

.field public static final SERVICE_NOT_READY:I = 0x78

.field public static final SERVICE_READY:I = 0xdc

.field public static final STORAGE_ALLOCATION_EXCEEDED:I = 0x228

.field public static final SYNTAX_ERROR_IN_ARGUMENTS:I = 0x1f5

.field public static final SYSTEM_STATUS:I = 0xd3

.field public static final TRANSFER_ABORTED:I = 0x1aa

.field public static final UNAVAILABLE_RESOURCE:I = 0x1af

.field public static final UNRECOGNIZED_COMMAND:I = 0x1f4

.field public static final USER_LOGGED_IN:I = 0xe6


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNegativePermanent(I)Z
    .registers 2
    .param p0, "reply"    # I

    .line 237
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_a

    const/16 v0, 0x258

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isNegativeTransient(I)Z
    .registers 2
    .param p0, "reply"    # I

    .line 222
    const/16 v0, 0x190

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isPositiveCompletion(I)Z
    .registers 2
    .param p0, "reply"    # I

    .line 189
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isPositiveIntermediate(I)Z
    .registers 2
    .param p0, "reply"    # I

    .line 207
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x190

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isPositivePreliminary(I)Z
    .registers 2
    .param p0, "reply"    # I

    .line 174
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
