.class public final Lorg/jboss/netty/util/internal/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final NEWLINE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 32
    const/4 v0, 0x0

    .line 35
    .local v0, "newLine":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    const-string v2, "%n"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    move-object v0, v1

    .line 38
    goto :goto_18

    .line 36
    :catch_15
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "\n"

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_18
    sput-object v0, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 41
    .end local v0    # "newLine":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static stripControlCharacters(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/StringUtil;->stripControlCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripControlCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const/4 v0, 0x0

    .line 78
    .local v0, "hasControlChars":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1c

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 80
    const/4 v0, 0x1

    .line 81
    goto :goto_1c

    .line 78
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 85
    .end local v1    # "i":I
    :cond_1c
    :goto_1c
    if-nez v0, :cond_1f

    .line 86
    return-object p0

    .line 89
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 93
    .local v3, "i":I
    :goto_2a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 94
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 95
    goto :goto_3e

    .line 93
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 101
    :cond_3e
    :goto_3e
    nop

    .line 102
    .local v2, "suppressingControlChars":Z
    :goto_3f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_63

    .line 103
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 104
    const/4 v2, 0x1

    .line 105
    goto :goto_60

    .line 107
    :cond_51
    if-eqz v2, :cond_59

    .line 108
    const/4 v2, 0x0

    .line 109
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_59
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 115
    :cond_63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
