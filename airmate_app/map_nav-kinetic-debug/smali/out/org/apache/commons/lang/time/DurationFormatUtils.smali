.class public Lorg/apache/commons/lang/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/Object;

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 476
    const-string v0, "y"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    .line 477
    const-string v0, "M"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    .line 478
    const-string v0, "d"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    .line 479
    const-string v0, "H"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    .line 480
    const-string v0, "m"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    .line 481
    const-string v0, "s"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    .line 482
    const-string v0, "S"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static format([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;
    .registers 20
    .param p0, "tokens"    # [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I
    .param p4, "hours"    # I
    .param p5, "minutes"    # I
    .param p6, "seconds"    # I
    .param p7, "milliseconds"    # I
    .param p8, "padWithZeros"    # Z

    .line 423
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 424
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 425
    .local v2, "lastOutputSeconds":Z
    array-length v3, v0

    .line 426
    .local v3, "sz":I
    const/4 v4, 0x0

    move v5, v2

    move/from16 v2, p7

    .end local p7    # "milliseconds":I
    .local v2, "milliseconds":I
    .local v4, "i":I
    .local v5, "lastOutputSeconds":Z
    :goto_c
    if-ge v4, v3, :cond_f1

    .line 427
    aget-object v6, v0, v4

    .line 428
    .local v6, "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    invoke-virtual {v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 429
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getCount()I

    move-result v8

    .line 430
    .local v8, "count":I
    instance-of v9, v7, Ljava/lang/StringBuffer;

    if-eqz v9, :cond_25

    .line 431
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ed

    .line 433
    :cond_25
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    const/16 v10, 0x30

    if-ne v7, v9, :cond_40

    .line 434
    if-eqz p8, :cond_36

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    goto :goto_3a

    :cond_36
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :goto_3a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const/4 v5, 0x0

    goto/16 :goto_ed

    .line 437
    :cond_40
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    if-ne v7, v9, :cond_59

    .line 438
    if-eqz p8, :cond_4f

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    goto :goto_53

    :cond_4f
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :goto_53
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const/4 v5, 0x0

    goto/16 :goto_ed

    .line 441
    :cond_59
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    if-ne v7, v9, :cond_72

    .line 442
    if-eqz p8, :cond_68

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    goto :goto_6c

    :cond_68
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :goto_6c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    const/4 v5, 0x0

    goto/16 :goto_ed

    .line 445
    :cond_72
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    if-ne v7, v9, :cond_8a

    .line 446
    if-eqz p8, :cond_81

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    goto :goto_85

    :cond_81
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :goto_85
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    const/4 v5, 0x0

    goto :goto_ed

    .line 449
    :cond_8a
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    if-ne v7, v9, :cond_a2

    .line 450
    if-eqz p8, :cond_99

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    goto :goto_9d

    :cond_99
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :goto_9d
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const/4 v5, 0x0

    goto :goto_ed

    .line 453
    :cond_a2
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    if-ne v7, v9, :cond_ba

    .line 454
    if-eqz p8, :cond_b1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    goto :goto_b5

    :cond_b1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :goto_b5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    const/4 v5, 0x1

    goto :goto_ed

    .line 457
    :cond_ba
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    if-ne v7, v9, :cond_ed

    .line 458
    if-eqz v5, :cond_da

    .line 459
    add-int/lit16 v2, v2, 0x3e8

    .line 460
    if-eqz p8, :cond_cd

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    goto :goto_d1

    :cond_cd
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 463
    .local v9, "str":Ljava/lang/String;
    :goto_d1
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ec

    .line 465
    .end local v9    # "str":Ljava/lang/String;
    :cond_da
    if-eqz p8, :cond_e5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    goto :goto_e9

    :cond_e5
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :goto_e9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :goto_ec
    const/4 v5, 0x0

    .line 426
    .end local v6    # "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "count":I
    :cond_ed
    :goto_ed
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 473
    .end local v4    # "i":I
    :cond_f1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .registers 21
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "padWithZeros"    # Z

    .line 129
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    move-result-object v9

    .line 131
    .local v9, "tokens":[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    const/4 v2, 0x0

    .line 132
    .local v2, "days":I
    const/4 v3, 0x0

    .line 133
    .local v3, "hours":I
    const/4 v4, 0x0

    .line 134
    .local v4, "minutes":I
    const/4 v5, 0x0

    .line 135
    .local v5, "seconds":I
    const/4 v6, 0x0

    .line 137
    .local v6, "milliseconds":I
    sget-object v7, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v9, v7}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 138
    const-wide/32 v7, 0x5265c00

    div-long v10, p0, v7

    long-to-int v2, v10

    .line 139
    int-to-long v10, v2

    mul-long v10, v10, v7

    sub-long v0, p0, v10

    goto :goto_1f

    .line 141
    :cond_1d
    move-wide/from16 v0, p0

    .end local v2    # "days":I
    .end local p0    # "durationMillis":J
    .local v0, "durationMillis":J
    .local v10, "days":I
    :goto_1f
    move v10, v2

    sget-object v2, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v9, v2}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 142
    const-wide/32 v7, 0x36ee80

    div-long v11, v0, v7

    long-to-int v2, v11

    .line 143
    .end local v3    # "hours":I
    .local v2, "hours":I
    int-to-long v11, v2

    mul-long v11, v11, v7

    sub-long/2addr v0, v11

    .line 145
    move v11, v2

    goto :goto_35

    .end local v2    # "hours":I
    .restart local v3    # "hours":I
    :cond_34
    move v11, v3

    .end local v3    # "hours":I
    .local v11, "hours":I
    :goto_35
    sget-object v2, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v9, v2}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 146
    const-wide/32 v2, 0xea60

    div-long v7, v0, v2

    long-to-int v4, v7

    .line 147
    int-to-long v7, v4

    mul-long v7, v7, v2

    sub-long/2addr v0, v7

    .line 149
    .end local v4    # "minutes":I
    .local v12, "minutes":I
    :cond_47
    move v12, v4

    sget-object v2, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v9, v2}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 150
    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    long-to-int v4, v7

    .line 151
    .end local v5    # "seconds":I
    .local v4, "seconds":I
    int-to-long v7, v4

    mul-long v7, v7, v2

    sub-long/2addr v0, v7

    .line 153
    move-wide v13, v0

    move v15, v4

    goto :goto_5e

    .end local v4    # "seconds":I
    .restart local v5    # "seconds":I
    :cond_5c
    move-wide v13, v0

    move v15, v5

    .end local v0    # "durationMillis":J
    .end local v5    # "seconds":I
    .local v13, "durationMillis":J
    .local v15, "seconds":I
    :goto_5e
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 154
    long-to-int v0, v13

    .line 157
    move/from16 v16, v0

    goto :goto_6c

    :cond_6a
    move/from16 v16, v6

    .end local v6    # "milliseconds":I
    .local v16, "milliseconds":I
    :goto_6c
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, p3

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/lang/time/DurationFormatUtils;->format([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .registers 3
    .param p0, "durationMillis"    # J

    .line 81
    const-string v0, "H:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .registers 4
    .param p0, "durationMillis"    # J

    .line 96
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .registers 8
    .param p0, "durationMillis"    # J
    .param p2, "suppressLeadingZeroElements"    # Z
    .param p3, "suppressTrailingZeroElements"    # Z

    .line 179
    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "duration":Ljava/lang/String;
    if-eqz p2, :cond_65

    .line 182
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, " 0 days"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5a

    .line 185
    move-object v0, v1

    .line 186
    const-string v2, " 0 hours"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5a

    .line 188
    move-object v0, v1

    .line 189
    const-string v2, " 0 minutes"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    move-object v0, v1

    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5a

    .line 192
    const-string v2, " 0 seconds"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_65

    .line 198
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_65
    if-eqz p3, :cond_a7

    .line 202
    const-string v1, " 0 seconds"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1    # "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a7

    .line 204
    move-object v0, v1

    .line 205
    const-string v2, " 0 minutes"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a7

    .line 207
    move-object v0, v1

    .line 208
    const-string v2, " 0 hours"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a7

    .line 210
    const-string v2, " 0 days"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_a7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, " 1 seconds"

    const-string v2, " 1 second"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, " 1 minutes"

    const-string v2, " 1 minute"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, " 1 hours"

    const-string v2, " 1 hour"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v1, " 1 days"

    const-string v2, " 1 day"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;

    .line 248
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const/4 v5, 0x1

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 30
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "padWithZeros"    # Z
    .param p6, "timezone"    # Ljava/util/TimeZone;

    .line 283
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    move-result-object v9

    .line 287
    .local v9, "tokens":[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v10

    .line 288
    .local v10, "start":Ljava/util/Calendar;
    new-instance v0, Ljava/util/Date;

    move-wide/from16 v11, p0

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 289
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v13

    .line 290
    .local v13, "end":Ljava/util/Calendar;
    new-instance v0, Ljava/util/Date;

    move-wide/from16 v14, p2

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 293
    const/16 v0, 0xe

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 294
    .local v1, "milliseconds":I
    const/16 v0, 0xd

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    .line 295
    .local v2, "seconds":I
    const/16 v0, 0xc

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v3, v0

    .line 296
    .local v3, "minutes":I
    const/16 v0, 0xb

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v4, v0

    .line 297
    .local v4, "hours":I
    const/4 v0, 0x5

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v5, v6

    .line 298
    .local v5, "days":I
    const/4 v6, 0x2

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 299
    .local v7, "months":I
    const/4 v8, 0x1

    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v17

    sub-int v16, v16, v17

    .line 302
    .local v16, "years":I
    :goto_6b
    if-gez v1, :cond_72

    .line 303
    add-int/lit16 v1, v1, 0x3e8

    .line 304
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    .line 306
    :cond_72
    :goto_72
    if-gez v2, :cond_79

    .line 307
    add-int/lit8 v2, v2, 0x3c

    .line 308
    add-int/lit8 v3, v3, -0x1

    goto :goto_72

    .line 310
    :cond_79
    :goto_79
    if-gez v3, :cond_80

    .line 311
    add-int/lit8 v3, v3, 0x3c

    .line 312
    add-int/lit8 v4, v4, -0x1

    goto :goto_79

    .line 314
    :cond_80
    :goto_80
    if-gez v4, :cond_87

    .line 315
    add-int/lit8 v4, v4, 0x18

    .line 316
    add-int/lit8 v5, v5, -0x1

    goto :goto_80

    .line 319
    :cond_87
    sget-object v6, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-static {v9, v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 320
    :goto_8f
    if-gez v5, :cond_9d

    .line 321
    invoke-virtual {v10, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 322
    add-int/lit8 v7, v7, -0x1

    .line 323
    const/4 v6, 0x2

    invoke-virtual {v10, v6, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_8f

    .line 326
    :cond_9d
    :goto_9d
    if-gez v7, :cond_a4

    .line 327
    add-int/lit8 v7, v7, 0xc

    .line 328
    add-int/lit8 v16, v16, -0x1

    goto :goto_9d

    .line 331
    :cond_a4
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    if-eqz v16, :cond_b6

    .line 332
    :goto_ae
    if-eqz v16, :cond_b6

    .line 333
    mul-int/lit8 v0, v16, 0xc

    add-int/2addr v7, v0

    .line 334
    const/16 v16, 0x0

    goto :goto_ae

    .line 386
    :cond_b6
    move/from16 v17, v7

    goto/16 :goto_132

    .line 340
    :cond_ba
    sget-object v6, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v9, v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_109

    .line 341
    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 342
    .local v6, "target":I
    if-gez v7, :cond_ca

    .line 344
    add-int/lit8 v6, v6, -0x1

    .line 347
    :cond_ca
    :goto_ca
    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, v6, :cond_105

    .line 348
    const/4 v0, 0x6

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v17

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    sub-int v17, v17, v20

    add-int v5, v5, v17

    .line 351
    instance-of v0, v10, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_f6

    .line 352
    move/from16 v22, v6

    const/4 v0, 0x2

    .end local v6    # "target":I
    .local v22, "target":I
    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v8, :cond_f8

    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v0, 0x1d

    if-ne v6, v0, :cond_f8

    .line 355
    add-int/lit8 v5, v5, 0x1

    goto :goto_f8

    .line 359
    .end local v22    # "target":I
    .restart local v6    # "target":I
    :cond_f6
    move/from16 v22, v6

    .end local v6    # "target":I
    .restart local v22    # "target":I
    :cond_f8
    :goto_f8
    invoke-virtual {v10, v8, v8}, Ljava/util/Calendar;->add(II)V

    .line 361
    const/4 v0, 0x6

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 347
    move/from16 v6, v22

    const/4 v0, 0x5

    goto :goto_ca

    .line 364
    .end local v22    # "target":I
    .restart local v6    # "target":I
    :cond_105
    move/from16 v22, v6

    .end local v6    # "target":I
    .restart local v22    # "target":I
    const/16 v16, 0x0

    .line 367
    .end local v22    # "target":I
    :cond_109
    :goto_109
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v6, v8, :cond_11f

    .line 368
    const/4 v6, 0x5

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 369
    const/4 v8, 0x1

    invoke-virtual {v10, v0, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_109

    .line 372
    :cond_11f
    const/4 v6, 0x5

    const/4 v0, 0x0

    .line 374
    .end local v7    # "months":I
    .local v0, "months":I
    :goto_121
    if-gez v5, :cond_130

    .line 375
    invoke-virtual {v10, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 376
    add-int/lit8 v0, v0, -0x1

    .line 377
    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual {v10, v8, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_121

    .line 386
    :cond_130
    move/from16 v17, v0

    .end local v0    # "months":I
    .local v17, "months":I
    :goto_132
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_141

    .line 387
    mul-int/lit8 v0, v5, 0x18

    add-int/2addr v4, v0

    .line 388
    const/4 v0, 0x0

    .line 390
    move/from16 v18, v0

    goto :goto_143

    :cond_141
    move/from16 v18, v5

    .end local v5    # "days":I
    .local v18, "days":I
    :goto_143
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 391
    mul-int/lit8 v0, v4, 0x3c

    add-int/2addr v3, v0

    .line 392
    const/4 v0, 0x0

    .line 394
    move/from16 v19, v0

    goto :goto_154

    :cond_152
    move/from16 v19, v4

    .end local v4    # "hours":I
    .local v19, "hours":I
    :goto_154
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_163

    .line 395
    mul-int/lit8 v0, v3, 0x3c

    add-int/2addr v2, v0

    .line 396
    const/4 v0, 0x0

    .line 398
    move/from16 v20, v0

    goto :goto_165

    :cond_163
    move/from16 v20, v3

    .end local v3    # "minutes":I
    .local v20, "minutes":I
    :goto_165
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_176

    .line 399
    mul-int/lit16 v0, v2, 0x3e8

    add-int/2addr v1, v0

    .line 400
    const/4 v0, 0x0

    .line 403
    move/from16 v21, v0

    move/from16 v22, v1

    goto :goto_17a

    :cond_176
    move/from16 v22, v1

    move/from16 v21, v2

    .end local v1    # "milliseconds":I
    .end local v2    # "seconds":I
    .local v21, "seconds":I
    .local v22, "milliseconds":I
    :goto_17a
    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/lang/time/DurationFormatUtils;->format([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .registers 11
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J

    .line 235
    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .registers 11
    .param p0, "format"    # Ljava/lang/String;

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 492
    .local v0, "array":[C
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 494
    .local v1, "list":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 495
    .local v2, "inLiteral":Z
    const/4 v3, 0x0

    .line 496
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 497
    .local v4, "previous":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    array-length v5, v0

    .line 498
    .local v5, "sz":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_f
    if-ge v6, v5, :cond_97

    .line 499
    aget-char v7, v0, v6

    .line 500
    .local v7, "ch":C
    const/16 v8, 0x27

    if-eqz v2, :cond_1e

    if-eq v7, v8, :cond_1e

    .line 501
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 502
    goto/16 :goto_93

    .line 504
    :cond_1e
    const/4 v9, 0x0

    .line 505
    .local v9, "value":Ljava/lang/Object;
    if-eq v7, v8, :cond_66

    const/16 v8, 0x48

    if-eq v7, v8, :cond_63

    const/16 v8, 0x4d

    if-eq v7, v8, :cond_60

    const/16 v8, 0x53

    if-eq v7, v8, :cond_5d

    const/16 v8, 0x64

    if-eq v7, v8, :cond_5a

    const/16 v8, 0x6d

    if-eq v7, v8, :cond_57

    const/16 v8, 0x73

    if-eq v7, v8, :cond_54

    const/16 v8, 0x79

    if-eq v7, v8, :cond_51

    .line 525
    if-nez v3, :cond_4d

    .line 526
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v8

    .line 527
    new-instance v8, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-direct {v8, v3}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_4d
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7b

    .line 517
    :cond_51
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    goto :goto_7b

    .line 522
    :cond_54
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    goto :goto_7b

    .line 521
    :cond_57
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    goto :goto_7b

    .line 519
    :cond_5a
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    goto :goto_7b

    .line 523
    :cond_5d
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    goto :goto_7b

    .line 518
    :cond_60
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    goto :goto_7b

    .line 520
    :cond_63
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    goto :goto_7b

    .line 508
    :cond_66
    if-eqz v2, :cond_6b

    .line 509
    const/4 v3, 0x0

    .line 510
    const/4 v2, 0x0

    goto :goto_7b

    .line 512
    :cond_6b
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v8

    .line 513
    new-instance v8, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-direct {v8, v3}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    const/4 v2, 0x1

    .line 516
    nop

    .line 532
    :goto_7b
    if-eqz v9, :cond_93

    .line 533
    if-eqz v4, :cond_89

    invoke-virtual {v4}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v9, :cond_89

    .line 534
    invoke-virtual {v4}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->increment()V

    goto :goto_92

    .line 536
    :cond_89
    new-instance v8, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-direct {v8, v9}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 537
    .local v8, "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    move-object v4, v8

    .line 540
    .end local v8    # "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    :goto_92
    const/4 v3, 0x0

    .line 498
    .end local v7    # "ch":C
    .end local v9    # "value":Ljava/lang/Object;
    :cond_93
    :goto_93
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    .line 543
    .end local v6    # "i":I
    :cond_97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    return-object v6
.end method
