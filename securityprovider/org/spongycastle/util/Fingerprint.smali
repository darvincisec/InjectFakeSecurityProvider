.class public Lorg/spongycastle/util/Fingerprint;
.super Ljava/lang/Object;
.source "Fingerprint.java"


# static fields
.field private static encodingTable:[C


# instance fields
.field private final fingerprint:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/util/Fingerprint;->encodingTable:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "source"    # [B

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lorg/spongycastle/util/Fingerprint;->calculateFingerprint([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/util/Fingerprint;->fingerprint:[B

    .line 18
    return-void
.end method

.method public static calculateFingerprint([B)[B
    .locals 4
    .param p0, "input"    # [B

    .prologue
    const/4 v3, 0x0

    .line 62
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    const/16 v2, 0xa0

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    .line 64
    .local v0, "digest":Lorg/spongycastle/crypto/digests/SHA512tDigest;
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update([BII)V

    .line 66
    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->getDigestSize()I

    move-result v2

    new-array v1, v2, [B

    .line 68
    .local v1, "rv":[B
    invoke-virtual {v0, v1, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->doFinal([BI)I

    .line 70
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    if-ne p1, p0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 52
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 47
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/util/Fingerprint;

    if-eqz v0, :cond_1

    .line 49
    check-cast p1, Lorg/spongycastle/util/Fingerprint;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lorg/spongycastle/util/Fingerprint;->fingerprint:[B

    iget-object v1, p0, Lorg/spongycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    goto :goto_0

    .line 52
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFingerprint()[B
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/util/Fingerprint;->fingerprint:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 30
    if-lez v0, :cond_0

    .line 32
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    :cond_0
    sget-object v2, Lorg/spongycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lorg/spongycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 35
    sget-object v2, Lorg/spongycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lorg/spongycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
