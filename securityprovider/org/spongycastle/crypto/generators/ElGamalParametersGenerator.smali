.class public Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;
.super Ljava/lang/Object;
.source "ElGamalParametersGenerator.java"


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;
    .locals 7

    .prologue
    .line 35
    iget v4, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->size:I

    iget v5, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->certainty:I

    iget-object v6, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v4, v5, v6}, Lorg/spongycastle/crypto/generators/DHParametersHelper;->generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 37
    .local v3, "safePrimes":[Ljava/math/BigInteger;
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 38
    .local v1, "p":Ljava/math/BigInteger;
    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 39
    .local v2, "q":Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v2, v4}, Lorg/spongycastle/crypto/generators/DHParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 41
    .local v0, "g":Ljava/math/BigInteger;
    new-instance v4, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-direct {v4, v1, v0}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v4
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 19
    iput p1, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->size:I

    .line 20
    iput p2, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->certainty:I

    .line 21
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 22
    return-void
.end method
