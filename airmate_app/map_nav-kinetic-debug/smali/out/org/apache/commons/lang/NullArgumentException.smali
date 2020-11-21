.class public Lorg/apache/commons/lang/NullArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "NullArgumentException.java"


# static fields
.field private static final serialVersionUID:J = 0x104c2a697aac8ad7L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "argName"    # Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p1, :cond_a

    const-string v1, "Argument"

    goto :goto_b

    :cond_a
    move-object v1, p1

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " must not be null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
