.class public Lorg/spongycastle/crypto/signers/X931Signer;
.super Ljava/lang/Object;
.source "X931Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# static fields
.field public static final TRAILER_IMPLICIT:I = 0xbc

.field public static final TRAILER_RIPEMD128:I = 0x32cc

.field public static final TRAILER_RIPEMD160:I = 0x31cc

.field public static final TRAILER_SHA1:I = 0x33cc

.field public static final TRAILER_SHA224:I = 0x38cc

.field public static final TRAILER_SHA256:I = 0x34cc

.field public static final TRAILER_SHA384:I = 0x36cc

.field public static final TRAILER_SHA512:I = 0x35cc

.field public static final TRAILER_WHIRLPOOL:I = 0x37cc


# instance fields
.field private block:[B

.field private cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private kParam:Lorg/spongycastle/crypto/params/RSAKeyParameters;

.field private keyBits:I

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/signers/X931Signer;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Z)V
    .locals 4
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "implicit"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/X931Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 66
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/X931Signer;->digest:Lorg/spongycastle/crypto/Digest;

    .line 68
    if-eqz p3, :cond_0

    .line 70
    const/16 v1, 0xbc

    iput v1, p0, Lorg/spongycastle/crypto/signers/X931Signer;->trailer:I

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/spongycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    .local v0, "trailerObj":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/signers/X931Signer;->trailer:I

    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no valid trailer for digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B

    .prologue
    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 123
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method private createSignatureBlock()V
    .locals 6

    .prologue
    .line 174
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    .line 178
    .local v1, "digSize":I
    iget v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->trailer:I

    const/16 v4, 0xbc

    if-ne v3, v4, :cond_0

    .line 180
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    add-int/lit8 v0, v3, -0x1

    .line 181
    .local v0, "delta":I
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    invoke-interface {v3, v4, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 182
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    const/16 v5, -0x44

    aput-byte v5, v3, v4

    .line 192
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    const/4 v4, 0x0

    const/16 v5, 0x6b

    aput-byte v5, v3, v4

    .line 193
    add-int/lit8 v2, v0, -0x2

    .local v2, "i":I
    :goto_1
    if-eqz v2, :cond_1

    .line 195
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    const/16 v4, -0x45

    aput-byte v4, v3, v2

    .line 193
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 186
    .end local v0    # "delta":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    add-int/lit8 v0, v3, -0x2

    .line 187
    .restart local v0    # "delta":I
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    invoke-interface {v3, v4, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 188
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    iget v5, p0, Lorg/spongycastle/crypto/signers/X931Signer;->trailer:I

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 189
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/spongycastle/crypto/signers/X931Signer;->trailer:I

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    goto :goto_0

    .line 197
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    add-int/lit8 v4, v0, -0x1

    const/16 v5, -0x46

    aput-byte v5, v3, v4

    .line 198
    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/spongycastle/crypto/signers/X931Signer;->createSignatureBlock()V

    .line 164
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/X931Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    array-length v5, v5

    invoke-interface {v2, v3, v4, v5}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 165
    .local v0, "t":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/signers/X931Signer;->clearBlock([B)V

    .line 167
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/X931Signer;->kParam:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/X931Signer;->kParam:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1, v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v1

    return-object v1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 104
    check-cast p2, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/X931Signer;->kParam:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 106
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/X931Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/X931Signer;->kParam:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/X931Signer;->kParam:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/X931Signer;->keyBits:I

    .line 110
    iget v0, p0, Lorg/spongycastle/crypto/signers/X931Signer;->keyBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    .line 112
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/X931Signer;->reset()V

    .line 113
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/X931Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 153
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/X931Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 134
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/X931Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 145
    return-void
.end method

.method public verifySignature([B)Z
    .locals 9
    .param p1, "signature"    # [B

    .prologue
    const/16 v8, 0xc

    const/4 v3, 0x0

    .line 209
    :try_start_0
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/X931Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v6, 0x0

    array-length v7, p1

    invoke-interface {v5, p1, v6, v7}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 219
    .local v4, "t":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v8, :cond_1

    .line 221
    move-object v1, v4

    .line 236
    .local v1, "f":Ljava/math/BigInteger;
    :goto_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/signers/X931Signer;->createSignatureBlock()V

    .line 238
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    array-length v5, v5

    invoke-static {v5, v1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    .line 240
    .local v2, "fBlock":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    invoke-static {v5, v2}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    .line 242
    .local v3, "rv":Z
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/X931Signer;->block:[B

    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/signers/X931Signer;->clearBlock([B)V

    .line 243
    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/signers/X931Signer;->clearBlock([B)V

    .line 245
    .end local v1    # "f":Ljava/math/BigInteger;
    .end local v2    # "fBlock":[B
    .end local v3    # "rv":Z
    .end local v4    # "t":Ljava/math/BigInteger;
    :cond_0
    :goto_1
    return v3

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "t":Ljava/math/BigInteger;
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/X931Signer;->kParam:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 226
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v8, :cond_0

    .line 228
    move-object v1, v4

    .restart local v1    # "f":Ljava/math/BigInteger;
    goto :goto_0
.end method
