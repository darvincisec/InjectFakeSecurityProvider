.class public Lorg/spongycastle/crypto/agreement/srp/SRP6Server;
.super Ljava/lang/Object;
.source "SRP6Server.java"


# instance fields
.field protected A:Ljava/math/BigInteger;

.field protected B:Ljava/math/BigInteger;

.field protected Key:Ljava/math/BigInteger;

.field protected M1:Ljava/math/BigInteger;

.field protected M2:Ljava/math/BigInteger;

.field protected N:Ljava/math/BigInteger;

.field protected S:Ljava/math/BigInteger;

.field protected b:Ljava/math/BigInteger;

.field protected digest:Lorg/spongycastle/crypto/Digest;

.field protected g:Ljava/math/BigInteger;

.field protected random:Ljava/security/SecureRandom;

.field protected u:Ljava/math/BigInteger;

.field protected v:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private calculateS()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->v:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->u:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->b:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "clientA"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateU(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->u:Ljava/math/BigInteger;

    .line 85
    invoke-direct {p0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->calculateS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    return-object v0
.end method

.method public calculateServerEvidenceMessage()Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->M1:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    const-string v1, "Impossible to compute M2: some data are missing from the previous operations (A,M1,S)"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->M1:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateM2(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->M2:Ljava/math/BigInteger;

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->M2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public calculateSessionKey()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->M1:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->M2:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    const-string v1, "Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateKey(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->Key:Ljava/math/BigInteger;

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->Key:Ljava/math/BigInteger;

    return-object v0
.end method

.method public generateServerCredentials()Ljava/math/BigInteger;
    .locals 5

    .prologue
    .line 68
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->g:Ljava/math/BigInteger;

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateK(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 69
    .local v0, "k":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->selectPrivateValue()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->b:Ljava/math/BigInteger;

    .line 70
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->v:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->b:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    .line 72
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    return-object v1
.end method

.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "v"    # Ljava/math/BigInteger;
    .param p4, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p5, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    .line 50
    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->g:Ljava/math/BigInteger;

    .line 51
    iput-object p3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->v:Ljava/math/BigInteger;

    .line 53
    iput-object p5, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->random:Ljava/security/SecureRandom;

    .line 54
    iput-object p4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/spongycastle/crypto/Digest;

    .line 55
    return-void
.end method

.method public init(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "group"    # Lorg/spongycastle/crypto/params/SRP6GroupParameters;
    .param p2, "v"    # Ljava/math/BigInteger;
    .param p3, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p4, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    .line 60
    return-void
.end method

.method protected selectPrivateValue()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->generatePrivateValue(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public verifyClientEvidenceMessage(Ljava/math/BigInteger;)Z
    .locals 6
    .param p1, "clientM1"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    if-nez v1, :cond_1

    .line 112
    :cond_0
    new-instance v1, Lorg/spongycastle/crypto/CryptoException;

    const-string v2, "Impossible to compute and verify M1: some data are missing from the previous operations (A,B,S)"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateM1(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 118
    .local v0, "computedM1":Ljava/math/BigInteger;
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->M1:Ljava/math/BigInteger;

    .line 121
    const/4 v1, 0x1

    .line 123
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
