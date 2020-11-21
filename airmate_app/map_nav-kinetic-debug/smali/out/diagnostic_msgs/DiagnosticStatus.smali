.class public interface abstract Ldiagnostic_msgs/DiagnosticStatus;
.super Ljava/lang/Object;
.source "DiagnosticStatus.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final ERROR:B = 0x2t

.field public static final OK:B = 0x0t

.field public static final STALE:B = 0x3t

.field public static final WARN:B = 0x1t

.field public static final _DEFINITION:Ljava/lang/String; = "# This message holds the status of an individual component of the robot.\n# \n\n# Possible levels of operations\nbyte OK=0\nbyte WARN=1\nbyte ERROR=2\nbyte STALE=3\n\nbyte level # level of operation enumerated above \nstring name # a description of the test/component reporting\nstring message # a description of the status\nstring hardware_id # a hardware unique string\nKeyValue[] values # an array of values associated with the status\n\n"

.field public static final _TYPE:Ljava/lang/String; = "diagnostic_msgs/DiagnosticStatus"


# virtual methods
.method public abstract getHardwareId()Ljava/lang/String;
.end method

.method public abstract getLevel()B
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldiagnostic_msgs/KeyValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setHardwareId(Ljava/lang/String;)V
.end method

.method public abstract setLevel(B)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setValues(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldiagnostic_msgs/KeyValue;",
            ">;)V"
        }
    .end annotation
.end method
