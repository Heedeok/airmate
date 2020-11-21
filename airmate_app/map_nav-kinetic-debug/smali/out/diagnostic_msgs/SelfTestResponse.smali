.class public interface abstract Ldiagnostic_msgs/SelfTestResponse;
.super Ljava/lang/Object;
.source "SelfTestResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "string id\nbyte passed\nDiagnosticStatus[] status"

.field public static final _TYPE:Ljava/lang/String; = "diagnostic_msgs/SelfTestResponse"


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPassed()B
.end method

.method public abstract getStatus()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldiagnostic_msgs/DiagnosticStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setPassed(B)V
.end method

.method public abstract setStatus(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldiagnostic_msgs/DiagnosticStatus;",
            ">;)V"
        }
    .end annotation
.end method
