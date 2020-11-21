.class public Lorg/apache/commons/net/telnet/SimpleOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "SimpleOptionHandler.java"


# direct methods
.method public constructor <init>(I)V
    .registers 8
    .param p1, "optcode"    # I

    .line 58
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .registers 6
    .param p1, "optcode"    # I
    .param p2, "initlocal"    # Z
    .param p3, "initremote"    # Z
    .param p4, "acceptlocal"    # Z
    .param p5, "acceptremote"    # Z

    .line 46
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 48
    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .registers 4
    .param p1, "suboptionData"    # [I
    .param p2, "suboptionLength"    # I

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationLocal()[I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationRemote()[I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method
