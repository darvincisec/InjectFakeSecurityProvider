.class public Lorg/spongycastle/util/test/TestRandomBigInteger;
.super Lorg/spongycastle/util/test/FixedSecureRandom;
.source "TestRandomBigInteger.java"


# direct methods
.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "bitLength"    # I
    .param p2, "encoding"    # [B

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;

    invoke-direct {v2, p1, p2}, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;-><init>(I[B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;-><init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 18
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/util/test/TestRandomBigInteger;-><init>(Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;-><init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V

    .line 30
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "encoding"    # [B

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;

    invoke-direct {v2, p1}, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;-><init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V

    .line 40
    return-void
.end method
