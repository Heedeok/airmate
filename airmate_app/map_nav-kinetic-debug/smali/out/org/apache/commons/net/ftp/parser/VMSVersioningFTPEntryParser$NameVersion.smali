.class Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;
.super Ljava/lang/Object;
.source "VMSVersioningFTPEntryParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameVersion"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field versionNumber:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vers"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;->name:Ljava/lang/String;

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser$NameVersion;->versionNumber:I

    .line 107
    return-void
.end method
