.class public Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;
.super Lorg/spongycastle/util/test/FixedSecureRandom$Source;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/util/test/FixedSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigInteger"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "bitLength"    # I
    .param p2, "hexData"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p2}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;->access$000(I[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom$Source;-><init>([B)V

    .line 88
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "bitLength"    # I
    .param p2, "data"    # [B

    .prologue
    .line 77
    invoke-static {p1, p2}, Lorg/spongycastle/util/test/FixedSecureRandom;->access$000(I[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom$Source;-><init>([B)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hexData"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;-><init>([B)V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/spongycastle/util/test/FixedSecureRandom$Source;-><init>([B)V

    .line 73
    return-void
.end method
