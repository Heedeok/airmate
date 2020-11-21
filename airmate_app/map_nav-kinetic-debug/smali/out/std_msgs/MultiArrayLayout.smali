.class public interface abstract Lstd_msgs/MultiArrayLayout;
.super Ljava/lang/Object;
.source "MultiArrayLayout.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# The multiarray declares a generic multi-dimensional array of a\n# particular data type.  Dimensions are ordered from outer most\n# to inner most.\n\nMultiArrayDimension[] dim # Array of dimension properties\nuint32 data_offset        # padding elements at front of data\n\n# Accessors should ALWAYS be written in terms of dimension stride\n# and specified outer-most dimension first.\n# \n# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n#\n# A standard, 3-channel 640x480 image with interleaved color channels\n# would be specified as:\n#\n# dim[0].label  = \"height\"\n# dim[0].size   = 480\n# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n# dim[1].label  = \"width\"\n# dim[1].size   = 640\n# dim[1].stride = 3*640 = 1920\n# dim[2].label  = \"channel\"\n# dim[2].size   = 3\n# dim[2].stride = 3\n#\n# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"

.field public static final _TYPE:Ljava/lang/String; = "std_msgs/MultiArrayLayout"


# virtual methods
.method public abstract getDataOffset()I
.end method

.method public abstract getDim()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lstd_msgs/MultiArrayDimension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDataOffset(I)V
.end method

.method public abstract setDim(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lstd_msgs/MultiArrayDimension;",
            ">;)V"
        }
    .end annotation
.end method
