.class public final Lorg/apache/commons/net/smtp/SMTPReply;
.super Ljava/lang/Object;
.source "SMTPReply.java"


# static fields
.field public static final ACTION_ABORTED:I = 0x1c3

.field public static final ACTION_NOT_TAKEN:I = 0x1c2

.field public static final ACTION_OK:I = 0xfa

.field public static final BAD_COMMAND_SEQUENCE:I = 0x1f7

.field public static final CODE_211:I = 0xd3

.field public static final CODE_214:I = 0xd6

.field public static final CODE_215:I = 0xd7

.field public static final CODE_220:I = 0xdc

.field public static final CODE_221:I = 0xdd

.field public static final CODE_250:I = 0xfa

.field public static final CODE_251:I = 0xfb

.field public static final CODE_354:I = 0x162

.field public static final CODE_421:I = 0x1a5

.field public static final CODE_450:I = 0x1c2

.field public static final CODE_451:I = 0x1c3

.field public static final CODE_452:I = 0x1c4

.field public static final CODE_500:I = 0x1f4

.field public static final CODE_501:I = 0x1f5

.field public static final CODE_502:I = 0x1f6

.field public static final CODE_503:I = 0x1f7

.field public static final CODE_504:I = 0x1f8

.field public static final CODE_550:I = 0x226

.field public static final CODE_551:I = 0x227

.field public static final CODE_552:I = 0x228

.field public static final CODE_553:I = 0x229

.field public static final CODE_554:I = 0x22a

.field public static final COMMAND_NOT_IMPLEMENTED:I = 0x1f6

.field public static final COMMAND_NOT_IMPLEMENTED_FOR_PARAMETER:I = 0x1f8

.field public static final HELP_MESSAGE:I = 0xd6

.field public static final INSUFFICIENT_STORAGE:I = 0x1c4

.field public static final MAILBOX_NAME_NOT_ALLOWED:I = 0x229

.field public static final MAILBOX_UNAVAILABLE:I = 0x226

.field public static final SERVICE_CLOSING_TRANSMISSION_CHANNEL:I = 0xdd

.field public static final SERVICE_NOT_AVAILABLE:I = 0x1a5

.field public static final SERVICE_READY:I = 0xdc

.field public static final START_MAIL_INPUT:I = 0x162

.field public static final STORAGE_ALLOCATION_EXCEEDED:I = 0x228

.field public static final SYNTAX_ERROR_IN_ARGUMENTS:I = 0x1f5

.field public static final SYSTEM_STATUS:I = 0xd3

.field public static final TRANSACTION_FAILED:I = 0x22a

.field public static final UNRECOGNIZED_COMMAND:I = 0x1f4

.field public static final USER_NOT_LOCAL:I = 0x227

.field public static final USER_NOT_LOCAL_WILL_FORWARD:I = 0xfb


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNegativePermanent(I)Z
    .registers 2
    .param p0, "reply"    # I

    .line 164
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

    .line 149
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

    .line 116
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

    .line 134
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

    .line 101
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
