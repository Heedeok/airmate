.class Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/lang/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang/text/StrBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 2679
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2678
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    .line 2680
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 2685
    return-void
.end method

.method public flush()V
    .registers 1

    .line 2690
    return-void
.end method

.method public write(I)V
    .registers 4
    .param p1, "c"    # I

    .line 2694
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2695
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 2709
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2710
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 2714
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2715
    return-void
.end method

.method public write([C)V
    .registers 3
    .param p1, "cbuf"    # [C

    .line 2699
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append([C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2700
    return-void
.end method

.method public write([CII)V
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 2704
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2705
    return-void
.end method
