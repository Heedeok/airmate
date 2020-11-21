.class public interface abstract Ldiagnostic_msgs/AddDiagnosticsResponse;
.super Ljava/lang/Object;
.source "AddDiagnosticsResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "\n# True if diagnostic aggregator was updated with new diagnostics, False\n# otherwise. A false return value means that either there is a bond in the\n# aggregator which already used the requested namespace, or the initialization\n# of analyzers failed.\nbool success\n\n# Message with additional information about the success or failure\nstring message"

.field public static final _TYPE:Ljava/lang/String; = "diagnostic_msgs/AddDiagnosticsResponse"


# virtual methods
.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getSuccess()Z
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setSuccess(Z)V
.end method
