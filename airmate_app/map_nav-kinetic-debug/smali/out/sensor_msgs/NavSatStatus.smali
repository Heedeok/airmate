.class public interface abstract Lsensor_msgs/NavSatStatus;
.super Ljava/lang/Object;
.source "NavSatStatus.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final SERVICE_COMPASS:S = 0x4s

.field public static final SERVICE_GALILEO:S = 0x8s

.field public static final SERVICE_GLONASS:S = 0x2s

.field public static final SERVICE_GPS:S = 0x1s

.field public static final STATUS_FIX:B = 0x0t

.field public static final STATUS_GBAS_FIX:B = 0x2t

.field public static final STATUS_NO_FIX:B = -0x1t

.field public static final STATUS_SBAS_FIX:B = 0x1t

.field public static final _DEFINITION:Ljava/lang/String; = "# Navigation Satellite fix status for any Global Navigation Satellite System\n\n# Whether to output an augmented fix is determined by both the fix\n# type and the last time differential corrections were received.  A\n# fix is valid when status >= STATUS_FIX.\n\nint8 STATUS_NO_FIX =  -1        # unable to fix position\nint8 STATUS_FIX =      0        # unaugmented fix\nint8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation\nint8 STATUS_GBAS_FIX = 2        # with ground-based augmentation\n\nint8 status\n\n# Bits defining which Global Navigation Satellite System signals were\n# used by the receiver.\n\nuint16 SERVICE_GPS =     1\nuint16 SERVICE_GLONASS = 2\nuint16 SERVICE_COMPASS = 4      # includes BeiDou.\nuint16 SERVICE_GALILEO = 8\n\nuint16 service\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/NavSatStatus"


# virtual methods
.method public abstract getService()S
.end method

.method public abstract getStatus()B
.end method

.method public abstract setService(S)V
.end method

.method public abstract setStatus(B)V
.end method
