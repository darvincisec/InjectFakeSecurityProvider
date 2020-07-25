.class public Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;
.super Lorg/spongycastle/crypto/digests/GOST3411_2012Digest;
.source "GOST3411_2012_512Digest.java"


# static fields
.field private static final IV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;->IV:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;->IV:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411_2012Digest;-><init>([B)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;

    .prologue
    .line 29
    sget-object v0, Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;->IV:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411_2012Digest;-><init>([B)V

    .line 30
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;->reset(Lorg/spongycastle/util/Memoable;)V

    .line 31
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;-><init>(Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;)V

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "GOST3411-2012-512"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x40

    return v0
.end method
