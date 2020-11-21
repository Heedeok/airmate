.class public interface abstract Lroscpp/GetLoggersResponse;
.super Ljava/lang/Object;
.source "GetLoggersResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "Logger[] loggers"

.field public static final _TYPE:Ljava/lang/String; = "roscpp/GetLoggersResponse"


# virtual methods
.method public abstract getLoggers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lroscpp/Logger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setLoggers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lroscpp/Logger;",
            ">;)V"
        }
    .end annotation
.end method
