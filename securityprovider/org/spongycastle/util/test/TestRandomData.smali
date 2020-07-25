.class public Lorg/spongycastle/util/test/TestRandomData;
.super Lorg/spongycastle/util/test/FixedSecureRandom;
.source "TestRandomData.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    invoke-static {p1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;-><init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V

    .line 19
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "encoding"    # [B

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    invoke-direct {v2, p1}, Lorg/spongycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;-><init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V

    .line 29
    return-void
.end method
