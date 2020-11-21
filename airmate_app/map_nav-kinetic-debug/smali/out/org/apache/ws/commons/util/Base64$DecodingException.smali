.class public Lorg/apache/ws/commons/util/Base64$DecodingException;
.super Ljava/io/IOException;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodingException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d33363934383636L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "pMessage"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
