.class public interface abstract Lrocon_interaction_msgs/SetInteractions;
.super Ljava/lang/Object;
.source "SetInteractions.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Extend or delete the rocon interactions database with this list. \n\nInteraction[] interactions\n\n# If true, load, else attempt to unload them.\nbool load\n\n---\n\nbool result\n\n# Could use better error handling here - provide a list of what got\n# got manipulated and what did not.\n\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/SetInteractions"
