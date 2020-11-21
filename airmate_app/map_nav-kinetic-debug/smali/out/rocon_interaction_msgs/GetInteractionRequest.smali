.class public interface abstract Lrocon_interaction_msgs/GetInteractionRequest;
.super Ljava/lang/Object;
.source "GetInteractionRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# For the auto app launcher (used with nfc tag) to get the information\n# about a single interaction.\n\n# We had to trim down the request data given to us by the nfc tag\n# so we use crc32 hashes for uniqueness purposes.\nint32 hash\n\n# The rocon uri of the requester. This is used as a check to\n# ensure the platform is compatible. Disabling for now until we have\n# a real need for this.\n\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/GetInteractionRequest"


# virtual methods
.method public abstract getHash()I
.end method

.method public abstract setHash(I)V
.end method
