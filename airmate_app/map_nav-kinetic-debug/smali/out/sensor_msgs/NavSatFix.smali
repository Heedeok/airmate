.class public interface abstract Lsensor_msgs/NavSatFix;
.super Ljava/lang/Object;
.source "NavSatFix.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final COVARIANCE_TYPE_APPROXIMATED:B = 0x1t

.field public static final COVARIANCE_TYPE_DIAGONAL_KNOWN:B = 0x2t

.field public static final COVARIANCE_TYPE_KNOWN:B = 0x3t

.field public static final COVARIANCE_TYPE_UNKNOWN:B = 0x0t

.field public static final _DEFINITION:Ljava/lang/String; = "# Navigation Satellite fix for any Global Navigation Satellite System\n#\n# Specified using the WGS 84 reference ellipsoid\n\n# header.stamp specifies the ROS time for this measurement (the\n#        corresponding satellite time may be reported using the\n#        sensor_msgs/TimeReference message).\n#\n# header.frame_id is the frame of reference reported by the satellite\n#        receiver, usually the location of the antenna.  This is a\n#        Euclidean frame relative to the vehicle, not a reference\n#        ellipsoid.\nHeader header\n\n# satellite fix status information\nNavSatStatus status\n\n# Latitude [degrees]. Positive is north of equator; negative is south.\nfloat64 latitude\n\n# Longitude [degrees]. Positive is east of prime meridian; negative is west.\nfloat64 longitude\n\n# Altitude [m]. Positive is above the WGS 84 ellipsoid\n# (quiet NaN if no altitude is available).\nfloat64 altitude\n\n# Position covariance [m^2] defined relative to a tangential plane\n# through the reported position. The components are East, North, and\n# Up (ENU), in row-major order.\n#\n# Beware: this coordinate system exhibits singularities at the poles.\n\nfloat64[9] position_covariance\n\n# If the covariance of the fix is known, fill it in completely. If the\n# GPS receiver provides the variance of each measurement, put them\n# along the diagonal. If only Dilution of Precision is available,\n# estimate an approximate covariance from that.\n\nuint8 COVARIANCE_TYPE_UNKNOWN = 0\nuint8 COVARIANCE_TYPE_APPROXIMATED = 1\nuint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2\nuint8 COVARIANCE_TYPE_KNOWN = 3\n\nuint8 position_covariance_type\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/NavSatFix"


# virtual methods
.method public abstract getAltitude()D
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getLatitude()D
.end method

.method public abstract getLongitude()D
.end method

.method public abstract getPositionCovariance()[D
.end method

.method public abstract getPositionCovarianceType()B
.end method

.method public abstract getStatus()Lsensor_msgs/NavSatStatus;
.end method

.method public abstract setAltitude(D)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setLatitude(D)V
.end method

.method public abstract setLongitude(D)V
.end method

.method public abstract setPositionCovariance([D)V
.end method

.method public abstract setPositionCovarianceType(B)V
.end method

.method public abstract setStatus(Lsensor_msgs/NavSatStatus;)V
.end method
