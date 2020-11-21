.class public interface abstract Lrocon_interaction_msgs/Interaction;
.super Ljava/lang/Object;
.source "Interaction.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final UNLIMITED_INTERACTIONS:I = -0x1

.field public static final _DEFINITION:Ljava/lang/String; = "###############################################################\n# Non-modifiable Specifications\n###############################################################\n# These should be stored in a meta-repository somewhere.\n#\n# Name of the interaction. This should be the string\n# required to install and execute the application on the remocon\'s\n# end. e.g. for android app this will be an intent action name such as\n# com.github.rosjava.android_apps.listener.Listener, while for\n# a web app it will be its URL.\nstring name\n\n# A rocon uri string denoting the platforms this interaction\n# is compatible with\nstring compatibility\n\n###############################################################\n# Variable Specifications\n###############################################################\n\n# User friendly version of the name. Useful to be customised\n# differently from the name for either 1) branding, or 2) because\n# some names are complicated visually (e.g. android names).\nstring display_name\n \n# Should be a default for the interaction, but sometimes useful to\n# override it to provide more human friendly information.\nstring description\n\n# The namespace that this interaction will be associated\n# with. Interfaces from the interaction will be automatically pushed\n# into this namespace (for concerts it will be typically\n# used by the services to push interfaces into /services/_service_name_).\n# It is up to the user to make sure this is unique to avoid\n# potential conflicts.\nstring namespace\n\n# Again, should exist a default, but may want to override it.\nrocon_std_msgs/Icon icon\n\n# Any remappings that need to be applied\nrocon_std_msgs/Remapping[] remappings\n\n# Yaml string representing parameters for the interaction\nstring parameters\n\n# Maximum number of permitted connections (-1 = any)\nint32 UNLIMITED_INTERACTIONS = -1\nint32 max\n\n# The configuration for a pairing if this interaction is to be paired\n# with a rapp. If not, it should be left unfilled.\nPairing pairing\n\n###############################################################\n# Parameters finalised by the interactions manager\n###############################################################\n\n# This is a crc32 hash code for the service-role-name\n# unique string that identifies this interaction.\n# crc32 gets a few collisions, so we should be careful of that.\n# It is used by the nfc android auto-launching program so we can\n# compactify the request in the url sent by the nfc to the autolauncher.\nint32 hash\n\n# The role this solution has configured the interaction for. This is in\n# some use cases redundant, and in other use cases essential (e.g.\n# headless launcher)\nstring role"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/Interaction"


# virtual methods
.method public abstract getCompatibility()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getHash()I
.end method

.method public abstract getIcon()Lrocon_std_msgs/Icon;
.end method

.method public abstract getMax()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getPairing()Lrocon_interaction_msgs/Pairing;
.end method

.method public abstract getParameters()Ljava/lang/String;
.end method

.method public abstract getRemappings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_std_msgs/Remapping;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRole()Ljava/lang/String;
.end method

.method public abstract setCompatibility(Ljava/lang/String;)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setDisplayName(Ljava/lang/String;)V
.end method

.method public abstract setHash(I)V
.end method

.method public abstract setIcon(Lrocon_std_msgs/Icon;)V
.end method

.method public abstract setMax(I)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNamespace(Ljava/lang/String;)V
.end method

.method public abstract setPairing(Lrocon_interaction_msgs/Pairing;)V
.end method

.method public abstract setParameters(Ljava/lang/String;)V
.end method

.method public abstract setRemappings(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_std_msgs/Remapping;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRole(Ljava/lang/String;)V
.end method
