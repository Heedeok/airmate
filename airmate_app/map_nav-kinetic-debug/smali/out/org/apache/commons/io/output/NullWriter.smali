.class public Lorg/apache/commons/io/output/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"


# static fields
.field public static final NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/commons/io/output/NullWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullWriter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullWriter;->NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 94
    return-void
.end method

.method public flush()V
    .registers 1

    .line 89
    return-void
.end method

.method public write(I)V
    .registers 2
    .param p1, "idx"    # I

    .line 48
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .line 74
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "st"    # I
    .param p3, "end"    # I

    .line 84
    return-void
.end method

.method public write([C)V
    .registers 2
    .param p1, "chr"    # [C

    .line 56
    return-void
.end method

.method public write([CII)V
    .registers 4
    .param p1, "chr"    # [C
    .param p2, "st"    # I
    .param p3, "end"    # I

    .line 66
    return-void
.end method
