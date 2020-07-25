.class public Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;
.super Ljava/lang/Object;
.source "RSAKeyEncapsulation.java"

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncapsulation;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field private key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->ZERO:Ljava/math/BigInteger;

    .line 21
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p2, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 38
    iput-object p2, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    .line 39
    return-void
.end method


# virtual methods
.method public decrypt([BI)Lorg/spongycastle/crypto/CipherParameters;
    .locals 2
    .param p1, "in"    # [B
    .param p2, "keyLen"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->decrypt([BIII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public decrypt([BIII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "keyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v5, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v5

    if-nez v5, :cond_0

    .line 113
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Private key required for decryption"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 117
    .local v3, "n":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 120
    .local v2, "d":Ljava/math/BigInteger;
    new-array v0, p3, [B

    .line 121
    .local v0, "C":[B
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {p1, p2, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    new-instance v1, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 125
    .local v1, "c":Ljava/math/BigInteger;
    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 127
    .local v4, "r":Ljava/math/BigInteger;
    invoke-virtual {p0, v3, v4, p4}, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->generateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v5

    return-object v5
.end method

.method public encrypt([BI)Lorg/spongycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "out"    # [B
    .param p2, "keyLen"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->encrypt([BII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 8
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "keyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v5, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Public key required for encryption"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 74
    .local v3, "n":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 77
    .local v2, "e":Ljava/math/BigInteger;
    sget-object v5, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->ZERO:Ljava/math/BigInteger;

    sget-object v6, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    invoke-static {v5, v6, v7}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    .line 80
    .local v4, "r":Ljava/math/BigInteger;
    invoke-virtual {v4, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 81
    .local v1, "c":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    invoke-static {v5, v1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 82
    .local v0, "C":[B
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    invoke-virtual {p0, v3, v4, p3}, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->generateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v5

    return-object v5
.end method

.method protected generateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 5
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "keyLen"    # I

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-static {v2, p2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v1

    .line 147
    .local v1, "R":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    new-instance v3, Lorg/spongycastle/crypto/params/KDFParameters;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 150
    new-array v0, p3, [B

    .line 151
    .local v0, "K":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 153
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v2
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 49
    instance-of v0, p1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA key required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    check-cast p1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 55
    return-void
.end method
