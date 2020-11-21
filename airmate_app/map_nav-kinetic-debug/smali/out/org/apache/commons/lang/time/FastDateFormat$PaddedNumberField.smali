.class Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddedNumberField"
.end annotation


# instance fields
.field private final mField:I

.field private final mSize:I


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "size"    # I

    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1269
    const/4 v0, 0x3

    if-lt p2, v0, :cond_b

    .line 1273
    iput p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mField:I

    .line 1274
    iput p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mSize:I

    .line 1275
    return-void

    .line 1271
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .registers 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I

    .line 1295
    const/4 v0, -0x1

    const/16 v1, 0x30

    const/16 v2, 0x64

    if-ge p2, v2, :cond_20

    .line 1296
    iget v2, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mSize:I

    .local v2, "i":I
    :goto_9
    add-int/2addr v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_11

    .line 1297
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 1299
    .end local v2    # "i":I
    :cond_11
    div-int/lit8 v0, p2, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1300
    rem-int/lit8 v0, p2, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_49

    .line 1303
    :cond_20
    const/16 v2, 0x3e8

    if-ge p2, v2, :cond_26

    .line 1304
    const/4 v2, 0x3

    goto :goto_39

    .line 1306
    :cond_26
    if-le p2, v0, :cond_2a

    const/4 v2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    const-string v3, "Negative values should not be possible"

    int-to-long v4, p2

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 1307
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1309
    .local v2, "digits":I
    :goto_39
    iget v3, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mSize:I

    .local v3, "i":I
    :goto_3b
    add-int/2addr v3, v0

    if-lt v3, v2, :cond_42

    .line 1310
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 1312
    .end local v3    # "i":I
    :cond_42
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1314
    .end local v2    # "digits":I
    :goto_49
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .line 1288
    iget v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 1289
    return-void
.end method

.method public estimateLength()I
    .registers 2

    .line 1281
    const/4 v0, 0x4

    return v0
.end method
