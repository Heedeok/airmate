.class public interface abstract Ldiagnostic_msgs/DiagnosticArray;
.super Ljava/lang/Object;
.source "DiagnosticArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This message is used to send diagnostic information about the state of the robot\nHeader header #for timestamp\nDiagnosticStatus[] status # an array of components being reported on"

.field public static final _TYPE:Ljava/lang/String; = "diagnostic_msgs/DiagnosticArray"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
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

.method public abstract setHeader(Lstd_msgs/Header;)V
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
