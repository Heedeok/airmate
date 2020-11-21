.class public abstract Lorg/apache/ws/commons/util/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Encoder"
.end annotation


# instance fields
.field private final charBuffer:[C

.field private charOffset:I

.field private lineChars:I

.field private num:I

.field private numBytes:I

.field private final sep:Ljava/lang/String;

.field private final skipChars:I

.field private final wrapSize:I


# direct methods
.method protected constructor <init>([CILjava/lang/String;)V
    .registers 7
    .param p1, "pBuffer"    # [C
    .param p2, "pWrapSize"    # I
    .param p3, "pSep"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    .line 129
    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    .line 130
    if-nez p3, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    const-string v1, "\n"

    :goto_e
    iput-object v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->sep:Ljava/lang/String;

    .line 131
    const/4 v1, 0x4

    if-nez p2, :cond_15

    const/4 v2, 0x4

    goto :goto_1c

    :cond_15
    iget-object v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->sep:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    :goto_1c
    iput v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    .line 132
    iget v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    if-ne v2, v1, :cond_23

    goto :goto_24

    :cond_23
    move v0, p2

    :goto_24
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    .line 133
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    if-ltz v0, :cond_57

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    rem-int/2addr v0, v1

    if-gtz v0, :cond_57

    .line 137
    array-length v0, p1

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    if-lt v0, v1, :cond_35

    .line 141
    return-void

    .line 138
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The buffer must contain at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " characters, but has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal argument for wrap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "(Expected nonnegative multiple of 4)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private wrap()V
    .registers 6

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->sep:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 152
    iget-object v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    iget-object v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->sep:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 154
    .end local v1    # "j":I
    :cond_1d
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    .line 155
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    const/4 v1, 0x0

    if-lez v0, :cond_9f

    .line 195
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4b

    .line 196
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v5, v5, 0x2

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 197
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 198
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    aput-char v2, v0, v3

    .line 199
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    aput-char v2, v0, v3

    .line 200
    goto :goto_95

    .line 201
    :cond_4b
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v5, v5, 0xa

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 202
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 203
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 204
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    aput-char v2, v0, v3

    .line 206
    :goto_95
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    .line 207
    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    .line 208
    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    .line 210
    :cond_9f
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    if-lez v0, :cond_aa

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    if-lez v0, :cond_aa

    .line 211
    invoke-direct {p0}, Lorg/apache/ws/commons/util/Base64$Encoder;->wrap()V

    .line 213
    :cond_aa
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    if-lez v0, :cond_b7

    .line 214
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/ws/commons/util/Base64$Encoder;->writeBuffer([CII)V

    .line 215
    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    .line 217
    :cond_b7
    return-void
.end method

.method public write([BII)V
    .registers 11
    .param p1, "pBuffer"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    .local v1, "pOffset":I
    .local p2, "i":I
    :goto_3
    if-ge p2, p3, :cond_a0

    .line 166
    add-int/lit8 v2, v1, 0x1

    .local v2, "pOffset":I
    aget-byte v1, p1, v1

    .line 167
    .local v1, "b":I
    if-gez v1, :cond_d

    add-int/lit16 v1, v1, 0x100

    .line 168
    :cond_d
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    .line 169
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9b

    .line 170
    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v5

    iget v6, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v6, v6, 0x12

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 171
    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v5

    iget v6, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 172
    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v5

    iget v6, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 173
    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v5

    iget v6, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 174
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    if-lez v3, :cond_84

    .line 175
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    .line 176
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    if-lt v3, v4, :cond_84

    .line 177
    invoke-direct {p0}, Lorg/apache/ws/commons/util/Base64$Encoder;->wrap()V

    .line 180
    :cond_84
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    .line 181
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    .line 182
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    array-length v4, v4

    if-le v3, v4, :cond_9b

    .line 183
    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-virtual {p0, v3, v0, v4}, Lorg/apache/ws/commons/util/Base64$Encoder;->writeBuffer([CII)V

    .line 184
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    .line 165
    .end local v1    # "b":I
    :cond_9b
    add-int/lit8 p2, p2, 0x1

    move v1, v2

    goto/16 :goto_3

    .line 188
    .end local v2    # "pOffset":I
    .end local p2    # "i":I
    .local v1, "pOffset":I
    :cond_a0
    return-void
.end method

.method protected abstract writeBuffer([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
