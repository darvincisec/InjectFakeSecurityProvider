.class public Lorg/spongycastle/util/test/FixedSecureRandom$Data;
.super Lorg/spongycastle/util/test/FixedSecureRandom$Source;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/util/test/FixedSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/spongycastle/util/test/FixedSecureRandom$Source;-><init>([B)V

    .line 60
    return-void
.end method
