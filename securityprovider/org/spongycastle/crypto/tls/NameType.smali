.class public Lorg/spongycastle/crypto/tls/NameType;
.super Ljava/lang/Object;
.source "NameType.java"


# static fields
.field public static final host_name:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(S)Z
    .locals 1
    .param p0, "nameType"    # S

    .prologue
    .line 12
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
