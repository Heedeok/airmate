.class Lorg/apache/commons/lang/time/FastDateFormat$TextField;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lorg/apache/commons/lang/time/FastDateFormat$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextField"
.end annotation


# instance fields
.field private final mField:I

.field private final mValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .registers 3
    .param p1, "field"    # I
    .param p2, "values"    # [Ljava/lang/String;

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iput p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TextField;->mField:I

    .line 1143
    iput-object p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    .line 1144
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .line 1164
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TextField;->mField:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1165
    return-void
.end method

.method public estimateLength()I
    .registers 4

    .line 1150
    const/4 v0, 0x0

    .line 1151
    .local v0, "max":I
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "i":I
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    .line 1152
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1153
    .local v2, "len":I
    if-le v2, v0, :cond_4

    .line 1154
    move v0, v2

    goto :goto_4

    .line 1157
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_14
    return v0
.end method
