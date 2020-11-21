.class public Ljavax/jmdns/impl/NameRegister$Factory;
.super Ljava/lang/Object;
.source "NameRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/NameRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static volatile _register:Ljavax/jmdns/impl/NameRegister;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegistry()Ljavax/jmdns/impl/NameRegister;
    .registers 1

    .line 122
    sget-object v0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    if-nez v0, :cond_b

    .line 123
    new-instance v0, Ljavax/jmdns/impl/NameRegister$UniqueNamePerInterface;

    invoke-direct {v0}, Ljavax/jmdns/impl/NameRegister$UniqueNamePerInterface;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    .line 125
    :cond_b
    sget-object v0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    return-object v0
.end method

.method public static setRegistry(Ljavax/jmdns/impl/NameRegister;)V
    .registers 3
    .param p0, "register"    # Ljavax/jmdns/impl/NameRegister;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 108
    sget-object v0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    if-nez v0, :cond_9

    .line 111
    if-eqz p0, :cond_8

    .line 112
    sput-object p0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    .line 114
    :cond_8
    return-void

    .line 109
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The register can only be set once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
