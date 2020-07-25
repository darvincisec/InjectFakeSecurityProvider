.class public Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;
.super Ljava/lang/Object;
.source "SRP6VerifierGenerator.java"


# instance fields
.field protected N:Ljava/math/BigInteger;

.field protected digest:Lorg/spongycastle/crypto/Digest;

.field protected g:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public generateVerifier([B[B[B)Ljava/math/BigInteger;
    .locals 3
    .param p1, "salt"    # [B
    .param p2, "identity"    # [B
    .param p3, "password"    # [B

    .prologue
    .line 51
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    invoke-static {v1, v2, p1, p2, p3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateX(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    .line 53
    .local v0, "x":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->g:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 30
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    .line 31
    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->g:Ljava/math/BigInteger;

    .line 32
    iput-object p3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 33
    return-void
.end method

.method public init(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "group"    # Lorg/spongycastle/crypto/params/SRP6GroupParameters;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 37
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    .line 38
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->g:Ljava/math/BigInteger;

    .line 39
    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 40
    return-void
.end method
