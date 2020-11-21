.class Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field decodedChars:[C

.field pendingHighSurrogate:I

.field final synthetic this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;Ljava/lang/Appendable;)V
    .registers 3

    .line 288
    iput-object p1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    iput-object p2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 p1, -0x1

    iput p1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 290
    const/4 p1, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->decodedChars:[C

    return-void
.end method

.method private outputChars([CI)V
    .registers 6
    .param p1, "chars"    # [C
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-ge v0, p2, :cond_d

    .line 411
    iget-object v1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    aget-char v2, p1, v0

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    .end local v0    # "n":I
    :cond_d
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .registers 6
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget v0, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4e

    .line 377
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 382
    iget-object v0, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    iget v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v2, v2

    invoke-static {v2, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 383
    .local v0, "escaped":[C
    if-eqz v0, :cond_1f

    .line 384
    array-length v2, v0

    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_2c

    .line 386
    :cond_1f
    iget-object v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget v3, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v3, v3

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 387
    iget-object v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 389
    :goto_2c
    iput v1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 390
    .end local v0    # "escaped":[C
    goto :goto_6f

    .line 378
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected low surrogate character but got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_4e
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 392
    iput p1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    goto :goto_6f

    .line 394
    :cond_57
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_70

    .line 399
    iget-object v0, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 400
    .restart local v0    # "escaped":[C
    if-eqz v0, :cond_6a

    .line 401
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_6f

    .line 403
    :cond_6a
    iget-object v1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 406
    .end local v0    # "escaped":[C
    :goto_6f
    return-object p0

    .line 395
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected low surrogate character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 11
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    move v0, p2

    .line 298
    .local v0, "index":I
    if-ge v0, p3, :cond_8d

    .line 305
    move v1, v0

    .line 306
    .local v1, "unescapedChunkStart":I
    iget v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4e

    .line 310
    add-int/lit8 v2, v0, 0x1

    .local v2, "index":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 311
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 315
    iget-object v4, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    iget v5, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v5, v5

    invoke-static {v5, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v4

    .line 317
    .local v4, "escaped":[C
    if-eqz v4, :cond_2b

    .line 321
    array-length v5, v4

    invoke-direct {p0, v4, v5}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 328
    :cond_2b
    iget-object v5, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget v6, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v6, v6

    invoke-interface {v5, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 330
    :goto_33
    iput v3, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 335
    move v0, v2

    goto :goto_4e

    .line 312
    .end local v4    # "escaped":[C
    :cond_37
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected low surrogate character but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
    .end local v2    # "index":I
    .local v0, "index":I
    :cond_4e
    :goto_4e
    iget-object v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    invoke-virtual {v2, p1, v0, p3}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 336
    if-le v0, v1, :cond_5b

    .line 337
    iget-object v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v2, p1, v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 339
    :cond_5b
    if-ne v0, p3, :cond_5e

    .line 340
    goto :goto_8d

    .line 344
    :cond_5e
    invoke-static {p1, v0, p3}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 345
    .local v2, "cp":I
    if-gez v2, :cond_68

    .line 349
    neg-int v3, v2

    iput v3, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 350
    goto :goto_8d

    .line 353
    :cond_68
    iget-object v3, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v3

    .line 354
    .local v3, "escaped":[C
    if-eqz v3, :cond_75

    .line 355
    array-length v4, v3

    invoke-direct {p0, v3, v4}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_81

    .line 360
    :cond_75
    iget-object v4, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->decodedChars:[C

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v4

    .line 361
    .local v4, "len":I
    iget-object v5, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->decodedChars:[C

    invoke-direct {p0, v5, v4}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    .line 365
    .end local v4    # "len":I
    :goto_81
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_89

    const/4 v4, 0x2

    goto :goto_8a

    :cond_89
    const/4 v4, 0x1

    :goto_8a
    add-int/2addr v0, v4

    .line 366
    move v1, v0

    .line 367
    .end local v2    # "cp":I
    .end local v3    # "escaped":[C
    goto :goto_4e

    .line 369
    .end local v1    # "unescapedChunkStart":I
    :cond_8d
    :goto_8d
    return-object p0
.end method
