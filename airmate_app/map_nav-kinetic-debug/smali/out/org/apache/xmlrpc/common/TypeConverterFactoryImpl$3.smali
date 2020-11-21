.class final Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$3;
.super Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$ListTypeConverter;
.source "TypeConverterFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .param p1, "pClass"    # Ljava/lang/Class;

    .line 172
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$ListTypeConverter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected newList(I)Ljava/util/List;
    .registers 3
    .param p1, "pSize"    # I

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
