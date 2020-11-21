.class public interface abstract Lrocon_interaction_msgs/GetInteractions;
.super Ljava/lang/Object;
.source "GetInteractions.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# For remocons who need to retrieve a filtered list of interactions\n# appropriate to the role and platform they will run for/on. \n\n# Filter according to roles. If not specified it will return \n# interactions for all roles.\nstring[] roles\n\n# Filter according to the rocon uri of the requesting device. T\n# If not specified, the manager will assume \'rocon://\' (wildcards)\nstring uri\n---\nInteraction[] interactions\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/GetInteractions"
