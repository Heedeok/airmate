.class public final Lorg/jboss/netty/util/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final ID:Ljava/lang/String; = "3.5.2.Final-6e80df5"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "3.5.2.Final-6e80df5"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
